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
public class AllManageAssistance extends HttpServlet {
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
                       List<Assistance> single=new ArrayList<>();
                       List<Assistance> ee1= assistance1.findByAllPassword(p111);
                       for(Assistance r:ee1){
                            if(p111.equals(r.getId())){
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
                         }
                               request.setAttribute("allEmp",allEmployee1);
                               request.setAttribute("allAssist",allAssist1);
                               request.setAttribute("allAdmin",allAdmi1);
                               request.setAttribute("allad",allas1);
                               request.setAttribute("single",single);
                               request.getRequestDispatcher("AllAdmin_AssistanceManage.jsp?msg=view").forward(request, response);
                               allEmployeer.clear();
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
                               request.setAttribute("allad",all2);
                               request.getRequestDispatcher("AllAdmin_AssistanceManage.jsp?give=permition&&pass='"+password+"'").forward(request, response);
                               all2.clear();
                               }
                               else if(action.equals("delete")&&permession.equals("yes")){
                               assistance=assistance1.findById(password);
                               assistance1.delete(assistance);
                               List<Employee> all1=employeeSession.findAll();
                               List<Assistance> all2=assistance1.findAll();
                               int total_Employee=all1.size();
                               int admin=0,assist=all2.size();
                               for(Employee add:all1){
                                    if(add.getStatus().equals("dadmin")){
                                       admin++;
                                     }
                   }
                               request.setAttribute("allEmp",total_Employee);
                               request.setAttribute("allAssist",assist);
                               request.setAttribute("allAdmin",admin);
                               request.setAttribute("allad",all2);
                               request.getRequestDispatcher("AllAdmin_AssistanceManage.jsp").forward(request, response);
                               all2.clear();
                               }   
                   break;
               case "add":
                   Assistance em=new Assistance();
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
                   em.setId(pass);
                   em.setStatus(status);
                   if( assistance1.save(em)){
                   List<Employee> allem=employeeSession.findAll();
                   List<Assistance> allas=assistance1.findAll();
                   List<Assistance> assistancel=new ArrayList<>();
                   int allEmployee=allem.size();
                   int allAssist=allas.size();
                   int allAdmi=0;
                   for(Employee add:allem){
                         if(add.getStatus().equals("dadmin")){
                             allAdmi++;
                         }
                   }
                   for(Assistance assistance2:allas){
                       assistancel.add(assistance2);
                   }
                               request.setAttribute("allEmp",allEmployee);
                               request.setAttribute("allAssist",allAssist);
                               request.setAttribute("allAdmin",allAdmi);
                               request.setAttribute("allad",assistancel);
                               request.getRequestDispatcher("AllAdmin_AssistanceManage.jsp?msg=valid&&from=add").forward(request, response);
                               assistancel.clear();
                   }
                   else{
                       request.getRequestDispatcher("AllAdmin_AssistanceManage.jsp?msg=invalid&&from=add").forward(request, response);
                   }
                   break;
                   case "refresh":
                   List<Employee> allem=employeeSession.findAll();
                   List<Assistance> allas=assistance1.findAll();
                   List<Assistance> assistancel=new ArrayList<>();
                   int allEmployee=allem.size();
                   int allAssist=allas.size();
                   int allAdmi=0;
                   for(Employee add:allem){
                         if(add.getStatus().equals("dadmin")){
                             allAdmi++;
                         }
                   }
                   for(Assistance assistance2:allas){
                       assistancel.add(assistance2);
                   }
                      
                               request.setAttribute("allEmp",allEmployee);
                               request.setAttribute("allAssist",allAssist);
                               request.setAttribute("allAdmin",allAdmi);
                               request.setAttribute("allad", assistancel);
                               request.getRequestDispatcher("AllAdmin_AssistanceManage.jsp").forward(request, response);
                               assistancel.clear();
                    break;
                       case "retrive":
                       String p11=request.getParameter("password1");
                       List<Assistance> ee1l=assistance1.findByAllPassword(p11);
                       List<Assistance> allAssistance=new ArrayList<>();
                       for(Assistance r:ee1l){
                            if(p11.equals(r.getId())){
                                 allAssistance.add(r);
                            }
                       }
                       request.setAttribute("allad",allAssistance);
                       request.getRequestDispatcher("updateAssistance.jsp?password='"+p11+"'").forward(request, response);
                       allAdmin.clear();
                    break;
                case "update":
                   String p1=request.getParameter("password");
                   Assistance el=assistance1.findById(p1);
//                   out.print(e);
                   String fname1=request.getParameter("fname");
                   String mname1=request.getParameter("mname");
                   String lname1=request.getParameter("lname");
                   String departmen1=request.getParameter("department");
                   String gender1=request.getParameter("gender");
                   int phone1=Integer.parseInt(request.getParameter("phone"));
                   String pass1=request.getParameter("pass");
                   String status1=request.getParameter("status");
                   el.setFname(fname1);
                   el.setMname(mname1);
                   el.setLname(lname1);
                   el.setDepartment(departmen1);
                   el.setPhoneNumber(phone1);
                   el.setGender(gender1);
                   el.setId(pass1);
                   el.setStatus(status1);
                   if( assistance1.edit(el)){
                   List<Employee> alleml=employeeSession.findAll();
                   List<Assistance> allasl=assistance1.findAll();
                   int allEmployeel=alleml.size();
                   int allAssistl=allasl.size();
                   int allAdmil=0;
                   for(Employee add:alleml){
                         if(add.getStatus().equals("dadmin")){
                             allAdmil++;
                         }
                   }
                               request.setAttribute("allEmp",allEmployeel);
                               request.setAttribute("allAssist",allAssistl);
                               request.setAttribute("allAdmin",allAdmil);
                               request.setAttribute("allad",allasl);
                               out.print("i am here");
                               request.getRequestDispatcher("AllAdmin_AssistanceManage.jsp").forward(request, response);
                               allasl.clear();
                   }
                   else{
                       request.getRequestDispatcher("AllAdmin_AssistanceManage.jsp").forward(request, response);
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
