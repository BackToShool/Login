<%-- 
    Document   : user
    Created on : May 30, 2023, 3:37:56 PM
    Author     : vieth
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <body>
        <h1>User Information!</h1>
        <h2>
            <a href="MainController?action=LogOut">LogOut</a>
        </h2>
        <c:if test="${sessionScope.LOGIN_USER == null || sessionScope.LOGIN_USER.roleID ne 'US'}">
            <c:redirect url="login.html">
                
            </c:redirect>
        </c:if>
        USER ID: ${sessionScope.LOGIN_USER.userID}<br/>
        Full Name: ${sessionScope.LOGIN_USER.fullname}<br/>
        role ID: ${sessionScope.LOGIN_USER.roleID}<br/>
        Password: ${sessionScope.LOGIN_USER.password}

    </body>
</html>
