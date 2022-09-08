package Controler;
import Entity.Assistance;
import Entity.Employee;
import Entity.Message;
import Session.AssistanceLocal;
import Session.EmployeeSessionLocal;
import Session.MessageSessionLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class AllMessageOperation extends HttpServlet {
    @EJB
    private MessageSessionLocal messageSession;
    @EJB
    private EmployeeSessionLocal employeeSession;
    private Employee employee=new Employee();
    @EJB
    private AssistanceLocal assistance;
    Assistance assistance1=new Assistance();
    private Message m=new Message();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String from=request.getParameter("from");
            String message=request.getParameter("message");
            String password=request.getParameter("password");
             StringBuilder converted=new StringBuilder();
             char a;
                for(int i=1;i<password.length()-1;i++){
                a=password.charAt(i);
//              out.print(a+"<br/>");
                converted.append(a);
            }
            String orignalPassword=String.valueOf(converted);
            if(from.equals("welcome_page")){
                employee=employeeSession.findByPassword(orignalPassword);
            m.setMessage(message);
            m.setEmployeeName(employee.getFname()+employee.getMname()+employee.getLname());
            m.setEmployeeId(employee);
            m.setStatus(employee.getStatus());
            if(messageSession.save(m)){
                    String proName="";
                    String fullName="";
                    List<Employee> byid=employeeSession.findByAllPassword(orignalPassword);
                    for(Employee e1:byid){
                        proName=e1.getProname();
                        fullName=e1.getFname()+" "+e1.getMname()+" "+e1.getLname();
                    }       
                    request.setAttribute("find",byid);
                    request.setAttribute("assList",assistance.findAll());
                    request.setAttribute("proName",proName);
                    String msg="valid";
                    request.getRequestDispatcher("Employee_welcome_page1.jsp?ms=''&&msg='"+msg+"'&&username='"+fullName+"'&&password='"+orignalPassword+"'").forward(request, response);
            }
            else{
                   String proName="";
                    String fullName="";
                    List<Employee> byid=employeeSession.findByAllPassword(orignalPassword);
                    for(Employee e1:byid){
                        proName=e1.getProname();
                        fullName=e1.getFname()+" "+e1.getMname()+" "+e1.getLname();
                    }       request.setAttribute("find",byid);
                    request.setAttribute("assList",assistance.findAll());
                    request.setAttribute("proName",proName);
                    String msg="invalid";
                    request.getRequestDispatcher("Employee_welcome_page1.jsp?ms=''&&msg='"+msg+"'&&username='"+fullName+"'&&password='"+orignalPassword+"'").forward(request, response);
            }
            }
            else if(from.equals("copysend")){
            employee=employeeSession.findByPassword(orignalPassword);
            m.setMessage(message);
            m.setEmployeeName(employee.getFname()+employee.getMname()+employee.getLname());
            m.setEmployeeId(employee);
            m.setStatus(employee.getStatus());
            if(messageSession.save(m)){
                    String proName="";
                    String fullName="";
                    List<Employee> byid=employeeSession.findByAllPassword(orignalPassword);
                    for(Employee e1:byid){
                        proName=e1.getProname();
                        fullName=e1.getFname()+" "+e1.getMname()+" "+e1.getLname();
                    }      
                    request.setAttribute("find",byid);
                     request.setAttribute("proName",proName);
                    request.setAttribute("assList",assistance.findAll());
                    String msg="valid";
                    request.getRequestDispatcher("copysend.jsp?msg='"+msg+"'&&username='"+fullName+"'&&password='"+orignalPassword+"'").forward(request, response);
            }
            else{
                   String proName="";
                    String fullName="";
                    List<Employee> byid=employeeSession.findByAllPassword(orignalPassword);
                    for(Employee e1:byid){
                        proName=e1.getProname();
                        fullName=e1.getFname()+" "+e1.getMname()+" "+e1.getLname();
                    }       request.setAttribute("find",byid);
                    request.setAttribute("assList",assistance.findAll());
                    String msg="invalid";
                    request.getRequestDispatcher("copysend.jsp?msg='"+msg+"'&&username='"+fullName+"'&&password='"+orignalPassword+"'").forward(request, response);
            }
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

}
