

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page import="java.io.*,java.util.*,java.sql.*"%>
<%@page import="javax.servlet.http.*,javax.servlet.AsyncContext.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/micodigo.js" type="text/javascript"></script>
        <link href="css/miestilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ACCOUNTING</title>
    </head>
    <body>
        
        
    <sql:setDataSource 
        var="connection"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost/accounting"
        user="root" password=""
        />
    <sql:query var="result" dataSource="${connection}">
        SELECT number,name FROM accounts 
    </sql:query>
        <form method="get" id="frm1" action="verlist.jsp">
        <%@ include file="WEB-INF/jspf/banner.jspf" %><br>
        <select id="lstdep" name="lstdep" >
                        <c:forEach 
                var="values" 
                items="${result.rows}">
            <option value="${values.number}">${values.name}</option>
            </c:forEach>
        </select>
            <br><br>
            <input type="submit" value="Buscar">
            <input type="button" value="restablecer" onclick = "location='index.jsp'"/>
        </form>
        
        <div id="mensaje">
            
        </div>
       

    
    </body>
</html>
