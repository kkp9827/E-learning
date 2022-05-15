

 <%@page contentType="text/html" pageEncoding="UTF-8"%>
 <!DOCTYPE html>
 <html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="jquery.min.js"></script>
  <script src="bootstrap.min.js"></script>
  
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
body, html {
    height: 100%;
    line-height: 1.8;
     }
   /* Full height image header */
.bgimg-1 {
    background-position: center;
    background-size: cover;
    background-image: url("lrning.jpeg");
    min-height: 100%;
    margin-top:50px;
}
.w3-bar .w3-button {
  
  padding:16px;
}
.modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  .w3-bar-item w3-button {
   left: 150px;
  }
  
</style>
</head>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-animate-opacity" id="myNavbar">
    <a href="masterpage.jsp?page=1" class="w3-bar-item w3-button w3-wide"><b>Home</b></a>
    <!-- Right-sided navbar links -->
    
 <script>
function myFunction() {
    var x = document.getElementById("demo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
function myFunction1() {
    var y = document.getElementById("demo1");
    if (y.className.indexOf("w3-show") == -1) {
        y.className += " w3-show";
    } else { 
        y.className = y.className.replace(" w3-show", "");
    }
}
function myFunction2() {
    var y = document.getElementById("demo2");
    if (y.className.indexOf("w3-show") == -1) {
        y.className += " w3-show";
    } else { 
        y.className = y.className.replace(" w3-show", "");
    }
}
 </script>   
 <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      
             <div class="w3-dropdown-click">
      <button class=" w3-button" onclick="myFunction1()">
        COURSE <i class="fa fa-caret-down"></i>
      </button>
      <div id="demo1" class="w3-dropdown-content w3-bar-block w3-card">
        <a href="masterpage.jsp?page=2" class="w3-bar-item w3-button">HTML</a>
        <a href="masterpage.jsp?page=3" class="w3-bar-item w3-button">C Language</a>
       <a href="masterpage.jsp?page=4" class="w3-bar-item w3-button">C++ Programming</a>
       <a href="masterpage.jsp?page=5" class="w3-bar-item w3-button">Core Java</a>
       <a href="masterpage.jsp?page=6" class="w3-bar-item w3-button">Advance Java</a>
       <a href="masterpage.jsp?page=7" class="w3-bar-item w3-button">CSS</a>
       
      
    </div>
  </div>
        <div class="w3-dropdown-click">
      <button class="w3-button" onclick="myFunction()">
        REGISTRATION <i class="fa fa-caret-down"></i>
      </button>
      <div id="demo" class="w3-dropdown-content w3-bar-block w3-card">
        <a href="masterpage.jsp?page=8" class="w3-bar-item w3-button">Faculty Registration</a>
        <a href="masterpage.jsp?page=9" class="w3-bar-item w3-button">Student Registration</a>
       
      </div>
    </div>
  <div class="w3-dropdown-click">
      <button class="w3-button" onclick="myFunction2()">
        LOGIN <i class="fa fa-caret-down"></i>
      </button>
      <div id="demo2" class="w3-dropdown-content w3-bar-block w3-card">
        <a href="loginstu.jsp" class="w3-bar-item w3-button" data-toggle="modal" data-target="#myModal">Faculty LOGIN</a>
        <a href="profile1.jsp" class="w3-bar-item w3-button">Student LOGIN</a>
       <a href="ad1.jsp" class="w3-bar-item w3-button">Admin LOGIN</a>
       
      </div>
    </div>
    </div>
   
<!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

<!-- Sidebar on small screens when clicking the menu icon -->

<nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
  <a href="#course" onclick="w3_close()" class="w3-bar-item w3-button"><b>COURSE</b></a>
  <a href="#registration" onclick="w3_close()" class="w3-bar-item w3-button"><b>REGISTRATION</b></a>
  <a href="#login" onclick="w3_close()" class="w3-bar-item w3-button "><b>LOGIN</b></a>
</nav>

      
                 <% 
           int p=1;
           if(request.getParameter("page")!=null)
           p=Integer.parseInt(request.getParameter("page"));
           
           switch(p)
           {
               case 1:
           %>     
           <jsp:include page="master.jsp"></jsp:include>     
                <%
                break;
                case 2:
                %>
                <jsp:include page="HTML.jsp"></jsp:include>     
                <%
                break;
                case 3:
                %>
                <jsp:include page="c.jsp"></jsp:include>     
                <%
                break;
                case 4:
                %>
                <jsp:include page="c1.jsp"></jsp:include>     
                <%
                break;
                case 5:
                %>
                <jsp:include page="corejava.jsp"></jsp:include>     
                <%
                break;
                case 6:
                %>
                <jsp:include page="advjava.jsp"></jsp:include>     
                <%
                break;
                case 7:
                %>
                <jsp:include page="css.jsp"></jsp:include>     
                <%
                break;
                case 8:
                %>
                <jsp:include page="form2.jsp"></jsp:include>     
                <%
                break;
                case 9:
                %>
                <jsp:include page="formm.jsp"></jsp:include>     
                <%
                break;
                }
         %>
             
                <script>
                    
// Toggle between showing and hiding the sidebar when clicking the menu icon
var mySidebar = document.getElementById("mySidebar");

function w3_open() {
    if (mySidebar.style.display === 'block') {
        mySidebar.style.display = 'none';
    } else {
        mySidebar.style.display = 'block';
    }
}

// Close the sidebar with the close button
function w3_close()
{
    mySidebar.style.display = "none";
}
</script>

</body>
</html>
