package Controler;
import Entity.Assistance;
import Entity.Employee;
import Entity.Order2;
import Session.AssistanceLocal;
import Session.EmployeeSessionLocal;
import Session.OrderSession1Local;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@MultipartConfig()
public class checking1 extends HttpServlet {
    @EJB
    private OrderSession1Local orderSession1;
    @EJB
    private AssistanceLocal assistance1;
    @EJB
    private EmployeeSessionLocal employeeSession;
    private Order2 order=new Order2();
    private Employee employee=new Employee();
    private Assistance assistance=new Assistance();
    private InputStream in;
    private FileOutputStream ot;
    private byte[] fileSize=null;
    private Date date=null;
    private Date current=null;
    private String fullName=null;
    private String msg="";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           String password=request.getParameter("password");
           Part file =request.getPart("file");
           int page=Integer.parseInt(request.getParameter("page"));
           String by=request.getParameter("by");
           StringBuilder decripted=new StringBuilder();
            char a;
                 for(int i=1;i<password.length()-1;i++){
                 a=password.charAt(i);
//              out.print(a+"<br/>");
                decripted.append(a);
            }
            String original_password=String.valueOf(decripted);
             try{
                      date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("date"));
                      current=new Date();
                   }catch(Exception el){}
          //now is the time to store
             employee=employeeSession.findByPassword(original_password);
             order.setFilename(file.getSubmittedFileName());
             order.setFilesize(file.getSize()+" bytes");
             order.setDeliveredby(by);
             order.setPagenumber(page);
             order.setDeliverydate(new java.sql.Date(date.getTime()));
             order.setOrdereddate(new java.sql.Date(current.getTime()));
             order.setType("normal");
             order.setEmployeeId(employee);
             if(orderSession1.s(order)){
                    //now is the time to retrive information
                                                 List<Employee> alp=employeeSession.findByAllPassword(original_password);
                                                 List<Assistance> allp=assistance1.findAll();
                                                 int allEmpp=alp.size();
                                                 int allAssp=allp.size();
                                                 int allAdmp=0;
                                                   for(Employee e1:alp){
                                                        fullName=e1.getFname()+" "+e1.getMname()+" "+e1.getLname();
                                                    }     
                                               request.setAttribute("proName",employee.getProname());
                                               request.setAttribute("find",alp);
                                               request.setAttribute("assList",allp);
                    msg="valid";
                    request.getRequestDispatcher("copysend.jsp?msg='"+msg+"'&&username='"+fullName+"'&&password='"+original_password+"'").forward(request,response);
                    String path="C:\\Users\\hp\\Documents\\NetBeansProjects\\INSA-CMS-Project1\\INSA-CMS-Project1-war\\web\\file\\"+file.getSubmittedFileName();
                    save(file,path);
             }
             else{
                List<Employee> byid=employeeSession.findByAllPassword(original_password);
                for(Employee e1:byid){
//                   proName=e1.getProname();
                   fullName=e1.getFname()+" "+e1.getMname()+" "+e1.getLname();
                }
                request.setAttribute("proName",employee.getProname());
                request.setAttribute("find",byid);
                request.setAttribute("assList",assistance1.findAll());
                msg="invalid";
              request.getRequestDispatcher("copysend.jsp.jsp?msg='"+msg+"'&&username='"+fullName+"'&&password='"+original_password+"'").forward(request,response);
             }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void save(Part file, String path) throws IOException {
        in=file.getInputStream();
        byte [] fileSize=new byte[in.available()];
        ot = new FileOutputStream(path);
        in.read(fileSize);
        ot.write(fileSize,0,fileSize.length);
        ot.flush();
        ot.close();
    }

}
