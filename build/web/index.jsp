<%-- 
    Document   : newjsp
    Created on : Apr 17, 2021, 3:35:38 PM
    Author     : mobai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
  
    <title>Index </title>
</head>

<body>
   <jsp:include page="header.jsp" />
   <jsp:include page="nav.jsp" />

    <section class="section1">
        <h1 class="ads">Repari Your computer easily</h1>
           
        <a href="" class="btn reapritBtn">Repair now</a>
    </section>
    <hr class="hrm">

    <section class="serveceis">
        <h1 class="ads1">Our Servies</h1>
        <div class="sfotware ser right">
            <h1 class="center">Software serveis</h1>
            <ul class="ser-menu">
                <li>format computer & install opreating System </li>
                <li>Activate Windows and Microsoft office Apps</li>
                <li>Data recovery & Data Restore </li>
                <li>Install anti-virus programs & renew Subscribtion </li>
                <li>Update All Computer driver</li>
                <li>update programms </li>
                <li>Check viues</li>
                <li>other etc..</li>

            </ul>
        </div>
        <div class="hardware ser leftt">
            <h1  class="center">Hardware serveis</h1>
            <ul class="ser-menu">
                <li>Repair & replace defective parts</li>

                <li>Replace HDD By SSD </li>
                <li>Replace RAM Memery </li>
                <li>Chargers repair</li>
                <li>Clone HDD to SDD </li>
                <li>Clone HDD to SDD </li>
                <li>Laptop screen replacement </li>
                <li>other etc..</li>
            </ul>
        </div>
    </section>
   <hr>
    <section class="supporting">
        <h1 class="center ads1"> We Support manufacturers company</h1>
        <div class="company">
            <a href=""class="im"><img src="./image/company/apple.png" alt=""></a>
            <a href=""class="im"><img src="./image/company/dell.png" alt=""></a>
            <a href="" class="im bottm"><img src="./image/company/hp.png" alt=""></a>
            <a href="" class="im bottm"><img src="./image/company/lenovo.png" alt=""></a>
        </div>
   

    </section>
    <section class="achve">
        <div class="numbers">
            <div class="info">
                <h1 class="center" >Repair</h1>

                <h1  class="center" >+1250</h1>

            </div>
        
            <img src="./image/computer.png" class="comimg" alt="">

        </div>
     
    </section>
   <jsp:include page="footer.jsp" />

</body>

</html>
