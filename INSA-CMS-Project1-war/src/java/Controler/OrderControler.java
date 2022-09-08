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
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@MultipartConfig()
public class OrderControler extends HttpServlet {
    @EJB
    private EmployeeSessionLocal employeeSession;
    @EJB
    private OrderSession1Local orderSession1;
      @EJB
    private AssistanceLocal assistance;
    Assistance assistance1=new Assistance();
    private  String fullName=null,proName=null,msg=null;
    Order2 order=new Order2();
    Employee en=new Employee();
    private InputStream in;
    private FileOutputStream ot;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String password=request.getParameter("password");
            out.print("the password is="+password);
//             StringBuilder decripted=new StringBuilder();
//              char a;
//                for(int i=1;i<password.length()-1;i++){
//                a=password.charAt(i);
////              out.print(a+"<br/>");
//                decripted.append(a);
//                }
//            String id=String.valueOf(decripted);
//            en=employeeSession.findByPassword(id);
//            Part p=request.getPart("file");
//            String d=request.getParameter("deliverey");
//            out.print(d);
//            int page=Integer.parseInt(request.getParameter("page"));
//            int size=(int)p.getSize();
//            order.setFilename(p.getSubmittedFileName());
//            order.setFilesize(""+size+" byte");
//            order.setDeliveredby(d);
//            order.setPagenumber(page);
//            order.setEmployeeId(en);
//            if(orderSession1.s(order)){
//                String msg;
//                System.out.print("i am here");
//                 List<Employee> byid=employeeSession.findByAllPassword(id);
//                for(Employee e1:byid){
//                   proName=e1.getProname();
//                   fullName=e1.getFname()+" "+e1.getMname()+" "+e1.getLname();
//                }
//                request.setAttribute("find",byid);
//                request.setAttribute("assList",assistance.findAll());
//                msg="valid";
//                request.getRequestDispatcher("sendCopyRequest.jsp?msg='"+msg+"'&&username='"+fullName+"'&&password='"+id+"'").forward(request,response);
//                String path="C:\\Users\\hp\\Documents\\NetBeansProjects\\INSA-CMS-Project1\\INSA-CMS-Project1-war\\web\\file\\"+p.getSubmittedFileName();
//                saveFile(p,path);
//            }
//            else{
//                 List<Employee> byid=employeeSession.findByAllPassword(id);
//                for(Employee e1:byid){
//                   proName=e1.getProname();
//                   fullName=e1.getFname()+" "+e1.getMname()+" "+e1.getLname();
//                }
//                request.setAttribute("find",byid);
//                request.setAttribute("assList",assistance.findAll());
//                msg="invalid";
//              request.getRequestDispatcher("sendCopyRequest.jsp?msg='"+msg+"'&&username='"+fullName+"'&&password='"+id+"'").forward(request,response);
//            }
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
//    private void saveFile(Part p, String path) throws IOException {
//         in=p.getInputStream();
//        byte [] fileSize=new byte[in.available()];
//        ot=new FileOutputStream(path);
//        in.read(fileSize);
//        ot.write(fileSize,0,fileSize.length);
//        ot.flush();
//        ot.close();
//    }
}
