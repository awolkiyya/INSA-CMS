package Controler;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Douwnload extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String filename=request.getParameter("filename");
          String filePath = "C:/Users/hp/Documents/NetBeansProjects/INSA-CMS-Project1/INSA-CMS-Project1-war/web/file/"+filename;
        File downloadFile = new File(filePath);
        OutputStream outStream;
        // if you want to use a relative path to context root:
        try (FileInputStream inStream = new FileInputStream(downloadFile)) {
           
            // obtains ServletContext
            ServletContext context = getServletContext();
            // gets MIME type of the file
            String mimeType = context.getMimeType(filePath);
            if (mimeType == null) {
                // set to binary type if MIME mapping not found
                mimeType = "application/octet-stream";
        }   
        // forces download
        response.setContentType(mimeType);
        response.setContentLength((int)downloadFile.length());
        response.setHeader("Content-Disposition","attachment;filename=\""+filename+"\"");
             try ( // obtains response's output stream
                     PrintWriter out = response.getWriter()) {
                 int i;
                 while ((i=inStream.read()) != -1) {
                     out.write(i);
                 }
                 inStream.close();
                 out.close();   
             }
        }
       
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
