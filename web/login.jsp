<%-- 
    Document   : login.jsp
    Created on : Apr 17, 2021, 3:43:40 PM
    Author     : mobai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css">
   
        <title>Login </title>
            <script  src="JS/script.js"> </script>

    </head>
<jsp:include page="header.jsp" />
   
   <jsp:include page="nav.jsp" />
    <body>
  
    <section class="formcontaier">
        <h1 class="ads1 center on">Login

        </h1>
        <div class="form">
            <form action="login" method="post" onsubmit=" return login()">
             


                <div>
                    <div class="in">
                        <label for=""> email</label>
                        <span id="errEmailAdd"></span>
                    </div>
                    <input type="text" placeholder="Please Enter your Email " name="email"
                        id="email" class="input">
                </div>
                 <div>
                <div class="in">
                    <label for=""> password</label>
                    <span id="errpassword"></span>
                </div>
                <input type="password" placeholder="Please Enter your Password " name="password"
                    id="password" class="input">
                   </div>
                         
                       <button type="submit" class="btn send">Login </button>
                <a href="register.jsp" class="reg"> create account</a>

                </from>

        
    </section>
           <jsp:include page="footer.jsp" />

    </body>
</html>
