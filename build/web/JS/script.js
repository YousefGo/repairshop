/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function AddNewFeedback() {

  
    if (IsMessage() & IsVaaildName()  & phonenumber() & IsVaaildEmail()  ) {
            

        return true;
    } else {
           

        return false;
    }
}
function IsVaaildName() { // vaild name sould englihs letter captial and small no digit no smbpl  , if ture return ture 
    // disapper style 
    var name = document.getElementById("errName");

    if (document.getElementById("name").value.search(/^[A-Za-z'\-\._ ]{3,}$/) !== 0) {
        // apper error message 

        name.display = "block";
        name.style.color = "red";

        name.style.fontSize = "14px";
        name.innerHTML = "* name must 3 char or more";

        return false;
    } else {
        name.innerHTML = "";
        name.display = "none";
        return true;
    }
}





function IsValidCoutry() { // vaild name sould englihs letter captial and small no digit no smbpl  , if ture return ture 
    // disapper style 
    var name = document.getElementById("errCountry");
    name.style.color = "red";
    name.display = "inline";
    if (document.getElementById("country").value === "none") {
        // apper error message 
        name.display = "block";
        name.style.fontSize = "14px";
        name.innerHTML = "* please select coutry";

        return false;
    } else {
        name.innerHTML = "";
        name.display = "none";
        return true;
    }
}


function phonenumber()
{
    var name = document.getElementById("errPhone");

    var inputtxt = document.getElementById("Phone");
    name.style.color = "red";
    name.display = "inline";
    var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
    if (inputtxt.value.match(phoneno))
    {
        name.innerHTML = "";
        name.display = "none";
        return true;
        return true;
    } else

    {
        name.display = "block";
        name.style.fontSize = "14px";
        name.innerHTML = "* please put number in right contaxt";

        return false;
    }
}


function IsVaaildEmail() { // valudite email useing regex 
    var emailErr = document.getElementById("errEmail");
    var t = document.getElementById("Email").value.search
            (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/) !== 0;
    if (t || isEmpty(document.getElementById("Email"))) {
        emailErr.style.color = "red";
        emailErr.display = "block";


        emailErr.innerHTML = "   * Email sould like this example@copmay.domain and not Empty ";

        return false;
    } else {


        emailErr.innerHTML = "";
        emailErr.display = "none";
        return true;

    }


}




function IsVaailSubjet() { // vaild name sould englihs letter captial and small no digit no smbpl  , if ture return ture 
    // disapper style 
    var name = document.getElementById("errSubject");

    if (document.getElementById("Subject").value.search(/^[A-Za-z'\-\._ ]{15,}$/) !== 0) {
        // apper error message 

        name.display = "block";
        name.style.color = "red";

        name.style.fontSize = "14px";
        name.innerHTML = "*  explain your Subject more then 15 char ";

        return false;
    } else {
        name.innerHTML = "";
        name.display = "none";
        return true;
    }
}

function IsValidType() { // vaild name sould englihs letter captial and small no digit no smbpl  , if ture return ture 
    // disapper style 
    var name = document.getElementById("errType");
    name.style.color = "red";
    name.display = "inline";
    if (document.getElementById("Type").value === "none")
    {
        // apper error message 
        name.display = "block";
        name.style.fontSize = "14px";
        name.innerHTML = "* please select Type of Message";

        return false;
    } else {
        name.innerHTML = "";
        name.display = "none";
        return true;
    }
}


function IsMessage() { // vaild name sould englihs letter captial and small no digit no smbpl  , if ture return ture 
    // disapper style 

    var name = document.getElementById("errMessage");

    if (document.getElementById("Message").value.search(/^[A-Za-z'\-\._ ]{10,}$/) !== 0) {
        // apper error message 

        name.display = "block";
        name.style.color = "red";

        name.style.fontSize = "14px";
        name.innerHTML = "*  explain your Subject more then in more deatils ";

        return false;
    } else {
        name.innerHTML = "";
        name.display = "none";
        return true;

    }
}











function addNewRepiarRequset() {

  
    if (IsVaaildName2()&IsVaaildserlNumber()&IsVailedModel()&IsValidDeviesType() &IsvaildProblmes() &IsVaileddescprtion()  )
    
    {
        return true;
    } else {
        return false;
    }
}


function IsVaaildName2() { // vaild name sould englihs letter captial and small no digit no smbpl  , if ture return ture 
    // disapper style 
    var name = document.getElementById("errcomputerOwner");

    if (document.getElementById("computerOwner").value.search(/^[A-Za-z'\-\._ ]{3,}$/) !== 0) {
        // apper error message 

        name.display = "block";
        name.style.color = "red";

        name.style.fontSize = "14px";
        name.innerHTML = "* name must not null ";

        return false;
    } else {
        name.innerHTML = "";
        name.display = "none";
        return true;
    }
}
// ComputerSerialNumber

function IsVaaildserlNumber() { // vaild name sould englihs letter captial and small no digit no smbpl  , if ture return ture 
    // disapper style 
    var name = document.getElementById("errComputerSerialNumber");
    var ser = document.getElementById("ComputerSerialNumber").value;

    if (ser.length < 2) {
        // apper error message 
        name.display = "block";
        name.style.color = "red";

        name.style.fontSize = "14px";
        name.innerHTML = "* serail number must not null  ";

        return false;
    } else {
        name.innerHTML = "";
        name.display = "none";
        return true;
    }
}





function IsVailedModel() { // vaild name sould englihs letter captial and small no digit no smbpl  , if ture return ture 
    // disapper style 
    var name = document.getElementById("errModel");
    var ser = document.getElementById("model").value;

    if (ser.length < 2) {
        // apper error message 
        name.display = "block";
        name.style.color = "red";

        name.style.fontSize = "14px";
        name.innerHTML = "* Please Choice model or input manlly  ";

        return false;
    } else {
        name.innerHTML = "";
        name.display = "none";
        return true;
    }
}

function isEmpty(a) {
    if (a.length === 0) {

        return true;
    } else {
        return false;
    }
}

function IsValidDeviesType() { // vaild name sould englihs letter captial and small no digit no smbpl  , if ture return ture 
    // disapper style 
    var name = document.getElementById("errType");
    name.style.color = "red";
    name.display = "inline";
    if (document.getElementById("type").value === "none") {
        // apper error message 
        name.display = "block";
        name.style.fontSize = "14px";
        name.innerHTML = "* please select Type of deveces";

        return false;
    } else {
        name.innerHTML = "";
        name.display = "none";
        return true;
    }
}

function IsVailedSize() { // vaild name sould englihs letter captial and small no digit no smbpl  , if ture return ture 
    // disapper style 
    var name = document.getElementById("errHardDisk");
    var ser = document.getElementById("hardDiskGB").value;
    //    /^[1-9]\d*$/g 


    if (!isNaN(ser) || ser < 1)
    {
        // apper error message 

        name.display = "block";
        name.style.color = "red";

        name.style.fontSize = "14px";
        name.innerHTML = "* Please Enter the size of your hard drive   ";

        return false;
    } else {

        name.innerHTML = "";
        name.display = "none";
        return true;
    }
}

function IsVailedSize2() { // vaild name sould englihs letter captial and small no digit no smbpl  , if ture return ture 
    // disapper style 
    var name = document.getElementById("errMemory");
    var ser = document.getElementById("memGB").value;
    //    


    if ( ser < 1)
    {
        // apper error message 

        name.display = "block";
        name.style.color = "red";

        name.style.fontSize = "14px";
        name.innerHTML = "* Please Enter the size of your Meory     ";

        return false;
    } else {

        name.innerHTML = "";
        name.display = "none";
        return true;
    }
}





function IsvaildProblmes() {
    var name = document.getElementById("errType");
    name.style.color = "red";
    name.display = "inline";
    if (document.getElementById("type").value === "none") {
        // apper error message 
        name.display = "block";
        name.style.fontSize = "14px";
        name.innerHTML = "* please select Type of deveces";

        return false;
    } else {
        name.innerHTML = "";
        name.display = "none";
        return true;
    }
}

function IsVaileddescprtion() { // vaild name sould englihs letter captial and small no digit no smbpl  , if ture return ture 
    // disapper style 
    var name = document.getElementById("errProblems");
    var ser = document.getElementById("Problems").value;
    //    /^[1-9]\d*$/g 


    if (ser.length < 20)
    {
        // apper error message 

        name.display = "block";
        name.style.color = "red";

        name.style.fontSize = "14px";
        name.innerHTML = "* please add details of Problmes descprtion  ";

        return false;
    } else {

        name.innerHTML = "";
        name.display = "none";
        return true;
    }

}


function IsVailedPrice() { // vaild name sould englihs letter captial and small no digit no smbpl  , if ture return ture 
    // disapper style 
    var name = document.getElementById("errRepairCost");
    var ser = document.getElementById("RepairCost").value;
    //    /^[1-9]\d*$/g 


    if ( ser < 1)
    {
        // apper error message 

        name.display = "block";
        name.style.color = "red";

        name.style.fontSize = "14px";
        name.innerHTML = "* Please Enter the vaild amount cost   ";

        return false;
    } else {

        name.innerHTML = "";
        name.display = "none";
        return true;
    }
}

 function login(){
     if (username() & password()){
         return true; 
     }else {
         return false;
     }

    }
    function username(){
        var emailErr = document.getElementById("errEmailAdd");

        var t = document.getElementById("email").value.search
        (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/) !== 0;
        if (t || isEmpty(document.getElementById("email"))) {
            emailErr.style.color = "red";

            emailErr.display = "block";

           
            emailErr.innerHTML = "   * Please Enter vaild email ";
    
            return false;}
             else {
    
    
            emailErr.innerHTML = "";
            emailErr.display = "none";

            return true;
    
        }
    }
function password() {
    var emailErr = document.getElementById("errpassword");

    if (document.getElementById('password').value.length<6 || isEmpty(document.getElementById("password"))) {
        emailErr.style.color = "red";

        emailErr.display = "block";


        emailErr.innerHTML = "   * Please enter password more then 6  char  ";

        return false;
    } else {


        emailErr.innerHTML = "";
        emailErr.display = "none";

        return true;

    }
}


function reg() {
    if(repass1()&username2() &isemail() & isphone() &pass1()){
      return true; 
    }
else {
    return false; 
}

}
function username2() {
    var emailErr = document.getElementById("errfullName");

    if (document.getElementById('fullName').value.length<3) {
        emailErr.style.color = "red";

        emailErr.display = "block";


        emailErr.innerHTML = "   * Please enter username  ";

        return false;
    } else {


        emailErr.innerHTML = "";
        emailErr.display = "none";

        return true;

    }
}

function isemail(){
    var emailErr = document.getElementById("errEmailAdd1");

    var t = document.getElementById("emailtest").value.search
    (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/) !== 0;
    if (t || isEmpty(document.getElementById("emailtest"))) {
        emailErr.style.color = "red";

        emailErr.display = "block";

       
        emailErr.innerHTML = "   * Please Enter vaild email ";

        return false;}
         else {


        emailErr.innerHTML = "";
        emailErr.display = "none";

        return true;

    }
}
function isphone() {
    var name = document.getElementById("phoneerr");
    
    var inputtxt = document.getElementById("phone1");
    name.style.color = "red";
    name.display = "inline";
  var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
  if(inputtxt.value.match(phoneno))
        {
            name.innerHTML = "";
            name.display = "none";
            return true;
      return true;
        }
      else
        
      {
        name.display = "block";
        name.style.fontSize="14px";
        name.innerHTML = "* please put number in right contaxt";

        return false;
        }
}
 function pass1() {
    var emailErr = document.getElementById("errpassword1");

    if (document.getElementById('password1').value.length<6 || isEmpty(document.getElementById("password1"))) {
        emailErr.style.color = "red";

        emailErr.display = "block";


        emailErr.innerHTML = "   * Please enter password more then 6  char  ";

        return false;
    } else {


        emailErr.innerHTML = "";
        emailErr.display = "none";

        return true;

    }   
 }

 function repass1() {
    var emailErr = document.getElementById("errrepassword2");
    
    if (document.getElementById('password1').value !== document.getElementById("repassword").value
    ||isEmpty( document.getElementById("repassword").value)) {
        emailErr.style.color = "red";

        emailErr.display = "block";


        emailErr.innerHTML = "   password and confirme is not same   ";

        return false;
    } else {


        emailErr.innerHTML = "";
        emailErr.display = "none";

        return true;

    }    
 }



    