<%-- 
    Document   : admin
    Created on : May 30, 2023, 3:27:48 PM
    Author     : vieth
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page import="sample.user.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>

        <c:if test="${sessionScope.LOGIN_USER == null or sessionScope.LOGIN_USER.roleID != 'AD'}">
            <c:redirect url="login.html" ></c:redirect>
        </c:if>

        <c:url var="LogoutLink" value="MainController">
            <c:param name="action" value="logOut">
            </c:param>
        </c:url>
        <br/><a href="${LogoutLink}">Log Out JSTL</a>
        <br/>Welcome:${sessionScope.LOGIN_USER.userID} 

        <form action="MainController">
            Search <input type="text" name="Search" value="${param.search}" placeholder=""/>
            <input type="submit" name="action" value="Search"/>
        </form>

        <c:if test="${requestScope.LIST_USER != null}">
            <c:if test="${not empty requestScope.LIST_USER}">
                <table border="1">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>User ID</th>
                            <th>Full Name</th>
                            <th>Role ID</th>
                            <th>Password</th>
                            <th>Delete</th>
                            <th>Update</th>

                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="user" items="${requestScope.LIST_USER}" varStatus="counter">
                        <form action="MainController" method="POST">
                            <tr>
                                <td>${counter.count}</td>
                                <td>${user.userID}</td>
                                <td> 
                                    <input type="text" name="fullName" value="${user.fullname}" />
                                </td>
                                <td>
                                    <input type="text" name="roleID" value="${user.roleID}" />
                                </td>
                                <td>${user.password}</td>
                                <!--Delete-->
                                <td>
                                    <c:url var="Delete" value="MainController">
                                        <c:param name="action" value="Delete"></c:param>
                                        <c:param name="userID" value="${user.userID}"></c:param>
                                        <c:param name="Search" value="${param.search}"></c:param>
                                    </c:url>
                                    <a href="${Delete}">Delete</a>
                                </td>
                                <!--Update-->
                                <td>
                                    <input type="submit" value="Update" name="action" />
                                    <input type="hidden" name="userID" value="${user.userID}" />
                                    <input type="hidden" name="Search" value="${param.search}" />
                                </td>


                            </tr>
                        </form>

                    </c:forEach>

                </tbody>
            </table>
                ${requestScope.ERROR}

        </c:if>

    </c:if>
</body>
</html>
