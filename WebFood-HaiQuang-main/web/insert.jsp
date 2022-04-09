<%-- 
    Document   : insert
    Created on : Oct 10, 2021, 2:52:56 PM
    Author     : HaiQuang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Insert Product</h1>
        <form action="MainController" method="POST">
            Product ID : <input type="text" name="txtProductID" value="${param.txtProductID}">
            <font color="red">
            ${requestScope.ERROR.productIDError}
            </font>
            </br>
            Product Name: <input type="text" name="txtProductName" value="${param.txtProductName}">
            <font color="red">
            ${requestScope.ERROR.nameError}
            </font>
            </br>
            Price: <input type="text" name="txtPrice" value="${param.txtPrice}">
            <font color="red">
            ${requestScope.ERROR.priceError}
            </font>
            </br>
            Quantity: <input type="text" name="txtQuantity" value="${param.txtQuantity}">
            <font color="red">
            ${requestScope.ERROR.quantityError}
            </font>
            </br>
<!--            Category ID: <input type="text" name="txtCategoryID" value="${param.txtCategoryID}">
            <font color="red">
            ${requestScope.ERROR.categoryIDError}
            </font>-->
            Category ID: <select name="listCategoryID">
                <option value="CA01">Vegetable</option>
                <option value="CA02">Fruit</option>
                <option value="CA03">Meats</option>
                <option value="CA04">Dipping sauce</option>
                <option value="CA05">Spice</option>
            </select>
            </br>
            <input type="submit" name="action" value="Insert">
        </form>
    </body>
</html>
