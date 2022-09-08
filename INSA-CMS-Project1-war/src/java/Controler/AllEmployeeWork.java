package Controler;
import Entity.Assistance;
import Entity.Employee;
import Session.AssistanceLocal;
import Session.EmployeeSessionLocal;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
@MultipartConfig()
public class AllEmployeeWork extends HttpServlet {
    @EJB
    private EmployeeSessionLocal employeeSession;
    @EJB
    private AssistanceLocal assistance;
    private Employee employee=new Employee();
    Assistance assistance1=new Assistance();
        private InputStream in;
    private FileOutputStream ot;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String password=request.getParameter("password");
            String action=request.getParameter("action");
              StringBuilder decripted=new StringBuilder();
              char a;
            switch (action) {
                case "Veiw":
                    {
                       String found=request.getParameter("found");
                       String p111=request.getParameter("password");
                       if(found.equals("copysend")){
                       for(int i=1;i<password.length()-1;i++){
                            a=password.charAt(i);
                            decripted.append(a);
                        }          
                        String id=String.valueOf(decripted);
                        String proName="";
                        String fullName="";
                        List<Employee> single=new ArrayList<>();
                        List<Employee> byid=employeeSession.findByAllPassword(id);
                        for(Employee e1:byid){
                            single.add(e1);
                            proName=e1.getProname();
                            System.out.print("i am here"+proName);
                            fullName=e1.getFname()+" "+e1.getMname()+" "+e1.getLname();
                        }
                               request.setAttribute("find",byid);
                               request.setAttribute("single",single);
                               request.setAttribute("proName",proName);
                               request.getRequestDispatcher("copysend.jsp?username='"+fullName+"'&&password='"+id+"'&&msg=view").forward(request, response);
                               single.clear();
                           
                       }
                       else if(found.equals("welcome")){
                       for(int i=1;i<password.length()-1;i++){
                            a=password.charAt(i);
                            decripted.append(a);
                        }          
                        String id=String.valueOf(decripted);
                        String proName="";
                        String fullName="";
                        List<Employee> single=new ArrayList<>();
                        List<Employee> byid=employeeSession.findByAllPassword(id);
                        for(Employee e1:byid){
                            single.add(e1);
                            out.print("i am here"+single);
                            proName=e1.getProname();
                            fullName=e1.getFname()+" "+e1.getMname()+" "+e1.getLname();
                        }      
                               request.setAttribute("proName",proName);
                               request.setAttribute("single",single);
                               request.getRequestDispatcher("Employee_welcome_page1.jsp?username='"+fullName+"'&&password='"+id+"'&&proname='"+proName+"'&&msg=view").forward(request, response);
                               single.clear();
                       }
                        break;
                    }
                case "sendCopyRequest":
                {
                    for(int i=1;i<password.length()-1;i++){
                        a=password.charAt(i);
//              out.print(a+"<br/>");
                decripted.append(a);
                    }           String id=String.valueOf(decripted);
                    String proName="";
                    String fullName="";
                    List<Employee> byid=employeeSession.findByAllPassword(id);
                    for(Employee e1:byid){
                        proName=e1.getProname();
                        fullName=e1.getFname()+" "+e1.getMname()+" "+e1.getLname();
                    }      
                    request.setAttribute("find",byid);
                    request.setAttribute("assList",assistance.findAll());
                    request.setAttribute("proName",proName);
                    String msg="";
                    request.getRequestDispatcher("copysend.jsp?ms=''&&msg='"+msg+"'&&username='"+fullName+"'&&password='"+id+"'").forward(request, response);
                        break;
                   }
                case "update_profile":
                      String found=request.getParameter("found");
                      String pass=request.getParameter("password");
                      Part part=request.getPart("file");
                      if(found.equals("welcome")){
                      StringBuilder pass1=new StringBuilder();
                      char a1;
                       for(int i=1;i<pass.length()-1;i++){
                       a1=pass.charAt(i);
                       pass1.append(a1);
                      }
                       String o_password=String.valueOf(pass1);
                       employee=employeeSession.findByPassword(o_password);
                           employee.setFname(employee.getFname());
                           employee.setMname(employee.getMname());
                           employee.setLname(employee.getLname());
                           employee.setDepartment(employee.getDepartment());
                           employee.setPhoneNumber(employee.getPhoneNumber());
                           employee.setGender(employee.getGender());
                           employee.setPassword(employee.getPassword());
                           employee.setProname(part.getSubmittedFileName());
                           employee.setStatus(employee.getStatus());
                   if(employeeSession.edit(employee)){
                           List<Employee> single=new ArrayList<>();
                           single.add(employee);
                           request.setAttribute("find",single);
                           String fullName=employee.getFname()+" "+employee.getMname()+" "+employee.getLname();
                           String ms="Your Profile Sumetted Successfully........";
                           request.setAttribute("proName",part.getSubmittedFileName());
                           request.getRequestDispatcher("Employee_welcome_page1.jsp?ms='"+ms+"'&&username='"+fullName+"'&&password='"+employee.getPassword()+"'&&msg=''").forward(request, response);
                           String path="C:\\Users\\hp\\Documents\\NetBeansProjects\\INSA-CMS-Project1\\INSA-CMS-Project1-war\\web\\pro\\"+part.getSubmittedFileName();
                           save(part,path);
                       }
                   else{
                       String fullName=employee.getFname()+" "+employee.getMname()+" "+employee.getLname();
                           String ms="Your Profile not Submetted Successfully........";
                           request.setAttribute("proName",part.getSubmittedFileName());
                           request.getRequestDispatcher("Employee_welcome_page1.jsp?ms='"+ms+"'&&username='"+fullName+"'&&password='"+employee.getPassword()+"'&&msg=''").forward(request, response);
                      }
                      }
                   else if(found.equals("copysend")){
                                StringBuilder pass1=new StringBuilder();
                      char a1;
                       for(int i=1;i<pass.length()-1;i++){
                       a1=pass.charAt(i);
                       pass1.append(a1);
                      }
                       String o_password=String.valueOf(pass1);
                       employee=employeeSession.findByPassword(o_password);
                           employee.setFname(employee.getFname());
                           employee.setMname(employee.getMname());
                           employee.setLname(employee.getLname());
                           employee.setDepartment(employee.getDepartment());
                           employee.setPhoneNumber(employee.getPhoneNumber());
                           employee.setGender(employee.getGender());
                           employee.setPassword(employee.getPassword());
                           employee.setProname(part.getSubmittedFileName());
                           employee.setStatus(employee.getStatus());
                   if(employeeSession.edit(employee)){
                       List<Employee> single=new ArrayList<>();
                           single.add(employee);
                           request.setAttribute("find",single);
                           String fullName=employee.getFname()+" "+employee.getMname()+" "+employee.getLname();
                           String ms="Your Profile Sumetted Successfully........";
                           request.setAttribute("proName",part.getSubmittedFileName());
                           request.getRequestDispatcher("copysend.jsp?ms='"+ms+"'&&username='"+fullName+"'&&password='"+employee.getPassword()+"'&&msg=''").forward(request, response);
                           String path="C:\\Users\\hp\\Documents\\NetBeansProjects\\INSA-CMS-Project1\\INSA-CMS-Project1-war\\web\\pro\\"+part.getSubmittedFileName();
                           save(part,path);
                       }
                   else{
                       String fullName=employee.getFname()+" "+employee.getMname()+" "+employee.getLname();
                           String ms="Your Profile not Submetted Successfully........";
                           request.setAttribute("proName",part.getSubmittedFileName());
                           request.getRequestDispatcher("copysend.jsp?ms='"+ms+"'&&username='"+fullName+"'&&password='"+employee.getPassword()+"'&&msg=''").forward(request, response);
                      }
                           }
                    break;
                case "back":
                    for(int i=1;i<password.length()-1;i++){
                            a=password.charAt(i);
                            decripted.append(a);
                        }          
                        String id=String.valueOf(decripted);
                        String proName="";
                        String fullName="";
                        List<Employee> single=new ArrayList<>();
                        List<Employee> byid=employeeSession.findByAllPassword(id);
                        for(Employee e1:byid){
                            single.add(e1);
                            out.print("i am here"+single);
                            proName=e1.getProname();
                            fullName=e1.getFname()+" "+e1.getMname()+" "+e1.getLname();
                        }      
                               request.setAttribute("proName",proName);
                               request.setAttribute("single",single);
                               request.getRequestDispatcher("Employee_welcome_page1.jsp?username='"+fullName+"'&&password='"+id+"'&&proname='"+proName+"'&&msg=view").forward(request, response);
                               single.clear();
                    break;
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

    private void save(Part part, String path) throws IOException {
        in=part.getInputStream();
        byte [] fileSize=new byte[in.available()];
        ot = new FileOutputStream(path);
        in.read(fileSize);
        ot.write(fileSize,0,fileSize.length);
        ot.flush();
        ot.close();
    }

}
