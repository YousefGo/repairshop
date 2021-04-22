<%-- 
    Document   : header.jsp
    Created on : Apr 17, 2021, 3:47:34 PM
    Author     : mobai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <body>
        <header class="header">
            <img src="./image/Logo/logo_transparent.png" alt="logo" class="logo">
            <div class="login_sec">
    <% if (session.getAttribute("email") == null) { %>
                <a href="login.jsp" class="btn log">Login</a>

    <% } else { %>

        <a class="btn log" href="logout">logout</a>


    <% }%>
            </div>

        </header>
