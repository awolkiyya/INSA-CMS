package Controler;
import Entity.Assistance;
import Entity.Employee;
import Session.AssistanceLocal;
import Session.EmployeeSessionLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class AllManageEmployee extends HttpServlet {
 @EJB
    private AssistanceLocal assistance1;
    @EJB
    private EmployeeSessionLocal employeeSession;
    private Employee employee=new Employee();
    private Assistance assistance=new Assistance();
    private List<Employee> allAdmin=new ArrayList<>();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          String action=request.getParameter("action");
             String permession=request.getParameter("permission");
             out.print(action);
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
                          List<Employee> allEmployeer=new ArrayList<>();
                          int allEmployee1=allem1.size();
                          int allAssist1=allas1.size();
                          int allAdmi1=0;
                          for(Employee add:allem1){
                         if(add.getStatus().equals("dadmin")){
                             allAdmi1++;
                         }
                         else if(add.getStatus().equals("employee")){
                             allEmployeer.add(add);
                         }
                   }
                               request.setAttribute("allEmp",allEmployee1);
                               request.setAttribute("allAssist",allAssist1);
                               request.setAttribute("allAdmin",allAdmi1);
                               request.setAttribute("allad",allEmployeer);
                               request.setAttribute("single",single);
                               request.getRequestDispatcher("allAdmin_EmployeeManage.jsp?msg=view").forward(request, response);
                               allEmployeer.clear();
                               single.clear();
                    break;
                    case "delete":
                               String password=request.getParameter("password");
                               if(action.equals("delete")&&permession.equals("none")){
                               List<Employee> all1=employeeSession.findAll();
                               List<Assistance> all2=assistance1.findAll();
                               List<Employee> allEmployeer1l=new ArrayList<>();
                               int total_Employee=all1.size();
                               int admin=0,assist=all2.size();
                               for(Employee em:all1){
                                   if(em.getStatus().equals("dadmin")){
                                       allAdmin.add(em);
                                       admin++;
                                   }
                                   else if(em.getStatus().equals("employee")){
                                     allEmployeer1l.add(em);
                                     }
                               }
                               request.setAttribute("allEmp",total_Employee);
                               request.setAttribute("allAssist",assist);
                               request.setAttribute("allAdmin",admin);
                               request.setAttribute("allad",allEmployeer1l);
                               request.getRequestDispatcher("allAdmin_EmployeeManage.jsp?give=permition&&pass='"+password+"'").forward(request, response);
                               allEmployeer1l.clear();
                               }
                               else if(action.equals("delete")&&permession.equals("yes")){
                               employee=employeeSession.findByPassword(password);
                               employeeSession.delete(employee);
                               List<Employee> all1=employeeSession.findAll();
                               List<Assistance> all2=assistance1.findAll();
                               List<Employee> allEmployeer1l=new ArrayList<>();
                               int total_Employee=all1.size();
                               int admin=0,assist=all2.size();
                               for(Employee add:all1){
                                    if(add.getStatus().equals("dadmin")){
                                       admin++;
                                     }
                                else if(add.getStatus().equals("employee")){
                                     allEmployeer1l.add(add);
                                     }
                   }
                               request.setAttribute("allEmp",total_Employee);
                               request.setAttribute("allAssist",assist);
                               request.setAttribute("allAdmin",admin);
                               request.setAttribute("allad",allEmployeer1l);
                               request.getRequestDispatcher("allAdmin_EmployeeManage.jsp").forward(request, response);
                               allEmployeer1l.clear();
                               }   
                   break;
               case "add":
                   String passwordp=request.getParameter("password");
                   StringBuilder p=new StringBuilder();
                                              char pc;
                                              for(int i=1;i<passwordp.length()-1;i++){
                                              pc=passwordp.charAt(i);
                                              //              out.print(a+"<br/>");
                                              p.append(pc);
                                               }
                                              String pa=String.valueOf(p);
                                              Employee emplo=employeeSession.findByPassword(pa);
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
                   List<Employee> allEmployeer1=new ArrayList<>();
                   int allEmployee=allem.size();
                   int allAssist=allas.size();
                   int allAdmi=0;
                   for(Employee add:allem){
                         if(add.getStatus().equals("dadmin")){
                             allAdmi++;
                         }
                         else if(add.getStatus().equals("employee")){
                             allEmployeer1.add(add);
                         }
                   }     
                               request.setAttribute("proName",emplo.getProname());
                               request.setAttribute("allEmp",allEmployee);
                               request.setAttribute("allAssist",allAssist);
                               request.setAttribute("allAdmin",allAdmi);
                               request.setAttribute("allad",allEmployeer1);
                               request.getRequestDispatcher("allAdmin_EmployeeManage.jsp?msg=valid&&from=add&&password='"+pa+"'").forward(request, response);
                                allEmployeer1.clear();
                   }
                   else{
                         request.setAttribute("proName",emplo.getProname());
                       request.getRequestDispatcher("allAdmin_EmployeeManage.jsp?msg=invalid&&from=add&&password='"+pa+"'").forward(request, response);
                   }
                   break;
                   case "refresh":
                   String pl=request.getParameter("password");
                     StringBuilder p0=new StringBuilder();
                                              char pcp;
                                              for(int i=1;i<pl.length()-1;i++){
                                              pcp=pl.charAt(i);
                                              //              out.print(a+"<br/>");
                                              p0.append(pcp);
                                               }
                                              String pap=String.valueOf(p0);
                                              Employee empl=employeeSession.findByPassword(pap);
                   List<Employee> allem=employeeSession.findAll();
                   List<Assistance> allas=assistance1.findAll();
                   List<Employee> allEmployeer1=new ArrayList<>();
                   int allEmployee=allem.size();
                   int allAssist=allas.size();
                   int allAdmi=0;
                   for(Employee add:allem){
                         if(add.getStatus().equals("dadmin")){
                             allAdmi++;
                         }
                          else if(add.getStatus().equals("employee")){
                             allEmployeer1.add(add);
                         }
                   }         
                               request.setAttribute("proName",empl.getProname());
                               request.setAttribute("allEmp",allEmployee);
                               request.setAttribute("allAssist",allAssist);
                               request.setAttribute("allAdmin",allAdmi);
                               request.setAttribute("allad", allEmployeer1);
                               request.getRequestDispatcher("allAdmin_EmployeeManage.jsp?password='"+pap+"'").forward(request, response);
                               allEmployeer1.clear();
                    break;
                       case "retrive":
                        String p11=request.getParameter("password1");
                       List<Employee> ee=employeeSession.findByAllPassword(p11);
                       List<Employee> allEmployeer1l=new ArrayList<>();
                       for(Employee r:ee){
                            if(p11.equals(r.getPassword())){
                                 allEmployeer1l.add(r);
                            }
                       }
                       request.setAttribute("allad",allEmployeer1l);
                       request.getRequestDispatcher("updateEmployee.jsp?password='"+p11+"'").forward(request, response);
                       allAdmin.clear();
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
                   List<Employee> alleml=employeeSession.findAll();
                   List<Assistance> allasl=assistance1.findAll();
                    List<Employee> allEmployeer1ll=new ArrayList<>();
                   int allEmployeel=alleml.size();
                   int allAssistl=allasl.size();
                   int allAdmil=0;
                   for(Employee add:alleml){
                         if(add.getStatus().equals("dadmin")){
                             allAdmil++;
                         }
                         else if(add.getStatus().equals("employee")){
                             allEmployeer1ll.add(add);
                         }
                   }
                               request.setAttribute("allEmp",allEmployeel);
                               request.setAttribute("allAssist",allAssistl);
                               request.setAttribute("allAdmin",allAdmil);
                               request.setAttribute("allad",allEmployeer1ll);
                               out.print("i am here");
                               request.getRequestDispatcher("allAdmin_EmployeeManage.jsp").forward(request, response);
                               allEmployeer1ll.clear();
                   }
                   else{
                       request.getRequestDispatcher("allAdmin_EmployeeManage.jsp").forward(request, response);
                   }
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

}
