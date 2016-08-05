<%-- 
    Document   : driver
    Created on : Jul 31, 2016, 2:31:11 PM
    Author     : Zahid Anwar
--%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>


        <script type="text/javascript" src="<s:url value="/js/lib/prototype17.js"/>"></script>
        <script type="text/javascript" src="<s:url value="/js/lib/ajax_helper_1.js"/>"></script>

        <title>JSP Page</title>
    </head>
    <body>
        <h3>Pickup information</h3>

        <div>

            ${deliveryDetails}
            2 Broadway</br>
            Loughborough</br>
            LE11 2JF</br>
        </div>

        <table>
            <tr><td>
                    <input type="submit" value="Accept" onclick="return accepted();"/>
                </td>
                <td><input type="submit" value="Decline" onclick="return declined();"/></td>
            </tr>

            <tr>
            <div id="accept-options" name="accept-options">
                <table>
                    <tr>
                        <td>
                            Required time:
                        </td>


                    </tr>

                    <tr>

                        <td>
                            <form action="">
                                <input type="radio" name="gender" value="five"> 5 minutes </br>
                                <input type="radio" name="gender" value="ten"> 10 minutes   </br>
                                <input type="radio" name="gender" value="fifteen"> 15 minutes
                            </form>
                            </br>
                        </td>
                    </tr>

                    <tr><td>
                            <input type="submit" value="Submit"/></td>
                    </tr>
                </table>
            </div>
        </table> 
    </body>

    <script type="text/javascript">

        function accepted() {
            //alert('accepted');
            $('accept-options').show();
            alert('show');

        }
        function declined() {

            $('accept-options').hide();
            alert('hide');

        }



    </script>
</html>
