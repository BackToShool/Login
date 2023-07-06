<%-- 
    Document   : view
    Created on : Jun 16, 2023, 4:15:55 PM
    Author     : vieth
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.shopping.Clothes"%>
<%@page import="sample.shopping.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bạn chọn những sản phẩm </h1>

        <c:if test="${sessionScope.CART != null}" >
            <table border="1">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Edit</th>
                        <th>Remove</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="items" varStatus="counter" items="${sessionScope.CART.cart}">
                    <form action="MainController" method="POST">
                        <tr>
                            <td>${counter.count}</td>
                            <td>
                                <input type="hidden" name="id" value="${items.value.id}" />
                            </td>
                            <td>${items.value.name}</td>
                            <td>${items.value.price}</td>
                            <td>
                                <input type="number" name="quantity" value="${items.value.quantity}" />
                            </td>
                            <td>
                                <input type="submit" value="Edit" name="action" />
                            </td>
                            <td>
                                <input type="submit" value="Remove" name="action" />
                            </td>

                            <td>${items.value.quantity * items.value.price}</td>
                        </tr>
                    </form>
                    <c:set var="total" value="${total + items.value.quantity * items.value.price}"/>


                </c:forEach>

            </tbody>
        </table>

        <h2>Total: ${total}</h2>
    </c:if>
    <%--
    <%
        Cart cart = (Cart) session.getAttribute("CART");
        if (cart != null) {
            if (cart.getCart().size() > 0) {
    %>
    <table border="1">
        <thead>
            <tr>
                <th>No</th>
                <th>ID</th>
                <th>name</th>
                <th>Price</th>
                <th>quantity</th>
                <th>edit</th>
                <th>remove</th>
                <th>Total</th>
            </tr>
        </thead>
        <tbody>
            <%
                int count = 1;
                double total = 0;
                for (Clothes clothes : cart.getCart().values()) {
                    total += clothes.getQuantity() * clothes.getPrice();
            %>
        <form action="MainController" method="POST">
            <tr>
                <td><%= count++%></td>
                <td>
                    <input type="text" name="ID" value="<%= clothes.getId()%>" readonly="" />
                </td>

                    <td><%= clothes.getName()%></td>
                    <td><%= clothes.getPrice()%></td>
                    <td>
                        <input type="number" name="quantity" value="<%= clothes.getQuantity() %>" min="1" required="" />
                    </td>
                   
                    <td>
                        <input type="submit" value="Edit" name="action" />
                    </td>
                    <td>
                        <input type="submit" value="Remove" name="action" />
                    </td>
                    <td><%= clothes.getQuantity() * clothes.getPrice()%></td>
                </tr>
            </form>
            <%
                }
            %>

        </tbody>
    </table>
    <h1>
        Total: <%= total%>
    </h1>
    <%
            }
        }
    %>
        
    --%>
    <a href="shopping.html">Add More</a>
</body>
</html>
