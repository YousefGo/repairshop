/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 function AddNewFeedback (){
 


if( IsMessage()& IsVaaildName()&IsValidCoutry()&phonenumber &IsVaaildEmail() &IsVaailSubjet() &IsValidType()&phonenumber() ){
    return true ; 
}
else{
    return false;
 }

 function IsVaaildName() { // vaild name sould englihs letter captial and small no digit no smbpl  , if ture return ture 
    // disapper style 
    var name = document.getElementById("errName");
   
    if (document.getElementById("name").value.search(/^[A-Za-z'\-\._ ]{3,}$/) != 0) {
        // apper error message 

        name.display = "block";
        name.style.color = "red";

        name.style.fontSize="14px"
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
    if (document.getElementById("country").value=="none") {
        // apper error message 
        name.display = "block";
        name.style.fontSize="14px"
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
        name.style.fontSize="14px"
        name.innerHTML = "* please put number in right contaxt";

        return false;
        }
}


function IsVaaildEmail() { // valudite email useing regex 
    var emailErr = document.getElementById("errEmail");
    var t = document.getElementById("Email").value.search(/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/) != 0;
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

Subject


function IsVaailSubjet() { // vaild name sould englihs letter captial and small no digit no smbpl  , if ture return ture 
    // disapper style 
    var name = document.getElementById("errSubject");
   
    if (document.getElementById("Subject").value.search(/^[A-Za-z'\-\._ ]{15,}$/) != 0) {
        // apper error message 

        name.display = "block";
        name.style.color = "red";

        name.style.fontSize="14px"
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
    if (  document.getElementById("Type").value=="none")
    {
        // apper error message 
        name.display = "block";
        name.style.fontSize="14px"
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
   
    if (document.getElementById("Message").value.search(/^[A-Za-z'\-\._ ]{15,}$/) != 0) {
        // apper error message 

        name.display = "block";
        name.style.color = "red";

        name.style.fontSize="14px"
        name.innerHTML = "*  explain your Subject more then in more deatils ";

        return false;
    } else {
        name.innerHTML = "";
        name.display = "none";
        return true;
  
    }
}}






function addNewRepiarRequset (){
    
    
    if( IsVailedPrice()&IsVaaildName2()&IsVaaildserlNumber()&IsVailedModel&IsValidDeviesType()
    &IsVailedSize()&IsvaildProblmes()&IsVaileddescprtion()&IsVailedModel())
    {
        return true; 
    }else {
        return false;
    }
}


function IsVaaildName2() { // vaild name sould englihs letter captial and small no digit no smbpl  , if ture return ture 
    // disapper style 
    var name = document.getElementById("errcomputerOwner");
   
    if (document.getElementById("computerOwner").value.search(/^[A-Za-z'\-\._ ]{3,}$/) != 0) {
        // apper error message 

        name.display = "block";
        name.style.color = "red";

        name.style.fontSize="14px"
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
   var ser =document.getElementById("ComputerSerialNumber");

    if (!isEmpty(ser)) {
        // apper error message 
        name.display = "block";
        name.style.color = "red";

        name.style.fontSize="14px"
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
   var ser =document.getElementById("model");

    if (!isEmpty(ser)) {
        // apper error message 
        name.display = "block";
        name.style.color = "red";

        name.style.fontSize="14px"
        name.innerHTML = "* Please Choice model or input manlly  ";

        return false;
    } else {
        name.innerHTML = "";
        name.display = "none";
        return true;
    }
}

function isEmpty(a) {
    if (a.length == 0) {

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
    if (document.getElementById("type").value=="none") {
        // apper error message 
        name.display = "block";
        name.style.fontSize="14px"
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
   var ser =document.getElementById("hardDiskGB").value;
//    /^[1-9]\d*$/g 

 
    if (isNaN(ser)||isEmpty(ser)||ser<1)
    {
        // apper error message 
      
        name.display = "block";
        name.style.color = "red";

        name.style.fontSize="14px"
        name.innerHTML = "* Please Enter the size of your hard drive   ";

        return false;
    } else {
        alert("not work");

        name.innerHTML = "";
        name.display = "none";
        return true;
    }
}


function IsvaildProblmes(){
    var name = document.getElementById("errType");
    name.style.color = "red";
    name.display = "inline";
    if (document.getElementById("type").value=="none") {
        // apper error message 
        name.display = "block";
        name.style.fontSize="14px"
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
   var ser =document.getElementById("Problems").value;
//    /^[1-9]\d*$/g 

 
    if (ser.length<20)
    {
        // apper error message 
      
        name.display = "block";
        name.style.color = "red";

        name.style.fontSize="14px"
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
   var ser =document.getElementById("RepairCost").value;
//    /^[1-9]\d*$/g 

 
    if (isNaN(ser)||isEmpty(ser)||ser<1)
    {
        // apper error message 
      
        name.display = "block";
        name.style.color = "red";

        name.style.fontSize="14px"
        name.innerHTML = "* Please Enter the vaild amount cost   ";

        return false;
    } else {

        name.innerHTML = "";
        name.display = "none";
        return true;
    }
}


