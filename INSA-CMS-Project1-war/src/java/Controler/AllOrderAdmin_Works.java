package Controler;
import Entity.Archivefile;
import Entity.Employee;
import Entity.Message;
import Entity.Order2;
import Session.ArchiveFileSessionLocal;
import Session.EmployeeSessionLocal;
import Session.MessageSessionLocal;
import Session.OrderSession1Local;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import static java.lang.System.in;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@MultipartConfig()
public class AllOrderAdmin_Works extends HttpServlet {
    @EJB
    private ArchiveFileSessionLocal archiveFileSession;
    @EJB
    private EmployeeSessionLocal employeeSession;
    @EJB
    private MessageSessionLocal messageSession;
    @EJB
    private OrderSession1Local orderSession1;
    private Archivefile archive=new Archivefile();
    private Order2 order=new Order2();
    private Message message=new Message();
    private Employee employee=new Employee();
    private FileOutputStream outputStream=null;
    private FileInputStream inputStream=null;
     private InputStream in;
    private FileOutputStream ot;
    private File fileDownload=null;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()){
            String employeeId1=request.getParameter("password");
            String action=request.getParameter("action");
            String id=request.getParameter("orderId");
            String id2=request.getParameter("fileId");
            String permission=request.getParameter("permission");
            switch(action){
                case "refresh":
                       if("normal".equals(request.getParameter("from"))){
                            String type=request.getParameter("for");
                               if(type.equals("order")){
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
                               request.getRequestDispatcher("orderAdmin_dashbord.jsp?password='"+employeeId1+"'").forward(request, response);
                               n.clear();
                       }
                       }
                       else if("archive".equals(request.getParameter("from"))){
                           String type=request.getParameter("for");
                               if(type.equals("order")){
                                    List<Order2> all1=orderSession1.findAll();
                                    List<Message> all2=messageSession.findAll();
                                    List<Order2> n=new ArrayList<>();
                               int messages=all2.size();
                               int normal=0,archive2=0;
                               for(Order2 em:all1){
                                    switch (em.getType()) {
                                        case "archive":
                                               n.add(em);
                                               archive2++;
                                               System.out.print(n);
                                            break;
                                        case "normal":
                                               normal++;
                                            break;
                                           }
                               }
                               request.setAttribute("no_normal_order",normal);
                               request.setAttribute("no_archive_order",archive2);
                               request.setAttribute("allmessage",messages);
                               request.setAttribute("archive_order",n);
                               request.getRequestDispatcher("Archive_Order.jsp?password='"+employeeId1+"'").forward(request, response);
                               n.clear();
                       }
                       }
                       else if("file".equals(request.getParameter("from")))
                       {
                           String type=request.getParameter("for");
                            if(type.equals("file")){
                               List<Archivefile> a=archiveFileSession.findAll();
                               int allFile=a.size();
                               request.setAttribute("no_normal_order",allFile);
                               request.setAttribute("allFile",a);
                               request.getRequestDispatcher("ArchiveFile.jsp?password='"+employeeId1+"'").forward(request, response);
                       }
                    }
                               
                break;
                case "delete":
                            if(null != request.getParameter("from2"))switch (request.getParameter("from2")) {
                                case "normal_order":
                                    String types=request.getParameter("types");
                               if(types.equals("order_nfile")){
                                   if(action.equals("delete")&&permission.equals("none")){
                               List<Order2> all12=orderSession1.findAll();
                               List<Message> all23=messageSession.findAll();
                               List<Order2> n1=new ArrayList<>();
                               int messages1=all12.size();
                               int normal1=0,archive1=0;
                               for(Order2 em:all12){
                                    if(em.getType().equals("normal")){
                                        n1.add(em);
                                        normal1++;
                                        
                                    }
                                    else if(em.getType().equals("archive")){
                                        archive1++;
                                    }
                               }
                               request.setAttribute("no_normal_order",normal1);
                               request.setAttribute("no_archive_order",archive1);
                               request.setAttribute("allmessage",messages1);
                               request.setAttribute("normal_order",n1);
                               request.getRequestDispatcher("orderAdmin_dashbord.jsp?give=permition&&password='"+employeeId1+"'&&pass='"+id+"'").forward(request, response);
                               n1.clear();
                     }
                     else if(action.equals("delete")&&permission.equals("yes")){
                         int order_id=Integer.parseInt(id);
                         order=orderSession1.findById(order_id);
                         orderSession1.delete(order);
                               orderSession1.delete(order);
                               List<Order2> al=orderSession1.findAll();
                               List<Message> all=messageSession.findAll();
                               List<Order2> nl=new ArrayList<>();
                               int messagesl=al.size();
                               int normall=0,archivel=0;
                               for(Order2 em:al){
                                    if(em.getType().equals("normal")){
                                        nl.add(em);
                                        normall++;
                                        
                                    }
                                    else if(em.getType().equals("archive")){
                                        archivel++;
                                    }
                               }
                               request.setAttribute("no_normal_order",normall);
                               request.setAttribute("no_archive_order",archivel);
                               request.setAttribute("allmessage",messagesl);
                               request.setAttribute("normal_order",nl);
                               request.getRequestDispatcher("orderAdmin_dashbord.jsp?password='"+employeeId1+"'").forward(request, response);
                               nl.clear();
                              }
                     }
                                break;
                                case "archive_order": 
                                         String types2=request.getParameter("types");
                                                            if(types2.equals("archive_order")){
                                                                 if(action.equals("delete")&&permission.equals("none")){
                               List<Order2> all12=orderSession1.findAll();
                               List<Message> all23=messageSession.findAll();
                               List<Order2> n1=new ArrayList<>();
                               int messages1=all12.size();
                               int normal1=0,archive1=0;
                               for(Order2 em:all12){
                                    if(em.getType().equals("archive")){
                                        n1.add(em);
                                        archive1++;
                                        
                                        
                                    }
                                    else if(em.getType().equals("normal")){
                                        normal1++;
                                    }
                               }
                               request.setAttribute("no_normal_order",normal1);
                               request.setAttribute("no_archive_order",archive1);
                               request.setAttribute("allmessage",messages1);
                               request.setAttribute("archive_order",n1);
                               request.getRequestDispatcher("Archive_Order.jsp?give=permition&&password='"+employeeId1+"'&&pass='"+id+"'").forward(request, response);
                               n1.clear();
                }
                        else if(action.equals("delete")&&permission.equals("yes")){
                         int order_id=Integer.parseInt(id);
                         order=orderSession1.findById(order_id);
                         orderSession1.delete(order);
                               List<Order2> all12=orderSession1.findAll();
                               List<Message> all23=messageSession.findAll();
                               List<Order2> n1=new ArrayList<>();
                               int messages1=all12.size();
                               int normal1=0,archive1=0;
                               for(Order2 em:all12){
                                    if(em.getType().equals("archive")){
                                        n1.add(em);
                                        archive1++;
                                        
                                        
                                    }
                                    else if(em.getType().equals("normal")){
                                        normal1++;
                                    }
                               }
                               request.setAttribute("no_normal_order",normal1);
                               request.setAttribute("no_archive_order",archive1);
                               request.setAttribute("allmessage",messages1);
                               request.setAttribute("archive_order",n1);
                               request.getRequestDispatcher("Archive_Order.jsp?password='"+employeeId1+"'&&pass='"+id+"'").forward(request, response);
                               n1.clear();                                      
                        }
                  }
                                break;
                                case "archive_file":
                                          String typesl=request.getParameter("types");
                                          if(typesl.equals("archive_file")){
                                                      if(action.equals("delete")&&permission.equals("none")){
                                                      List<Archivefile> a=archiveFileSession.findAll();
                                                      int allFile=a.size();
                                                      request.setAttribute("no_normal_order",allFile);
                                                      request.setAttribute("allFile",a);
                                                      request.getRequestDispatcher("ArchiveFile.jsp?give=permition&&password='"+employeeId1+"'&&pass='"+id2+"'").forward(request, response);
                      }
                      else if(action.equals("delete")&&permission.equals("yes")){
                         int file_id=Integer.parseInt(id2);
                         archive=archiveFileSession.findById(file_id);
                         archiveFileSession.delete(archive);  
                               List<Archivefile> a=archiveFileSession.findAll();
                               int allFile=a.size();
                               request.setAttribute("no_normal_order",allFile);
                               request.setAttribute("allFile",a);
                               request.getRequestDispatcher("ArchiveFile.jsp?password='"+employeeId1+"'").forward(request, response);
                          }
                  }
                                break;
                            }
                break;
                case "view": 
                    if(null != request.getParameter("from3"))switch (request.getParameter("from3")) {
                          case "n_order":
                               List<Employee> emplo=new ArrayList<>();
                               List<Order2> all12=orderSession1.findAll();
                               List<Message> all23=messageSession.findAll();
                               List<Order2> n1=new ArrayList<>();
                               List<Order2> all=new ArrayList<>();
                               int messages1=all12.size();
                               int normal1=0,archive1=0;
                               String  employeeId="";
                               for(Order2 em:all12){
                                    if(em.getType().equals("normal")){
                                        all.add(em);
                                        normal1++;
                                         if(em.getOrderId().equals(Integer.parseInt(id))){
                                                n1.add(em);
                                                employee=em.getEmployeeId();
                                                emplo.add(employee);
                                         }
                                    }
                                    else if(em.getType().equals("archive")){
                                        archive1++;
                                    }
                               }
                               request.setAttribute("no_normal_order",normal1);
                               request.setAttribute("no_archive_order",archive1);
                               request.setAttribute("allmessage",messages1);
                               request.setAttribute("detail",emplo);
                               request.setAttribute("single_order",n1);
                               request.setAttribute("normal_order",all);
                               request.getRequestDispatcher("orderAdmin_dashbord.jsp?msg=view&&password='"+employeeId1+"'").forward(request, response);
                               n1.clear();
                               emplo.clear();
                               all.clear();
                          break;
                          case "a_order":
                               List<Employee> emplol=new ArrayList<>();
                               List<Order2> all12l=orderSession1.findAll();
                               List<Message> all23l=messageSession.findAll();
                               List<Order2> n1l=new ArrayList<>();
                               List<Order2> alll=new ArrayList<>();
                               int messages1l=all12l.size();
                               int normal1l=0,archive1l=0;
                               String  employeeIdl="";
                               for(Order2 em:all12l){
                                    if(em.getType().equals("archive")){
                                        alll.add(em);
                                        archive1l++;
                                         if(em.getOrderId().equals(Integer.parseInt(id))){
                                                n1l.add(em);
                                                employee=em.getEmployeeId();
                                                emplol.add(employee);
                                         }
                                    }
                                    else if(em.getType().equals("normal")){
                                        normal1l++;
                                    }
                               }
                               request.setAttribute("no_normal_order",normal1l);
                               request.setAttribute("no_archive_order",archive1l);
                               request.setAttribute("allmessage",messages1l);
                               request.setAttribute("detail",emplol);
                               request.setAttribute("single_order",n1l);
                               request.setAttribute("normal_order",alll);
                               request.getRequestDispatcher("orderAdmin_dashbord.jsp?msg=view&&password='"+employeeId1+"'").forward(request, response);
                               n1l.clear();
                               emplol.clear();
                               alll.clear();
                          break;
            }
                              
                break;
                case "archive_file":
                               List<Archivefile> a=archiveFileSession.findAll();
                               int allFile=a.size();
                               request.setAttribute("no_normal_order",allFile);
                               request.setAttribute("allFile",a);
                               request.getRequestDispatcher("ArchiveFile.jsp?password='"+employeeId1+"'").forward(request, response);
                             
                break;
                case "file_upload":
                            Part file=request.getPart("file");
                            String description=request.getParameter("description");
                            employee=employeeSession.findByPassword(employeeId1);
                            archive.setFilename(file.getSubmittedFileName());
                            archive.setFilesize(""+file.getSize()+" byte");
                            archive.setEmployeeId(employee);
                            archive.setDiscription(description);
                            if(archiveFileSession.save(archive)){
                               List<Archivefile> al=archiveFileSession.findAll();
                               int allFilel=al.size();
                               request.setAttribute("no_normal_order",allFilel);
                               request.setAttribute("allFile",al);
                               request.getRequestDispatcher("ArchiveFile.jsp?password='"+employeeId1+"'").forward(request, response);
                            String path="C:\\Users\\hp\\Documents\\NetBeansProjects\\INSA-CMS-Project1\\INSA-CMS-Project1-war\\web\\A_file\\"+file.getSubmittedFileName();
//                            save(file,path);
                            }
                            else{
                                 List<Archivefile> al=archiveFileSession.findAll();
                               int allFilel=al.size();
                               request.setAttribute("no_normal_order",allFilel);
                               request.setAttribute("allFile",al);
                               request.getRequestDispatcher("ArchiveFile.jsp?password='"+employeeId1+"'").forward(request, response);
                            }
                            break;
                    case "update_file":
                                   String fileId=request.getParameter("fileId");
                                   List<Archivefile> archiveFile=archiveFileSession.findById(fileId);
                                   List<Archivefile> singleFile=new ArrayList<>();
                                   for(Archivefile f:archiveFile){
                                       singleFile.add(f);
                                   }
                               request.setAttribute("file", singleFile);
                               int allF=archiveFile.size();
                               request.setAttribute("no_normal_order",allF);
                               request.setAttribute("allFile",archiveFile);
                               request.getRequestDispatcher("ArchiveFile.jsp?password='"+employeeId1+"'&&msg=display&&fileId='"+fileId+"'").forward(request, response);            
                          break;
                    case "yes":
                              int FILEID=Integer.parseInt(request.getParameter("FileId"));
                              Part file1=request.getPart("file1");
                              String description1=request.getParameter("description1");
                              employee=employeeSession.findByPassword(employeeId1);
                              archive=archiveFileSession.findById(FILEID);
                              archive.setFilename(file1.getSubmittedFileName());
                              archive.setFilesize(""+file1.getSize()+" byte");
                              archive.setEmployeeId(employee);
                              archive.setDiscription(description1);
                              if(archiveFileSession.updateing(archive)){
                            List<Archivefile> al11=archiveFileSession.findAll();
                            int allFilel1=al11.size();
                            request.setAttribute("no_normal_order",allFilel1);
                            request.setAttribute("allFile",al11);
                            request.getRequestDispatcher("ArchiveFile.jsp?password='"+employeeId1+"'").forward(request, response);
                            String path2="C:\\Users\\hp\\Documents\\NetBeansProjects\\INSA-CMS-Project1\\INSA-CMS-Project1-war\\web\\A_file\\"+file1.getSubmittedFileName();
                            save(file1,path2);
                            }
                              else{
                            List<Archivefile> al11=archiveFileSession.findAll();
                            int allFilel1=al11.size();
                            request.setAttribute("no_normal_order",allFilel1);
                            request.setAttribute("allFile",al11);
                            request.getRequestDispatcher("ArchiveFile.jsp?password='"+employeeId1+"'").forward(request, response);
                             }
                           break;
                          case "archive_order":
                               List<Order2> all1=orderSession1.findAll();
                               List<Message> all2=messageSession.findAll();
                               List<Order2> n=new ArrayList<>();
                               int messages=all2.size();
                               int normal=0,archive2=0;
                               for(Order2 em:all1){
                                    switch (em.getType()) {
                                        case "archive":
                                               n.add(em);
                                               archive2++;
                                               System.out.print(n);
                                            break;
                                        case "normal":
                                               normal++;
                                            break;
                                           }
                               }
                               request.setAttribute("no_normal_order",normal);
                               request.setAttribute("no_archive_order",archive2);
                               request.setAttribute("allmessage",messages);
                               request.setAttribute("archive_order",n);
                               request.getRequestDispatcher("Archive_Order.jsp?password='"+employeeId1+"'").forward(request, response);
                               n.clear();
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
