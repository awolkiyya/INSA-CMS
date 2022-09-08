<%-- 
    Document   : logout
    Created on : Nov 3, 2021, 6:19:03 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
       <script language="JavaScript" type="text/javascript">
            window.history.forward(1);
        </script>
        
        <%
            response.setHeader("Cache-Control","no-cache");
            response.setHeader("Cache-Control","no-store");
            response.setHeader("Pragma","no-cache");
            response.setDateHeader ("Expires", 0);
            response.sendRedirect("http://localhost:8080/INSA-CMS-Project1-war/LoginPage.jsp?status=employee");
        %> 
    </head>
    <body onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">
    </body>
</html>
