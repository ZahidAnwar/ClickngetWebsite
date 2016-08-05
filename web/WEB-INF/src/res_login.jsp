<%-- 
    Document   : res_login
    Created on : Jul 31, 2016, 6:29:38 PM
    Author     : Zahid Anwar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <form name="restaurantLogin" method="post" id="restaurantLogin" action="${pageContext.request.contextPath}/RestaurantLoginSubmit">

            Please enter your reference key:
            <input name="reference" id="reference"/></br></br>
            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>
