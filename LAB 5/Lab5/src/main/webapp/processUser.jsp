<%-- 
    Document   : processUser
    Created on : 16 May 2024, 12:07:45 am
    Author     : ARIF HAIKAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Information</title>
    </head>
    <body>
       <h2>Retrieve info using c:param & display it using c:out</h2>
    
        <%
            String name = request.getParameter("name");
            String surname = request.getParameter("surname");
            String password = request.getParameter("password");
            String gender = request.getParameter("gender");
            String userType = request.getParameter("userType");
            String preferLanguage = request.getParameter("preferLanguage");
        %>

        <p style="color: #B469FF;"><b>First Name:</b> <%= name %></p>
        <p style="color: #B469FF;"><b>Surname:</b> <%= surname %></p>
        <p style="color: #B469FF;"><b>Password:</b> <%= password %></p>
        <p style="color: #B469FF;"><b>Gender:</b> <%= gender %></p>
        <p style="color: #B469FF;"><b>Type of user:</b> <%= userType %></p>
        <p style="color: #B469FF;"><b>Prefer Language:</b> <%= preferLanguage %></p>

    </body>
</html>