package Controler;
import Entity.Archivefile;
import Entity.Assistance;
import Entity.Employee;
import Entity.Order2;
import Session.ArchiveFileSessionLocal;
import Session.AssistanceLocal;
import Session.EmployeeSessionLocal;
import Session.OrderSession1Local;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
public class AllDAdminWork2 extends HttpServlet {
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
       private InputStream in;
    private FileOutputStream ot;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             String action=request.getParameter("action");
             String permession=request.getParameter("permission");
             switch(action){
                 case "employee":
                     String password2l=request.getParameter("password");
                     StringBuilder me1=new StringBuilder();
                                              char ap;
                                              for(int i=1;i<password2l.length()-1;i++){
                                              ap=password2l.charAt(i);
                                              //              out.print(a+"<br/>");
                                              me1.append(ap);
                                               }
                                              String ms1=String.valueOf(me1);
                                              Employee emple=employeeSession.findByPassword(ms1);
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
                               request.setAttribute("proName",emple.getProname());
                               request.setAttribute("allEmp",allEmployeel);
                               request.setAttribute("allAssist",allAssistl);
                               request.setAttribute("allAdmin",allAdminl);
                               request.setAttribute("allad",allEmployeer);
                               request.getRequestDispatcher("allAdmin_EmployeeManage.jsp?password='"+ms1+"'").forward(request, response);
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
                        String password2=request.getParameter("password");
                        StringBuilder me=new StringBuilder();
                                              char a11;
                                              for(int i=1;i<password2.length()-1;i++){
                                              a11=password2.charAt(i);
                                              //              out.print(a+"<br/>");
                                              me.append(a11);
                                               }
                                              String ms=String.valueOf(me);
                                              
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
                         request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?msg=ok&&password='"+ms+"'").forward(request, response);
                          allAdmin.clear();
                     break;
                     case "doneSend":
                              String password3=request.getParameter("password");
                              StringBuilder p=new StringBuilder();
                                              char pc;
                                              for(int i=1;i<password3.length()-1;i++){
                                              pc=password3.charAt(i);
                                              //              out.print(a+"<br/>");
                                              p.append(pc);
                                               }
                                              String pa=String.valueOf(p);
                       int pag=Integer.parseInt(request.getParameter("pageNumber"));
                       String dby=request.getParameter("deliverdBy");
                       String afile=request.getParameter("archiveFile");
                       employee=employeeSession.findByPassword(pa);
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
                               request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?msg=valid&&password='"+employee.getPassword()+"'&&from=add").forward(request, response);
                               allAdmin.clear();  
                      }
                      else{
                          
                      }
                         break;
                     case "refresh":
                         String password4=request.getParameter("password");
                              StringBuilder ppl=new StringBuilder();
                                              char pcpl;
                                              for(int i=1;i<password4.length()-1;i++){
                                              pcpl=password4.charAt(i);
                                              //              out.print(a+"<br/>");
                                              ppl.append(pcpl);
                                               }
                                              String papl=String.valueOf(ppl);
                          Employee empll=employeeSession.findByPassword(papl);
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
                               request.setAttribute("proName",empll.getProname());
                               request.setAttribute("allEmp",allEmployee);
                               request.setAttribute("allAssist",allAssist);
                               request.setAttribute("allAdmin",allAdmi);
                               request.setAttribute("allad",allAdmin);
                               request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?password='"+papl+"'").forward(request, response);
                               allAdmin.clear();
                     break;
                     case "add":
                     String password5=request.getParameter("password");
                              StringBuilder p1=new StringBuilder();
                                              char pk;
                                              for(int i=1;i<password5.length()-1;i++){
                                              pk=password5.charAt(i);
                                              //              out.print(a+"<br/>");
                                              p1.append(pk);
                                               }
                                              String p2=String.valueOf(p1); 
                                              Employee empl=employeeSession.findByPassword(p2);
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
                   List<Employee> allemo=employeeSession.findAll();
                   List<Assistance> allaso=assistance1.findAll();
                   int allEmployeeo=allemo.size();
                   int allAssisto=allaso.size();
                   int allAdmio=0;
                   for(Employee add:allemo){
                         if(add.getStatus().equals("dadmin")){
                             allAdmin.add(add);
                             allAdmio++;
                         }
                   }            
                               request.setAttribute("proName",empl.getProname());
                               request.setAttribute("allEmp",allEmployeeo);
                               request.setAttribute("allAssist",allAssisto);
                               request.setAttribute("allAdmin",allAdmio);
                               request.setAttribute("allad",allAdmin);
                               request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?msg=valid&&from=add&&password='"+p2+"'").forward(request, response);
                               allAdmin.clear();
                   }
                   else{
                       request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?msg=invalid&&from=add").forward(request, response);
                   }
                     break;
                     case "view":
                          String password51=request.getParameter("password");
                          StringBuilder a1=new StringBuilder();
                                              char pka;
                                              for(int i=1;i<password51.length()-1;i++){
                                              pka=password51.charAt(i);
                                              //              out.print(a+"<br/>");
                                              a1.append(pka);
                                               }
                                              String p2a=String.valueOf(a1);
                                              Employee emp=employeeSession.findByPassword(p2a);
                              String p111=request.getParameter("singlep");
                       List<Employee> single=new ArrayList<>();
                       List<Employee> ee1=employeeSession.findByAllPassword(p111);
                       String pro="";
                       for(Employee r:ee1){
                            if(p111.equals(r.getPassword())){
                                 single.add(r);
                                 pro=r.getProname();
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
                               request.setAttribute("proName",emp.getProname());
                               request.setAttribute("allEmp",allEmployee1);
                               request.setAttribute("allAssist",allAssist1);
                               request.setAttribute("allAdmin",allAdmi1);
                               request.setAttribute("allad",allAdmin);
                               request.setAttribute("single",single);
                               request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?msg=view&&password='"+p2a+"'").forward(request, response);
                               allAdmin.clear();
                               single.clear();
                     break;
                     case "update":
                     String p1p=request.getParameter("password");
                     String spass=request.getParameter("single");
                     Employee e=employeeSession.findByPassword(spass);
                   
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
                   List<Employee> a1llem=employeeSession.findAll();
                   List<Assistance> a1llas=assistance1.findAll();
                   int a1llEmployee=a1llem.size();
                   int a1llAssist=a1llas.size();
                   int a1llAdmi=0;
                   a1llAdmi = a1llem.stream().filter((add) -> (add.getStatus().equals("dadmin"))).map((add) -> {
                       allAdmin.add(add);
                     return add;
                 }).map((_item) -> 1).reduce(a1llAdmi, Integer::sum);
                               request.setAttribute("proName",e.getProname());
                               request.setAttribute("allEmp",a1llEmployee);
                               request.setAttribute("allAssist",a1llAssist);
                               request.setAttribute("allAdmin",a1llAdmi);
                               request.setAttribute("allad",allAdmin);
                               request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?password='"+p1p+"'").forward(request, response);
                               allAdmin.clear();
                   }
                   else{
                       request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?password='"+p1p+"'").forward(request, response);
                   }
                     break;
                     case "retrive":
                          String passw=request.getParameter("password");
                          StringBuilder a2=new StringBuilder();
                                              char pka1;
                                              for(int i=1;i<passw.length()-1;i++){
                                              pka1=passw.charAt(i);
                                              //              out.print(a+"<br/>");
                                              a2.append(pka1);
                                               }
                                              String p2a1=String.valueOf(a2); 
                          String p1112=request.getParameter("singlep");
                       
                       List<Employee> ee=employeeSession.findByAllPassword(p1112);
                       for(Employee r:ee){
                            if(p1112.equals(r.getPassword())){
                                 allAdmin.add(r);
                            }
                       }
                       request.setAttribute("allad",allAdmin);
                       request.getRequestDispatcher("updateDadmin.jsp?singlep='"+p1112+"'&&password='"+p2a1+"'").forward(request, response);
                       allAdmin.clear();
                     break;
                     case "delete":
                               String password=request.getParameter("password");
                                 StringBuilder a1a=new StringBuilder();
                                              char pkaa;
                                              for(int i=1;i<password.length()-1;i++){
                                              pkaa=password.charAt(i);
                                              //              out.print(a+"<br/>");
                                              a1a.append(pkaa);
                                               }
                                              String p2aa=String.valueOf(a1a);
                                      Employee om=employeeSession.findByPassword(p2aa);
                                
                               String singlep1=request.getParameter("singlep");
                               if(action.equals("delete")&&permession.equals("none")){
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
                               request.setAttribute("proName",om.getProname());
                               request.setAttribute("allEmp",total_Employee);
                               request.setAttribute("allAssist",assist);
                               request.setAttribute("allAdmin",admin);
                               request.setAttribute("allad",allAdmin);
                                   request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?give=permition&&pass='"+singlep1+"'&&password='"+p2aa+"'").forward(request, response);
                                   allAdmin.clear();
                               }
                               else if(action.equals("delete")&&permession.equals("yes")){
                                employee=employeeSession.findByPassword(singlep1);
                                employeeSession.delete(employee);
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
                               request.setAttribute("proName",om.getProname());
                               request.setAttribute("allEmp",total_Employee);
                               request.setAttribute("allAssist",assist);
                               request.setAttribute("allAdmin",admin);
                               request.setAttribute("allad",allAdmin);
                                   request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?password='"+p2aa+"'").forward(request, response);
                                   allAdmin.clear();
                               }   
                     break;   
                         case "update_profile":
                      String passl=request.getParameter("password");
                      Part part=request.getPart("file");
                      StringBuilder pass1l=new StringBuilder();
                      char a1l;
                       for(int i=1;i<passl.length()-1;i++){
                       a1l=passl.charAt(i);
                       pass1l.append(a1l);
                      }
                       String o_password=String.valueOf(pass1l);
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
                               request.setAttribute("proName",employee.getProname());
                               request.setAttribute("allEmp",total_Employee);
                               request.setAttribute("allAssist",assist);
                               request.setAttribute("allAdmin",admin);
                               request.setAttribute("allad",allAdmin);
                               String msg="";
                               request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?msg='"+msg+"'&&password='"+employee.getPassword()+"'").forward(request, response);
                               allAdmin.clear();
                           String path="C:\\Users\\hp\\Documents\\NetBeansProjects\\INSA-CMS-Project1\\INSA-CMS-Project1-war\\web\\pro\\"+part.getSubmittedFileName();
                           save(part,path);
                       }
                         else{
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
                               String msg="";
                               request.getRequestDispatcher("Department_Admin_WelcomePage.jsp?msg='"+msg+"'&&password='"+employee.getPassword()+"'").forward(request, response);
                               allAdmin.clear();
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
