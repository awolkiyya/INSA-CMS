package Controler;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@MultipartConfig()
public class Order_Controler1 extends HttpServlet {
    private InputStream in;
    private FileOutputStream ot;
    private byte[] fileSize; 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           String password=request.getParameter("password");
           String date=request.getParameter("date");
           DateFormat df=new SimpleDateFormat("dd/MM/yy");
           Date date1=new Date();
           date1=df.parse(df.format(date1));
           out.print(date1);
           int pageNumber=Integer.parseInt(request.getParameter("page"));
           String deliveredby=request.getParameter("deliverey");
           Part part=request.getPart("file");
           //order.setDelivaryDate(date1);
//           order.setDeliverdBy(deliveredby);
//           order.setPageNumber(pageNumber);
//           order.setRequestDate(date1);
           
//           order.setDeliverdBy(delivered_by);
//           order.setPageNumber(pageNumber);
             saveSender(password,out);
             save(part.getSubmittedFileName(),part.getSize());
             String path="C:\\Users\\hp\\Documents\\NetBeansProjects\\INSA-CMS-Project1\\INSA-CMS-Project1-war\\web\\file\\"+part.getSubmittedFileName();
             byte[] s=sendFile(part,path);

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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(Order_Controler1.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(Order_Controler1.class.getName()).log(Level.SEVERE, null, ex);
        }
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
    private void save(String submittedFileName, long size) {
        int fileSize=(int)size;
//        file.setFileName(submittedFileName);
//        file.setFileSize(fileSize);
//        order.addUpload(file);
    }
    private byte[] sendFile(Part part, String path) throws IOException {
        in=part.getInputStream();
        fileSize=new byte[in.available()];
        ot=new FileOutputStream(path);
        in.read(fileSize);
        ot.write(fileSize,0,fileSize.length);
        ot.flush();
        ot.close();
        return fileSize;
    }

    private void saveSender(String password, PrintWriter out) {
        StringBuilder decripted=new StringBuilder();
              char a;
                for(int i=1;i<password.length()-1;i++){
                a=password.charAt(i);
//              out.print(a+"<br/>");
                decripted.append(a);
                }
            String id=String.valueOf(decripted);
//            employee=employee_session.findByPassword(id);
//            order.setEmployee(employee);
//            out.print("saved the sender clearly="+employee);
//            orderSession.saveOrder(order);
    }


}
