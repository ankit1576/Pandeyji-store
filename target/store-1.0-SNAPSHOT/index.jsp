<%-- 
    Document   : index
    Created on : 24-Mar-2024, 9:46:13 pm
    Author     : rajan
--%>

<%@page import="com.learn.mycart.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PandeyJi-Store</title>
        <%@include file="Components/common_css_js.jsp"%>
    </head>
    <body>
        <%@include file="Components/navbar.jsp" %>
        <h1>Hello World!</h1>
        <h1>Creating Factory session object</h1>
        <%
            out.println(FactoryProvider.getFactory() + "<br>");
            out.println(FactoryProvider.getFactory() + "<br>");
            out.println(FactoryProvider.getFactory());
        %>
    </body>
</html>
