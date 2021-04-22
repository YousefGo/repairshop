<%-- 
    Document   : RepairRequest.jsp
    Created on : Apr 17, 2021, 3:45:21 PM
    Author     : mobai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css">
   
        <title>Add new Repair </title>
            <script  src="JS/script.js"> </script>

    </head>

   <% if (session.getAttribute("email") != null) { %>
   <jsp:include page="header.jsp" />
   
   <jsp:include page="nav.jsp" />
        <section class="formcontaier">
            <h1 class="ads1 center on">ADD Repair Requst now 

            </h1>
            <div class="form">
                <form action="newRequset" method="post" onsubmit="return addNewRepiarRequset()">
                    <div>
                        <div  class="in">
                            <label for="">Computer Owner:</label>
                            <span id="errcomputerOwner"></span>

                        </div>
                        <input type="text" placeholder="Please Enter Computer Owner name  " name="computerOwner" id="computerOwner"
                               class="input">
                    </div>


                    <div>
                        <div  class="in">
                            <label for=""> Computer Serial Number:</label>
                            <span id="errComputerSerialNumber"></span>
                        </div>
                        <input type="text" placeholder="Please Enter your Computer Serial Number "
                               name="ComputerSerialNumber"  id="ComputerSerialNumber"class="input">
                    </div>


                    <div>
                        <div  class="in">
                            <label for="">Type:</label>
                            <span id="errType"></span>
                        </div>
                        <select name="type" id="type" name="type">
                            <option value="none" selected hidden>please select type of deveies</option>

                            <option value="Desktop" >Desktop</option>
                            <option value="tablet">tablet</option>
                            <option value="laptop">laptop</option>
                        </select>
                    </div>


                    <div>
                        <div  class="in">
                            <label for="">Model:</label>
                            <span id="errModel"></span>
                        </div>
                        <input type="text" name="model"  id="model"list="modellist" placeholder="enter model or choice">
                        <datalist id="modellist">
                            <option value="HP Pavilion i5 7th Gen. Laptop">
                            <option value="IBM Think pad L430 Core i5">
                            <option value="Samsung Galaxy Tab S5e">
                        </datalist>
                    </div>

                    <div>
                        <div  class="in">
                            <label for=""> Memory GB :</label>
                            <span id="errMemory"></span>
                        </div>
                        <input type="text" placeholder="Please Enter Meory size gayg byte " name="memGB"
                               id="memGB">
                    </div>





                    <div>
                        <div  class="in">
                            <label for=""> HardDisk GB :</label>
                            <span id="errHardDisk"></span>
                        </div>
                        <input type="text" placeholder="Please Enter HardDisk size gayg byte " name="hardDiskGB"
                               id="hardDiskGB">
                    </div>


                    <div>
                        <div  class="in">
                            <label for=""> Problems:</label>
                            <span id="errProblems"></span>
                        </div>
                        <textarea name="Problems" id="Problems" cols="30" rows="10"
                                  placeholder="descirbe your problmes in details"></textarea>
                    </div>


                    <div>
                        <div  class="in">
                            <label for="">Repair Cost:</label>
                            <span id="errRepairCost"></span>
                        </div>
                        <input type="text" placeholder="Please Enter your the Cost " name="RepairCost" id="RepairCost">
                    </div>


                    <div>
                        <div  class="in">
                            <label for="">Repair Status :</label>
                        </div>
                        <table>
                            <tr>
                                <th></th>
                                <th></th>
                            </tr>
                            <tr>
                                <td>
                                    <label for="">Done</label>

                                </td>
                                <td>
                                    <input type="radio" id="done" name="Repair_Status"  value="done">

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="">No</label>

                                </td>
                                <td>
                                    <input type="radio" id="no"  name="Repair_Status" value="no">

                                </td>
                            </tr>
                        </table>




                    </div>


                    <div>
                        <div  class="in">
                            <label for=""> Repair Finish DateTime</label>

                        </div>
                        <input type="datetime-local" id=" RepairFinishDateTime" name="RepairFinishDateTime">
                    </div>

                    <div>
                        <div  class="in">
                            <label for="">Repair Delivery DateTime</label>

                        </div>
                        <input type="datetime-local" id=" RepairDeliveryDateTime" name="RepairDeliveryDateTime">

                    </div>




                    <button type="submit" class="btn send">Send</button>

                </form>
            </div>

        </section>













   <jsp:include page="footer.jsp" />

    </body>
   <% } else { %>
      <jsp:include page="login.jsp" />

   
       <% }%>
</html>