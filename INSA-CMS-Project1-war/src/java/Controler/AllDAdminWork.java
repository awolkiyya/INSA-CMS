package Controler;
import Entity.Archivefile;
import Entity.Assistance;
import Entity.Employee;
import Entity.Order2;
import Session.ArchiveFileSessionLocal;
import Session.AssistanceLocal;
import Session.EmployeeSessionLocal;
import Session.OrderSession1Local;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class AllDAdminWork extends HttpServlet {
    @EJB
    private OrderSession1Local orderSession1;
    @EJB
    private ArchiveFileSessionLocal archiveFileSession;
    @EJB
    private AssistanceLocal assistance1;
    @EJB
    private EmployeeSessionLocal employeeSession;
    private Order2 order=new Order2();
    private Employee employee=new Employee();
    private Assistance assistance=new Assistance();
    private List<Employee> allAdmin=new ArrayList<>();
    private Date date=null;
    private Date current=null;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             String action=request.getParameter("action");
             String permession=request.getParameter("permission");
           switch(action){
                case "view":
                       String p111=request.getParameter("password");
                       List<Employee> single=new ArrayList<>();
                       List<Employee> ee1=employeeSession.findByAllPassword(p111);
                       for(Employee r:ee1){
                            if(p111.equals(r.getPassword())){
                                 single.add(r);
                            }
                       }
                          List<Employee> allem1=employeeSession.findAll();
                          List<Assistance> allas1=assistance1.findAll();
                          int allEmployee1=allem1.size();
                          int allAssist1=allas1.size();
                          int allAdmi1=0;
                          for(Employee add:allem1){
                          if(add.getStatus().equals("dadmin")){
                             allAdmin.add(add);
                             allAdmi1++;
                                      }
                               }
                               request.setAttribute("allEmp",allEmployee1);
                               request.setAttribute("allAssist",allAssist1);
                               request.setAttribute("allAdmin",allAdmi1);
                               request.setAttribute("allad",allAdmin);
                               request.setAttribute("single",single);
                               request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?msg=view").forward(request, response);
                               allAdmin.clear();
                               single.clear();
                    break;
               case "delete":
                               String password=request.getParameter("password");
                               if(action.equals("delete")&&permession.equals("none")){
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
                               request.setAttribute("allEmp",total_Employee);
                               request.setAttribute("allAssist",assist);
                               request.setAttribute("allAdmin",admin);
                               request.setAttribute("allad",allAdmin);
                                   request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?give=permition&&pass='"+password+"'").forward(request, response);
                                   allAdmin.clear();
                               }
                               else if(action.equals("delete")&&permession.equals("yes")){
                                          employee=employeeSession.findByPassword(password);
                                          employeeSession.delete(employee);
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
                               request.setAttribute("allEmp",total_Employee);
                               request.setAttribute("allAssist",assist);
                               request.setAttribute("allAdmin",admin);
                               request.setAttribute("allad",allAdmin);
                                   request.getRequestDispatcher("Department_Admin_WelcomePage.jsp").forward(request, response);
                                   allAdmin.clear();
                               }   
                   break;
               case "add":
                   Employee em=new Employee();
                   String fname=request.getParameter("fname");
                   String mname=request.getParameter("mname");
                   String lname=request.getParameter("lname");
                   String departmen=request.getParameter("department");
                   String gender=request.getParameter("gender");
                   int phone=Integer.parseInt(request.getParameter("phone"));
                   String pass=request.getParameter("pass");
                   String status=request.getParameter("status");
//                   out.print(fname+"<br/>"+mname+"<br/>"+lname+"<br/>"+departmen+"<br/>"+gender+"<br/>"+pass+"<br/>"+status);
                   em.setFname(fname);
                   em.setMname(mname);
                   em.setLname(lname);
                   em.setDepartment(departmen);
                   em.setPhoneNumber(phone);
                   em.setGender(gender);
                   em.setPassword(pass);
                   em.setStatus(status);
                   if( employeeSession.save(em)){
                   List<Employee> allem=employeeSession.findAll();
                   List<Assistance> allas=assistance1.findAll();
                   int allEmployee=allem.size();
                   int allAssist=allas.size();
                   int allAdmi=0;
                   for(Employee add:allem){
                         if(add.getStatus().equals("dadmin")){
                             allAdmin.add(add);
                             allAdmi++;
                         }
                   }
                               request.setAttribute("allEmp",allEmployee);
                               request.setAttribute("allAssist",allAssist);
                               request.setAttribute("allAdmin",allAdmi);
                               request.setAttribute("allad",allAdmin);
                               request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?msg=valid&&from=add").forward(request, response);
                               allAdmin.clear();
                   }
                   else{
                       request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?msg=invalid&&from=add").forward(request, response);
                   }
                   break;
               case "update":
                   String p1=request.getParameter("password");
                   Employee e=employeeSession.findByPassword(p1);
//                   out.print(e);
                   String fname1=request.getParameter("fname");
                   String mname1=request.getParameter("mname");
                   String lname1=request.getParameter("lname");
                   String departmen1=request.getParameter("department");
                   String gender1=request.getParameter("gender");
                   int phone1=Integer.parseInt(request.getParameter("phone"));
                   String pass1=request.getParameter("pass");
                   String status1=request.getParameter("status");
                   e.setFname(fname1);
                   e.setMname(mname1);
                   e.setLname(lname1);
                   e.setDepartment(departmen1);
                   e.setPhoneNumber(phone1);
                   e.setGender(gender1);
                   e.setPassword(pass1);
                   e.setStatus(status1);
                   if( employeeSession.edit(e)){
                   List<Employee> allem=employeeSession.findAll();
                   List<Assistance> allas=assistance1.findAll();
                   int allEmployee=allem.size();
                   int allAssist=allas.size();
                   int allAdmi=0;
                   for(Employee add:allem){
                         if(add.getStatus().equals("dadmin")){
                             allAdmin.add(add);
                             allAdmi++;
                         }
                   }
                               request.setAttribute("allEmp",allEmployee);
                               request.setAttribute("allAssist",allAssist);
                               request.setAttribute("allAdmin",allAdmi);
                               request.setAttribute("allad",allAdmin);
                               request.getRequestDispatcher("Department_Admin_WelcomePage.jsp").forward(request, response);
                               allAdmin.clear();
                   }
                   else{
                       request.getRequestDispatcher("Department_Admin_WelcomePage.jsp").forward(request, response);
                   }
                   break;
                   case "refresh":
                   List<Employee> allem=employeeSession.findAll();
                   List<Assistance> allas=assistance1.findAll();
                   int allEmployee=allem.size();
                   int allAssist=allas.size();
                   int allAdmi=0;
                   for(Employee add:allem){
                         if(add.getStatus().equals("dadmin")){
                             allAdmin.add(add);
                             allAdmi++;
                         }
                   }
                               request.setAttribute("allEmp",allEmployee);
                               request.setAttribute("allAssist",allAssist);
                               request.setAttribute("allAdmin",allAdmi);
                               request.setAttribute("allad",allAdmin);
                               request.getRequestDispatcher("Department_Admin_WelcomePage.jsp").forward(request, response);
                               allAdmin.clear();
                    break;
                       
                   case "retrive":
                       String p11=request.getParameter("password1");
                       out.print(p11);
                       List<Employee> ee=employeeSession.findByAllPassword(p11);
                       for(Employee r:ee){
                            if(p11.equals(r.getPassword())){
                                 allAdmin.add(r);
                            }
                       }
                       request.setAttribute("allad",allAdmin);
                       request.getRequestDispatcher("updateDadmin.jsp?password='"+p11+"'").forward(request, response);
                       allAdmin.clear();
                    break;
                       
                   case "employee":
                   List<Employee> alleml=employeeSession.findAll();
                   List<Assistance> allasl=assistance1.findAll();
                   List<Employee> allEmployeer=new ArrayList<>();
                   int allEmployeel=alleml.size();
                   int allAssistl=allasl.size();
                   int allAdminl=0;
                   for(Employee add:alleml){
                         if(add.getStatus().equals("dadmin")){
                             allAdminl++;
                         }
                         else if(add.getStatus().equals("employee")){
                             allEmployeer.add(add);
                         }
                   }
                               request.setAttribute("allEmp",allEmployeel);
                               request.setAttribute("allAssist",allAssistl);
                               request.setAttribute("allAdmin",allAdminl);
                               request.setAttribute("allad",allEmployeer);
                               request.getRequestDispatcher("allAdmin_EmployeeManage.jsp").forward(request, response);
                               allEmployeer.clear();
                    break;
                   case "assistance":
                   List<Employee> allel=employeeSession.findAll();
                   List<Assistance> allal=assistance1.findAll();
                   List<Assistance> assistance1ll=new ArrayList<>();
                   int allEmployel=allel.size();
                   int allAssisl=allal.size();
                   int allAdmil=0;
                   for(Employee add:allel){
                         if(add.getStatus().equals("dadmin")){
                             allAdmil++;
                         }
                   }
                   for(Assistance ll:allal){
                       assistance1ll.add(ll);
                   }
                               request.setAttribute("allEmp",allEmployel);
                               request.setAttribute("allAssist",allAssisl);
                               request.setAttribute("allAdmin",allAdmil);
                               request.setAttribute("allad",assistance1ll);
                               request.getRequestDispatcher("AllAdmin_AssistanceManage.jsp").forward(request, response);
                               assistance1ll.clear();
                    break;
                case "sendArchivefrom_admin":
                       //now retrive the list of the archive file and the list of assistance
                        String password2=request.getParameter("password");
                        List<Employee> al=employeeSession.findAll();
                        List<Assistance> all=assistance1.findAll();
                        List<Archivefile> arch=archiveFileSession.findAll();
                        int allEmp=al.size();
                        int allAss=all.size();
                        int allAdm=0;
                         for(Employee add:al){
                         if(add.getStatus().equals("dadmin")){
                             allAdmin.add(add);
                             allAdm++;
                              }
                           }     
                               request.setAttribute("allArchive",arch);
                               request.setAttribute("allAssistance",all);
                               request.setAttribute("allEmp",allEmp);
                               request.setAttribute("allAssist",allAss);
                               request.setAttribute("allAdmin",allAdm);
                               request.setAttribute("allad",allAdmin);
                         request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?msg=ok&&password='"+password2+"'").forward(request, response);
                          allAdmin.clear();
//                    break;
                case "doneSend":
                    //now start registration time
                       String password3=request.getParameter("password");
                       int pag=Integer.parseInt(request.getParameter("pageNumber"));
                       String dby=request.getParameter("deliverdBy");
                       String afile=request.getParameter("archiveFile");
                       employee=employeeSession.findByPassword(password3);
                       //now is the time to save the archive file order
                           try{
                                     date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("deliveryDate"));
                                     current=new Date();
                           }catch(Exception el){}
                      order.setFilename(afile);
                      order.setDeliveredby(dby);
                      order.setPagenumber(pag);
                      order.setDeliverydate(new java.sql.Date(date.getTime()));
                      order.setOrdereddate(new java.sql.Date(current.getTime()));
                      order.setType("archive");
                      order.setEmployeeId(employee);
                      if(orderSession1.s(order)){
                               List<Employee> all1=employeeSession.findAll();
                               List<Assistance> all2=assistance1.findAll();
                               int total_Employee=all1.size();
                                int admin=0,assist=all2.size();
                               
                               for(Employee eml:all1){
                                   if(eml.getStatus().equals("dadmin")){
                                       allAdmin.add(eml);
                                       admin++;
                                   }
                               }
                               request.setAttribute("allEmp",total_Employee);
                               request.setAttribute("allAssist",assist);
                               request.setAttribute("allAdmin",admin);
                               request.setAttribute("allad",allAdmin);
                               String msgl="valid";
                               request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?msg='"+msgl+"'&&password='"+employee.getPassword()+"'&&from=add").forward(request, response);
                               allAdmin.clear();
                               
                      }
                      else{
                          
                      }
//                break;   
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
