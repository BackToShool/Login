<%-- 
    Document   : create
    Created on : Jun 9, 2023, 3:30:59 PM
    Author     : vieth
--%>

<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Page</title>
    </head>
    <body>
        Create new User
        <%
            UserError userError = (UserError) request.getAttribute("USER_ERROR");
            if (userError == null) 
                userError = new UserError();
        %>
        <form action="MainController" method="POST">
            User ID : ${requestScope.USER_ERROR.userIDError};
            <br/>Full Name ${requestScope.USER_ERROR.fullnameError};
            <br/>Role ID ${requestScope.USER_ERROR.roleIDError};
            <br/>Password ${requestScope.USER_ERROR.PasswordError};
            <br/>Confirm ${requestScope.USER_ERROR.Confirm};
            <br/><input type="submit" value="Create" name="action" /><br/>
            <input type="reset" value="reset" />
            <%= userError.getError() %>
        </form>
    </body>
</html>
