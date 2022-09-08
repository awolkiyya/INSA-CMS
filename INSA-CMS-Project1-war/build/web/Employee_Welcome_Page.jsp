<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Welcome Page</title>
    <link href="/bootstrap-5.1.0-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/fontawesome-free-5.15.4-web/fontawesome-free-5.15.4-web/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="CSS/newStyle.css">
    <link href="CSS/sty.css" rel="stylesheet">
    <style>
h3{
    text-align: center;
    font-weight: 600;
    margin: 10px 0;
}
.footer{
    width: 100%;
    text-align: center;
    padding: 2rem 0;
    position: relative;
    background-color: #fff;
}
@media(Max-width:700px) {
    .cta h1{
        font-size: 24px;
    }
    
}
 .footer h1{
     margin-top:20px;
     margin-bottom: 25px;
     font-weight: 600;
 }
.up{
    position: absolute;
    width: 3rem;
    height: 3rem;
    background-color: rgb(247, 247, 247);
    top: -0.5rem;
    right: 5rem;
    border-radius: 100%;
    display: inline-block;
    animation: pulse 2s infinite;
}
.bet{
    animation: pulse 2s infinite;
}
.up i{
    color: #16162d;
    font-size: 2rem;
    margin: auto;
}
@keyframes pulse{
    0%{
        box-shadow: 0 0 0 0 rgba(87, 253, 239, 0.99);
    }
    70%{
        box-shadow: 0 0 0 2rem rgba(201, 157, 185, 0)
    }
    100%{
        box-shadow: 0 0 0 0 rgba(253,87,191,0)
    }
}
@keyframes puls{
    0%{
        box-shadow: 0 0 0 0 rgba(253,87,191,0.99);
    }
    70%{
        box-shadow: 0 0 0 2rem rgba(253,87,191,0)
    }
    100%{
        box-shadow: 0 0 0 0 rgba(253,87,191,0)
    }
}
li:hover{
    animation: puls 2s infinite;
    color: white;
}
.middle{
    background-color: white;
    margin-top: 5rem;
    position: absolute;
    top:40%;
    transform: translateY(-50%);
    width: 100%;
    text-align: center;
}
.btn1{
    display: inline-block;
    width: 40px;
    height: 40px;
    background-color: #f1f1f1;
    margin: 10px;
    border-radius: 30%;
    box-shadow: 0 5px 15px -5px #00000070;
    color: #01121d;
    overflow: hidden;
    position: relative;
}
.btn1 .ii{
    line-height: 90px;
    font-size: 26px;
    transition: 0.2s linear;
}
.btn1:hover .ii{
    transform: scale(1.3);
    color: #f1f1f1;
}
.btn1::before{
    content: "";
    position:absolute;
    width: 120%;
    height: 120%;
    background-attachment: #3498db;
    transform: rotate(45deg);
    left: -110%;
    top: 90%;
}
.btn1:hover::before{
    animation: aaa 0.7s 1;
    top: -10%;
    left:-10%;
}
@keyframes aaa{
    0%{
    left: -110%;
    top:90%;
    }
    50%{
        left: 10%;
    top:90%;
    }
    100%{
        top: -10%;
    left:-10%;
    }
}
.hh{
    font-size: 1px;;
}
    </style>    
</head>
<body>
    <%
        String password=request.getParameter("password");
        String username=request.getParameter("username");
        String proName=request.getParameter("proname");
        StringBuilder decripted=new StringBuilder();
            char a;
            for(int i=1;i<username.length()-1;i++){
                a=username.charAt(i);
//              out.print(a+"<br/>");
                decripted.append(a);
            }
            String fullInfo=String.valueOf(decripted);
        %>
    <header>
        <div class="nav_left">
            <div class="logo"><h1><span>I</span>NSA <span>C</span>MS</h1></div>
              <ul>
                <li><a href="AllEmployeeWork?password=<%=password%>&&action=Veiw">Veiw My Info</a></li>
                <li><a href="AllEmployeeWork?password=<%=password%>&&action=sendCopyRequest">Send Copy Request</a></li>
                <li><a href="">Send Message</a></li>
                <li><a href="register">Logout</a></li>
              </ul>
        </div>
        <div class="right">
            <div class="nav-user-icon online">
                <img src="pro/l.jpg" alt="">
            </div>
            <div class="userName">
                <h5 style="padding:1rem;"><%=fullInfo%></h5>
            </div>
        </div>
    </header>
    <section  id="h">
        <div class="h container2">
            <div>
               <h1 style="font-size: 30px;">Welcome to<span></span></h1>
               <h1  style="font-size: 30px;">Copy Management System Web Site<span></span></h1>
               <h1  style="font-size: 30px;">Every Things Becomes simple<span></span></h1>
                <a href="#" type="button" class="cta"  style="font-size: 20px;">Full info</a>
            </div>
        </div>
    </section>
    <section class="footer">
        <h4 class="text-center"><span>A</span>bout <span>U</span>s</h4>
        <p>Making website is now one of the easiest thigng in the worl. <br/> youyfvyhvivuivvviviuviuviuviuvvivuviuvi
            just nee to learne the Html,Css, Javascript and you are good to go forward. 
        </p>
        <div class="up" id="up">
            <a href="#home"><i class="fas fa-chevron-up"></i></a>
         </div>
         <div class="middle">
             <a class="btn1" href="#">
                 <i class="fab fa-facebook ii"></i>
             </a>
             <a class="btn1" href="#">
                 <i class="fab fa-google ii"></i>
             </a>
             <a class="btn1" href="#">
                 <i class="fab fa-instagram ii"></i>
             </a>
             <a class="btn1" href="#">
                 <i class="fab fa-telegram ii"></i>
             </a>
         </div>
     </section> 
     <script src="jquery-1.3.2.min.js"></script>
    <script src="bootstrap-5.1.0-dist/js/bootstrap.min.js"></script>
    <script src="fontawesome-free-5.15.4-web/fontawesome-free-5.15.4-web/js/all.min.js"></script>
    <script>
    </script>
</body>
</html>