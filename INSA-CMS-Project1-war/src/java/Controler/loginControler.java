package Controler;
import Entity.Assistance;
import Entity.Employee;
import Entity.Message;
import Entity.Order2;
import Session.AssistanceLocal;
import Session.EmployeeSessionLocal;
import Session.MessageSessionLocal;
import Session.OrderSession1Local;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class loginControler extends HttpServlet {
    @EJB
    private MessageSessionLocal messageSession;
    @EJB
    private OrderSession1Local orderSession1;
    @EJB
    private AssistanceLocal assistance1;
    @EJB
    private EmployeeSessionLocal employeeSession;
    private Order2 order=new Order2();
    private Message message=new Message();
    private Assistance assistance=new Assistance();
    private Employee employee=new Employee();
    private List<Employee> allAdmin=new ArrayList<>();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
              String action=request.getParameter("action");
              HttpSession s=request.getSession();
               switch (action) {    
                case "Login":
                         String status=request.getParameter("status");
                         String username=request.getParameter("user_name").trim();
                         String password=request.getParameter("password").trim();
                         boolean remember_me=request.getParameter("remember")!=null;
                         employee=employeeSession.findByPassword(password);
                       if(status.equals("employee")){
                           if(employee==null){
                               request.getRequestDispatcher("LoginPage.jsp?msg=invalid").forward(request, response);
                           }
                           if(employee.getStatus().equals("employee")&&employee.getFname().equals(username)&&employee.getPassword().equals(password)){
                               String msg="";
                               s.setAttribute("name",employee.getFname());
                               request.setAttribute("proName",employee.getProname());
                               request.getRequestDispatcher("Employee_welcome_page1.jsp?ms=''&&msg='"+msg+"'&&password='"+password+"'&&username='"+employee.getFname()+" "+employee.getMname()+" "+employee.getLname()+"'&&proName='"+employee.getProname()+"'").forward(request, response);
                           }
                           else{
                                request.getRequestDispatcher("LoginPage.jsp?msg=none1").forward(request, response);
                           }
                          
                         }
                       else if(status.equals("dadmin")){
                          if(employee==null){
                               request.getRequestDispatcher("LoginPage.jsp?msg=invalid").forward(request, response);
                           }
                           if(employee.getStatus().equals("dadmin")&&employee.getFname().equals(username)&&employee.getPassword().equals(password)){
                               List<Employee> all1=employeeSession.findAll();
                               List<Assistance> all2=assistance1.findAll();
                               int total_Employee=all1.size();
                                int admin=0,assist=all2.size();
                               
                               for(Employee em:all1){
                                   if(em.getStatus().equals("dadmin")){
                                       allAdmin.add(em);
                                       admin++;
                                   }
                               }
                               request.setAttribute("proName",employee.getProname());
                               request.setAttribute("allEmp",total_Employee);
                               request.setAttribute("allAssist",assist);
                               request.setAttribute("allAdmin",admin);
                               request.setAttribute("allad",allAdmin);
                               String msg="";
                               request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?msg='"+msg+"'&&password='"+employee.getPassword()+"'").forward(request, response);
                               allAdmin.clear();
                           }
                           else{
                                request.getRequestDispatcher("LoginPage.jsp?msg=none2").forward(request, response);
                           }
                         }
                       else if(status.equals("oadmin")){
                          if(employee==null){
                               request.getRequestDispatcher("LoginPage.jsp?msg=invalid").forward(request, response);
                           }
                           if(employee.getStatus().equals("oadmin")&&employee.getFname().equals(username)&&employee.getPassword().equals(password)){
                               List<Order2> all1=orderSession1.findAll();
                               List<Message> all2=messageSession.findAll();
                               List<Order2> n=new ArrayList<>();
                               int messages=all2.size();
                               int normal=0,archive=0;
                               for(Order2 em:all1){
                                    if(em.getType().equals("normal")){
                                        n.add(em);
                                        normal++;
                                        
                                    }
                                    else if(em.getType().equals("archive")){
                                        archive++;
                                    }
                               }
                               request.setAttribute("no_normal_order",normal);
                               request.setAttribute("no_archive_order",archive);
                               request.setAttribute("allmessage",messages);
                               request.setAttribute("normal_order",n);
                               request.getRequestDispatcher("orderAdmin_dashbord.jsp?password='"+password+"'").forward(request, response);
                               n.clear();
                           }
                           else{
                                request.getRequestDispatcher("LoginPage.jsp?msg=none3").forward(request, response);
                           }
                         }
                    break;
                    
                case "logout":
                   
                    response.sendRedirect("LoginPage.jsp");
                    break;
            }
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
//             
//                   HttpSession session=request.getSession();
//                   String action=request.getParameter("action");
//                   String username=request.getParameter("user_name").trim();
//                   String password=request.getParameter("password").trim();
//                   boolean remember_me=request.getParameter("remember")!=null;
//                    String selector="";
//                    String validator="";
//            switch (action) {    
//                case "login":
//                    employee= employee_session.findEmployeeByPassword(password);
//                    if(password.equals(employee.getEid()))
//                    {   
//                         byte[] blob= employee.getProfile();
//                    InputStream in=new  InputStream(blob);
//                    ByteArrayOutputStream outl=new ByteArrayOutputStream();
//                    byte[] buffer=new byte[4096];
//                    int bytesRead=-1;
//                    while((bytesRead=in.read(blob))!=-1){
//                        outl.write(buffer,0,bytesRead);
//                    }
//                    byte[] im=outl.toByteArray();
//                    String filename=Base64.getEncoder().encodeToString(im);
//                    p.setProfilename(filename);
//                    profile.save(p);
//                        if(remember_me){
//                            
//                            session.setAttribute("logedCustomer",employee.getFname());
//                             selector="sdfghilk";
//                             validator="watrsrss";
//                            outhentication.setSelectore(selector);
//                            outhentication.setValidator(validator);
//                            outhentication.setEid("1234");
//                            authentication_session.save(outhentication);
//                            Cookie k1=new Cookie("selector",selector);
//                            k1.setMaxAge(604800);
//                             Cookie k2=new Cookie("vlidator",validator);
//                            k1.setMaxAge(604800);
//                            response.addCookie(k1);
//                            response.addCookie(k2);
//                            
//                        }
//              request.getRequestDispatcher("Employee-Page.jsp?password='"+password+"'&&username='"+employee.getFname()+" "+employee.getMname()+" "+employee.getLname()+"'&&profile='"+employee.getProfile()+"'").forward(request, response);
//                                
//                    }
//                    else{
//                        request.getRequestDispatcher("LoginPage.jsp?msg=invalid").forward(request, response);
//                    }
//                    break;
//                case "logout":
//                    session.removeAttribute("logedCustomer");
//                    Cookie[] cookies=request.getCookies();
//                    for( Cookie k:cookies){
//                        if(k.getName().equals("selector"))
//                           selector=k.getValue();
//                    }
//                    if(!selector.isEmpty()){
//                        Autentication out1=authentication_session.findBySelector(selector);
//                        if(out1!=null){
//                            authentication_session.delete(out1);
//                         Cookie k1=new Cookie("selector","");
//                            k1.setMaxAge(0);
//                             Cookie k2=new Cookie("vlidator","");
//                            k1.setMaxAge(0);
//                            response.addCookie(k1);
//                            response.addCookie(k2);
//                        }
//                        
//                    }
//                    request.getRequestDispatcher("LoginPage.jsp").forward(request, response);
//                    break;
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
