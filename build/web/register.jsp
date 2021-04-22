<%-- 
    Document   : register.jsp
    Created on : Apr 17, 2021, 5:27:03 PM
    Author     : mobai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
            <script  src="JS/script.js"> </script>

    <title>sing in </title>
</head>
   <jsp:include page="header.jsp" />
   
   <jsp:include page="nav.jsp" />
<body>
    <section class="formcontaier">
        <h1 class="ads1 center on">Create Account

        </h1>
        <div class="form">
            <form action="register" method="post" onsubmit=" return reg();">
                <div>
                    <div class="in">
                        <label for="">fullname</label>
                        <span id="errfullName"></span>

                    </div>
                    <input type="text" placeholder="Please Enter your fullname   " name="fullName" id="fullName"
                        class="input">
                </div>


                <div>
                    <div class="in">
                        <label for=""> email</label>
                        <span id="errEmailAdd1"></span>
                    </div>
                    <input type="text" placeholder="Please Enter your Email " name="emmailAdd1"
                        id="emailtest" class="input">
                </div>

                
                <div>
                    <div class="in">
                        <label for=""> phone</label>
                        <span id="phoneerr"></span>
                    </div>
                    <input type="text" placeholder="Please Enter your Email " name="phone1"
                        id="phone1" class="input">
                </div>


                 <div>
                <div class="in">
                    <label for=""> password</label>
                    <span id="errpassword1"></span>
                </div>
                <input type="password" placeholder="Please Enter your passwordr " name="password1"
                    id="password1" class="input">
                   </div>
                         
                   <div>
                    <div class="in">
                        <label for=""> Re-password</label>
                        <span id="errrepassword2"></span>
                    </div>
                    <input type="password" placeholder="Confime your password " name="repassword"
                        id="repassword" class="input">
                       </div>
                       <button type="submit" class="btn send">Send</button>

                </from>

        
    </section>


   <jsp:include page="footer.jsp" />

</body>
</html>
