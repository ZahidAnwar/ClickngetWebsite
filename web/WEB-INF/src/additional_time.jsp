<%-- 
    Document   : additional_time
    Created on : Jul 31, 2016, 3:47:03 PM
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

        <div id="accept-options" name="accept-options">
            <table>
                <tr>
                    <td>
                        Additional time:
                    </td>


                </tr>

                <tr>

                    <td>
                            <input type="radio" name="additionaltime" value="2"> 2 minutes </br>
                            <input type="radio" name="additionaltime" value="3"> 3 minutes   </br>
                            <input type="radio" name="additionaltime" value="4"> 4 minutes </br>
                            <input type="radio" name="additionaltime" value="5"> 5 minutes
                        </br>
                    </td>
                </tr>
                
                <tr>
                    <td>Reason:</br>
                        <textarea name="additionaltimetext" rows="2" cols="20"> </textarea>
                    </td>
                </tr>

                <tr><td>
                        <input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </div>
    </body>
</html>
