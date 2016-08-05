<%-- 
    Document   : res
    Created on : Jul 31, 2016, 1:38:13 PM
    Author     : Zahid Anwar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Restaurant</title>
    </head>
    <body>
        <h3>Add delivery details</h3>

        <form name="orderSubmit" method="post" id="orderSubmit" action="${pageContext.request.contextPath}/OrderSubmit">

            <table style="width:40%">
                <tr>
                    <td>Address</td>
                    <td><input name="address" id="address"/></td>
                </tr>
                <tr>
                    <td>Town</td>
                    <td><input name="town" id="town"/></td>
                </tr>
                <tr>
                    <td>Postcode</td>
                    <td><input name="postcode" id="postcode"/></td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td><input name="phone" id="phone"></td>
                </tr>

                <tr>
                    <td>Payment status</td>
                    <td>
                        <input type="radio" name="paymentOption" id="paymentOption1" value="paid"> Paid<br>
                        <input type="radio" name="paymentOption" id="paymentOption2" value="unpaid"> Unpaid <input type="text" name="acount" value="£"/><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Submit"/>
                    </td>
                </tr>
            </table> 

        </form>

    </body>
</html>
