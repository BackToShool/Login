<%-- 
    Document   : shopping
    Created on : Jun 16, 2023, 4:11:38 PM
    Author     : vieth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Page</title>
    </head>
    <body>
        <h1>Welcome to my Shop</h1>
        <form action="MainController" method="POST">
            <select name ="cmbClothes">
                <option value="C01-T_shirt-150">T_shirt-150$</option>
                <option value="C02-Pain-300">Pain-300$</option>
                <option value="C03-Bubble Dress-400">Bubble Dress-400$</option>
                <option value="C04-Fashion Hat-200">Fashion Hat-200$</option>
            </select>
            <select name ="cmbQuantity">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="10">10</option>
                
            </select>
            <input type="submit" value="Add" name="action" />
            <input type="submit" value="View" name="action" />
        </form>
        
        ${requestScope.MESSAGE}
    </body>
</html>
