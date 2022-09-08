<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link href="bootstrap-5.1.0-dist/css/bootstrap.min.css"  rel="stylesheet">                               
    <link href="fontawesome-free-5.15.4-web/css/all.min.css"  rel="stylesheet">
    <link rel="stylesheet" href="CSS/newStyle.css">
    <script language="JavaScript" type="text/javascript">
            window.history.forward(1);
        </script>
    <style>
       
        .con{
            width: 100%;
            height: 500px;
            background-color:#fff;
        }
        .cont{
        height: 50px;
        }
        .bot{
            text-align: right;
            background-color: #fff;
            margin-top:-3rem;
        }
        .containerp{
            position: relative;
            width:100%;
            min-height: 100vh;
            background-color: #fff;
            overflow: hidden;
            margin-right:2rem;
            margin-left: 1.2rem;
        }
        .forms-container{
            position: absolute;
            width: 100%;
            height:100%;
            top: 0;
            left: 0;
        }
        form{
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            padding: 0 5rem;
            overflow: hidden;
            grid-column: 1/2;
            grid-row:1/2;
            transition: 0.2s 0.7s ease-in-out;
        }
        form.signin_form{
            z-index: 2;
        }
        form.signup_form{
            z-index: 1;
            opacity: 0;
        }
        .tittle{
            font-size: 2.2rem;
            color: #444;
            margin-bottom: 10px;
        }
        .input_field{
            max-width: 380px;
            width: 100%;
            height: 55px;
            background-color: #f0f0f0;
            margin: 1px 0;
            border-radius: 55px;
            display: grid;
            grid-template-columns: 15% 85%;
            padding: 0.4rem;
        }
        .input_field .a{
            text-align: center;
            margin: 1rem;
            color: #acacac;
            font-size: 1.1rem;
        }
        .input_field input{
            background: none;
            outline: none;
            border: none;
            line-height: 1;
            font-weight: 600;
            font-size: 1.1rem;
            color: #333;
        }
        .input_field input::placeholder{
            color: #aaa;
            font-weight: 500;
        }
        .btn{
            width: 150px;
            height: 49px;
            border: none;
            outline: none;
            border-radius: 49px;
            cursor: pointer;
            background-color: #5995fd;
            color: #fff;
            text-transform: uppercase;
            font-weight: 600;
            margin: 10px 0;
            transition: .5s;
        }
        .btn:hover{
            background-color: #4d84e2;
        }
        .social-text{
            padding: .7rem 0;
            font-size: 1rem;
        }
        .social-media{
            display: flex;
            justify-content: center;
        }
        .social-icon{
            height: 46px;
            width: 46px;
            border: 1px solid #333;
            margin: 0 0.45rem;
            display: flex;
            justify-content: center;
            align-items: center;
            text-decoration: none;
            color: #333;
            font-size: 1.1rem;
            border-radius: 50%;
            transition: 0.3s;
        }
        .social-icon:hover{
            color: #4481eb;
            border-color: #4481eb;
        }
        .signin_signup{
            position: absolute;
            top: 50%;
            left: 75%;
            transform: translate(-50%,-50%);
            width: 50%;
            display: grid;
            grid-template-columns: 1fr;
            z-index: 5;
            transition: 1s 0.7s ease-in-out;
        }
        .image{
            width: 100%;
            transition: 1.1s .4s ease-in-out;
        }
        .pan{
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            /* background-color: green; */
            display: grid;
            grid-template-columns: repeat(2,1fr);
        }
        .panel{
            display: flex;
            align-items: flex-end;
            flex-direction:column;
            justify-content: space-around;
            text-align: center;
            z-index: 7;
        }
        .left-panel{
            pointer-events: all;
            padding: 3rem 17% 2rem 12%;
        }
        .right-panel{
            pointer-events: none;
            padding: 3rem 12% 2rem 17%;
        }
        .panel .content{
            color: #fff;
            transition: 1.1s .4s ease-in-out;
        }
        .panel h3{
            font-weight: 600;
            line-height: 1;
            font-size: 1.5rem;
        }
        .panel p{
            font-size: 0.95rem;
            padding: 0.7rem 0;
        }
        .btn.transparent{
            margin: 0;
            background: none;
            border: 2px solid #fff;
            width: 130px;
            height: 41px;
            font-weight: 600;
            font-size: 0.8rem;
        } 
        .right-panel .content, .right-panel .image{
            transform: translateX(800px);
        }
        .containerp.sign-up-mode::before{
            transform: translate(100%,-50%);
            right: 52%;
        }
        .containerp.sign-up-mode .left-panel .image,
        .containerp.sign-up-mode .left-panel .content{
            transform: translateX(-800px);
        }
        .containerp.sign-up-mode .right-panel .content,
        .containerp.sign-up-mode .right-panel .image{
            transform: translateX(0px);
        }
        .containerp.sign-up-mode .left-panel{
            pointer-events: none;

        }
        .containerp.sign-up-mode .right-panel{
            pointer-events: all;
        }
        .containerp.sign-up-mode  .signin_signup{
            left: 25%;
        }
        .containerp.sign-up-mode form.signin_form{
            z-index: 1;
            opacity: 0;
        }
        .containerp.sign-up-mode  form.signup_form{
            z-index: 2;
            opacity: 1;
        }
        @media(max-width:870px){
            .container1{
                min-height: 800px;
                height: 100vh;
            }
            .container1::before{
                width: 1500px;
                height: 1500px;
                left: 30%;
                bottom: 68%;
                transform: translateX(-50%);
                right: initial;
                top: initial;
                transition: 2s ease-in-out;
            }
            .signin_signup{
                width: 100%;
                left: 50%;
                top: 95%;
                transform: translate(-50%,-100%);
                transition: 1s 0.8s ease-in-out;
            }
            .pan{
                grid-template-columns: 1fr;
                grid-template-rows: 1fr 2fr 1fr;
            }
            .panel{
                flex-direction: row;
                justify-content: space-around;
                align-items: center;
                padding: 2.5rem 8%;
            }
            .panel .content{
                padding-right: 15%;
                transition: 0.9s 0.8s ease-in-out;
            }
            .panel h3{
                font-size: 1.2rem;
            }
            .panel p{
                font-size: 0.7rem;
                padding: 0.5rem 0;
            }
            .btn.transparent{
                width: 110px;
                height: 35px;
                font-size: 0.7rem;
            }
            .image{
                width: 200px;
                transition: 0.9s 0.6s ease-in-out;
            }
            .right-panel .content, .right-panel .image{
                transform: translateY(300px);
            }
            .left-panel{
                grid-row: 1/2;
            }
            .right-panel{
                grid-row: 3/4;
            }
            .container1.sign-up-mode::before{
                transform: translate(-50%,100%);
                bottom: 32%;
                right: initial;
            }
            .container1.sign-up-mode .left-panel .image,
            .container1.sign-up-mode .left-panel .content{
                transform: translateY(-300px);
            }
            .container1.sign-up-mode  .signin_signup{
                top: 5%;
                transform: translate(-50% ,0);
                left: 50%;
            }
        }
        @media(max-width:570px){
            form{
                padding:  0 1.5rem;
            }
            .image{
                display: none;
            }
            .panel .content{
                padding: 0.5rem 1rem;
            }
            .container1.sign-up-mode::before{
                bottom: 28%;
                left: 50%;
            }
            .container1::before{
                bottom: 72%;
                left: 50%;
            }
        }
.navbar-brand{
     font-size: 30px;
     color:background;
     font-weight: 500;
     text-transform: capitalize;
}
    </style>

</head>
<body class="dark" onload="getCookieData();">
    <%
        String status=request.getParameter("status");
    %>
      <!--start of header-->
      <header class="header navbar-shrink">
        <div class="container">
            <div class="header-main"  style="padding-right:15px;">
                <div class="logo">  <a class="navbar-brand" href="#">INSA <span>CMS</span></a></div>
                <nav class="nav-menu"  style="padding-right:50px;">
                    <ul class="menu">
                        <li class="menu-item"><a href="HomePage.jsp">Home</a></li>
                        <li class="menu-item menu-item-has-children"><a href="">LoginUs <i class="plus"></i><i class="fas fa-angle-down"></i></a>
                           <ul class="sub-menu">
                              <li class="menu-item"><a href="LoginPage.jsp?status=employee">Employee</a></li>
                              <li class="menu-item"><a href="LoginPage.jsp?status=dadmin">Department</a></li>
                              <li class="menu-item"><a href="LoginPage.jsp?status=oadmin">Admin</a></li>
                           </ul>
                      </li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
      
<!--the end of header-->
  <!--start of login form section-->
  <section class="con">
            <div class="cont">
                  
            </div>
            <div class="bot">
                <section class="containerp">
                    <div class="forms_container">
                        <div class="signin_signup">
                            <form action="loginControler?status=<%=status%>" class="signin_form" method="post">
                                <h3 style="color:gold; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;">Wellcome <%=status%></h3>
                                <h2 class="tittle">Sign in</h2>
                                <%
                                        String msg=request.getParameter("msg");
                                         if("invalid".equals(msg))
                                                {
                                               %>
                                         <h2> <center ><font color="red" size="5">Invalid Password or UserName</font></center></h2>
                                         <%
                                          }
                                          else if("none1".equals(msg)){
                                         %>
                                         <h2> <center ><font color="red" size="4">Please Login us Department or Admin You are Not Employee</font></center></h2>
                                         <%}
                                         else if("none2".equals(msg)){
                                         %>
                                         <h2> <center ><font color="red" size="3">Please Login us Employee or Admin You are Not Department Admin</font></center></h2>
                                         <%
                                         }
                                         else if("none3".equals(msg)){
                                         %>
                                         <h2> <center ><font color="red" size="3">Please Login us Employee or D_Admin You are Not  Order Admin</font></center></h2>
                                         <%
                                         }
                                         %>
                                         
                                <p class="p" style="color: crimson; font-size: 1rem;"></p>
                                <div class="input_field">
                                    <i class="fas fa-user a "></i>
                                    <input type="text" name="user_name" placeholder="UserName" class="name" id="name">
                                </div>
                                <p class="p1"  style="color: crimson; font-size: 1rem;"></p>
                                <div class="input_field">
                                    <i class="fas fa-lock a"></i>
                                    <input type="password" name="password" placeholder="Password" class="password" id="password">
                                </div>
                                <div class="input_field1">
                                    <span style="color:black;font-size: 1rem;"><input type="checkbox" name="remember" class="remember_me" onclick="setCookie();">remember me password and username</span>
                                </div>
                                <span>
                                    <input type="submit" value="Login" class="btn solid logjs" name="action">
                                    <input type="reset" value="Reset" class="btn solid">
                                </span>
                                <p class="social-text">Or Sign in with social platform</p>
                                <div class="social-media">
                                    <a href="#" class="social-icon">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                    <a href="#" class="social-icon">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                    <a href="#" class="social-icon">
                                        <i class="fab fa-google"></i>
                                    </a>
                                    <a href="#" class="social-icon">
                                        <i class="fab fa-linkedin-in"></i>
                                    </a>
                                </div>
                            </form>
                            <form action="employe_registration" class="signup_form" method="post">
                                <h2 class="tittle">Sign Up</h2>
                                <span style="display:flex;">
                                    <div class="input_field">
                                    <i class="fas fa-user a "></i>
                                    <input type="text" name="fname" placeholder="FName">
                                    </div>
                                    <div class="input_field">
                                    <i class="fas fa-envelope a "></i>
                                    <input type="text" name="mname" placeholder="MName">
                                    </div>
                                </span>
                                <span style="display:flex;">
                                    <div class="input_field">
                                    <i class="fas fa-user a "></i>
                                    <input type="text" name="lname" placeholder="LName">
                                    </div>
                                    <div class="input_field">
                                    <i class="fas fa-envelope a "></i>
                                    <input type="text" name="employee" placeholder="Employee">
                                    </div>
                                </span>
                                 <span style="display:flex;">
                                    <div class="input_field">
                                    <i class="fas fa-user a "></i>
                                    <input type="text" name="department" placeholder="Department">
                                    </div>
                                    <div class="input_field">
                                    <i class="fas fa-envelope a "></i>
                                    <input type="number" name="phone" placeholder="phoneNumber">
                                    </div>
                                </span>
                                <div class="input_field">
                                    <i class="fas fa-envelope a "></i>
                                    <input type="password" name="password" placeholder="Password">
                                    </div>
                                <span>
                                    <input type="submit" value="Register" class="btn solid" name="l">
                                    <input type="reset" value="Reset" class="btn solid">
                                </span>
                                <p class="social-text">Or Sign up with social platform</p>
                                <div class="social-media">
                                    <a href="#" class="social-icon">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                    <a href="#" class="social-icon">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                    <a href="#" class="social-icon">
                                        <i class="fab fa-google"></i>
                                    </a>
                                    <a href="#" class="social-icon">
                                        <i class="fab fa-linkedin-in"></i>
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="pan">
                        <div class="panel left-panel">
                            <img src="IMG/undraw_feeling_proud_qne1.svg" class="image" alt="">
                        </div>
                        <div class="panel right-panel">
                            <img src="IMG/a12.svg" class="image" alt="">
                        </div>
                    </div>
                </section>
            </div>
</section>
    <!--end of login form section-->
    <div class="toggle-theme">
                    <i class="fas i"></i>
    </div>
<script src="JS/jquery.main.js"></script>    
<script src="bootstrap-5.1.0-dist/js/bootstrap.min.js"></script>
<script src="fontawesome-free-5.15.4-web/js/all.min.js"></script>
<script >
  $(document).ready(function(){
      function toggleTheme(){
        if(localStorage.getItem("cms")!==null){
          if(localStorage.getItem("cms")==="dark"){
            $("body").addClass("dark");
          }
          else{
            $("body").addClass("light");
          }
        }
         updateIcon();
      }
      toggleTheme();
      $(".toggle-theme").on("click",function(){
        $("body").toggleClass("dark");
        if($("body").hasClass("dark")){
             localStorage.setItem("cms","dark");
        }
        else{
          localStorage.setItem("cms","light");
        }
        updateIcon();
      });
      function  updateIcon(){
           if($("body").hasClass("dark")){
             $(".toggle-theme .i").removeClass("fa-moon");
             $(".toggle-theme .i").addClass("fa-sun");
           }
           else{
             $(".toggle-theme .i").removeClass("fa-sun");
             $(".toggle-theme .i").addClass("fa-moon");
           }
      }
    });
    function setCookie(){
        var u=document.getElementById("name").value;
        var p=document.getElementById("password").value;
        document.cookie="username="+u+";path=http://localhost:8080/INSA-CMS-Project1-war/";
        document.cookie="password="+p+";path=http://localhost:8080/INSA-CMS-Project1-war/";
       
    }
    function getCookieData(){
       var username=getCookie('username');
       var password=getCookie('password');
       document.getElementById("name").value=username;
       document.getElementById("password").value=password;
    }
    function getCookie(cname){
        var name=cname+"=";
        var decodedCookie=decodeURIComponent(document.cookie);
        var ca=decodedCookie.split(';');
        for(var i=0;i<ca.length;i++){
            var c=ca[i];
            while(c.charAt(0) ==' '){
                c=c.substring(1);
            }
            if(c.indexOf(name)=== 0){
                return c.substring(name.length,c.length);
            }
        }
        return "";
    }
</script>
</body>
</html>