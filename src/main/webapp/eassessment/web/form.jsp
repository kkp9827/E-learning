<%-- 
    Document   : form
    Created on : 8 Aug, 2018, 3:27:03 PM
    Author     : DELL
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="jquery.min.js"></script>
 <script src="js/bootstrap.min.js"></script>
    
    <title>JSP Page</title>
 <style>
* {
    box-sizing: border-box;
}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #269abc;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
   
    padding: 20px;
}

.col-25 {
    margin-left: 10px;
    float: left;
    width: 15%;
    margin-top: 6px;
}

.col-75 {
    margin-left: 6px;
    float: left;
    width: 35%;
    margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        
    }
}

</style>
</head>
<body>
<div style="background-image:url('pic9.jpg')" >
   
    <center><h2><font color=" black" size="70px">Student Registration Form</font></h2></center>
    
     
    <div class="container">
        
         
  <form  action="insert.jsp"  method="get"> 
       
    <div class="row">
      <div class="col-25">
          <label for="rollno"><font color=" black">Roll No</font></label>
      </div>
      <div class="col-75">
        <input type="text" id="rollno" name="rollno" placeholder="Your rollno..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
          <label for="name"><font color=" black">Name</font></label>
      </div>
      <div class="col-75">
        <input type="text" id="name" name="name" placeholder="Your  name..">
      </div>
    </div>
      <div class="row">
      <div class="col-25">
          <label for="fname"><font color=" black">Father Name</font></label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="fname" placeholder="Your father name..">
      </div>
    </div>
       <div class="row">
      <div class="col-25">
          <label for="dob"><font color=" black">Date of birth</font></label>
      </div>
      <div class="col-75">
        <form action="/action_page.php">
  <input type="date" class="form-control" id="dob" name="bday">
        </form></div>
    </div>
      <div class="row">
      <div class="col-25">
          <label for="course"><font color=" black">Course</font></label>
      </div>
      <div class="col-75">
        <input type="text" id="course" name="course" placeholder="Your course..">
      </div>
    </div>
      <div class="row">
      <div class="col-25">
          <label for="payStatus"><font color=" black">Pay Status</font></label>
      </div>
      <div class="col-75">
        <input type="text" id="payStatus" name="payStatus" placeholder="Pay Status..">
      </div>
    </div>
      <div class="row">
      <div class="col-25">
          <label for="contact"><font color=" black">Contact</font></label>
      </div>
      <div class="col-75">
        <input type="text" id="contact" name="contact" placeholder="Your contact..">
      </div>
    </div>
      <div class="row">
      <div class="col-25">
          <label for="em"><font color=" black">Email</font></label>
      </div>
      <div class="col-75">
        <input type="text" id="em" name="em" placeholder="Your email..">
      </div>
    </div>
      
         
      <div class="row">
      <div class="col-25">
         <label for="pass"><font color=" black">Passward</font></label>
      </div>
      <div class="col-75">
            <label for="psw"></label>
    <input type="password" class="form-control" id="psw" name="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
     </div>
          
      </div>
    <div class="row">
      <div class="col-25">
          <label for="qualification"><font color=" black">Qualification</font></label>
      </div>
      <div class="col-75">
        <select id="qualification" name="qualification">
          <option value="highschool">Highschool</option>
          <option value="intermediate">Intermediate</option>
           <option value="diploma">Diploma</option>
          <option value="bca">BCA</option>
           <option value="b.tech">B.tech</option>
            <option value="mca">MCA</option>
        </select>
      </div>
    </div>
      <div class="row">
      <div class="col-25">
          <label for="st"><font color=" black">Status</font></label>
      </div>
   <div class="col-75">
        <select id="st" name="st">
          <option value="yes">Yes</option>
          <option value="no">No</option>
         
        </select>
      </div>
    </div>
    <div class="row">
        <input type="submit" value="Submit" name="submit" id="alert">
      
      
    </div>
      
  </form>
</div>
    </div>
           
</body>
</html>
