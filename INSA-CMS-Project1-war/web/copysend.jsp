<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <!--<link href="bootstrap-5.1.0-dist/css/bootstrap.min.css" rel="stylesheet">-->
  <link rel="stylesheet" href="bootstrap-5.1.0-dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="fontawesome-free-5.15.4-web/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/emojionearea/3.4.2/emojionearea.min.css">
    <!--<link rel="stylesheet" href="CSS/newStyle.css">-->
    <link href="CSS/sty.css" rel="stylesheet">
     <script language="JavaScript" type="text/javascript">
            window.history.forward(1);
        </script>
    <style>
        body{
            width:100%;
            height:100%;
        }
    .hed{
           position:fixed;
           color:#485563;
           background-image:linear-gradient(to right,#0d6cb9,#fff);
           text-align:center;
    }
    .hed a{
        text-decoration: none;
        color: #fff;
    }
   .datatable1{
    position:relative;
    width:100%;
    display: grid;
    padding:40px;
    grid-template-columns:1fr;
    grid-gap: 30px;
    background:#fff;
        }
   .datatable1 .listOfallAdmtin{
    position: relative;   
    display: grid;
    width:100%;
    background:var(--white);
    padding:10px;
/*    box-shadow:0 7px 25px rgba(0, 0, 0, 0.08);*/
    }
    .cardbox1{
    position: relative;
    width: 100%;
    padding: 20px;
    display: grid;
    grid-template-columns: repeat(2,1fr);
    grid-gap:30px;
    background:#fff;
   }
   .cardbox1 .card1{
    position: relative;
    background: var(--white);
    padding: 30px;
    display:block;
    box-shadow: 0 7px 25px rgba(0, 0, 0, 0.08);
     border-top:5px solid #40E0D0;
   }
   span{
       color:#3dd5f3;
   }
      
    .drag-area{
        border: 1px dashed #9658fe;
        height:280px;
        width: 500px;
        border-radius: 5px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }
    .drag-area .icon{
        font-size: 80px;
        color: #9658fe;
    }
    .drag-area .heade{
        font-size: 15px;
        font-weight: 500;
        color: #9658fe;
    }
    .drag-area span{
        font-size:13px;
        font-weight: 500;
        color: #9658fe;
        margin: 10px 0 15px 0;
    }
    .drag-area button{
        padding: 10px 25px;
        font-size: 20px;
        font-weight: 500;
        border: 1px solid beige;
        outline: none;
        background-color:#9658fe;
        color: black;
        border-radius: 5px;
        cursor: pointer;
    }
    .drag-area.active{
        border: 1px solid rgb(143, 47, 47);
    }
    .dv{
        width:100%;
        height:50px;
        display: flex;
        justify-content:center;
        align-items: center;
        margin-left:5rem;
        margin-top:4rem;
        /*margin-right:5rem;*/
        
    }
    .but{
         padding: 10px 25px;
        font-size: 20px;
        font-weight: 500;
        border: 1px solid beige;
        outline: none;
        background-color: #fff;
        color: black;
        border-radius: 5px;
        cursor: pointer;
        margin-left:1rem;
    }
    .but:hover{
        background:#03A3F4;
        color: #fff;
    }
    .h4{
        font-size: 15px;
        font-weight: 500;
        color: rgb(207, 199, 199);
        padding-top:1rem;
    }
    footer{
        position: relative;
        width:100%;
        background-image:linear-gradient(to right,#0d6cb9,#fff);
        min-height: 100px;
        padding: 20px 50px;
        display: flex;
        justify-content:center;
        align-items:center;
        flex-direction: column;

    }
    footer .social-icon,
    footer .menu{
        position: relative;
        display: flex;
        justify-content:center;
        align-items:center;
        margin: 10px 0;
        flex-wrap: wrap;
    }
    footer .social-icon li,
    footer .menu li{
        list-style: none;
    }
    footer  .social-icon li a{
        font-size:2em;
        color:#fff;
        margin: 0 10px;
        display: inline-block;
        transition: 0.5s;
    }
    footer .social-icon li a:hover{
        transform: translateY(-10px);
    }
    footer  .menu li a{
        font-size:1.2em;
        color:#fff;
        margin: 0 10px;
        display: inline-block;
        text-decoration: none;
        opacity: 0.75;
    }
    footer p{
        color: #fff;
        text-align: center;
        margin-top:15px;
        margin-bottom: 10px;
        font-size: 1.1em;
    }
    footer  .wave{
        position: absolute;
        top: -30px;
        left: 0;
        width:100%;
        height: 30px;
        background: url(IMG/wave12.jpg);
        background-size: 1000px 100px;
    }
    footer .wave#wave1{
        z-index: 1000;
        opacity:1;
        bottom:0;
        animation:animateWave 4s linear infinite;
    }
    footer .wave#wave2{
        z-index:999;
        opacity:0.5;
        bottom:10px;
        animation:animateWave_02 4s linear infinite;
    }
    footer .wave#wave3{
        z-index:1000;
        opacity:0.2;
        bottom:15px;
        animation:animateWave 3s linear infinite;
    }
    footer .wave#wave4{
        z-index: 999;
        opacity:0.7;
        bottom:20px;
        animation:animateWave_02 3s linear infinite;
    }
    @keyframes animateWave{
        0%{
                 background-position-x:1000px;
        }
        100%{
            background-position-x:0px;
        }
    }
    @keyframes animateWave_02{
        0%{
                 background-position-x:0px;
        }
        100%{
            background-position-x:1000px;
        }
    }
    .popup{
        position: fixed;
        left: 0;
        top: 0;
        overflow-y: auto;
        overflow-x: hidden;
        background-color: rgba(114, 107, 107, 0.5);
        transition: 0.5s;
        -webkit-transition:0.5s;
        -moz-transition:0.5s;
        -ms-transition:0.5s;
        -o-transition:0.5s;
        z-index: -1;
        width:100vw;
        height:100vh;
        user-select: none;
        opacity: 0;
    }
    .popup-box{
        background-color: #fdfdfd;
        width: 500px;
        height:50vh;
        text-align: center;
        position: absolute;
        left:50%;
        top:25%;
        transform: translate(-50%);
        -webkit-transform: translate(-50%);
        -moz-transform: translate(-50%);
        -ms-transform: translate(-50%);
        -o-transform: translate(-50%);
        border-radius: 10px;
        -webkit-border-radius:10px;
        -moz-border-radius:10px;
        -ms-border-radius:10px;
        -o-border-radius:10px;
         border-top:10px solid #40E0D0;
         /*border-bottom:5px solid #40E0D0;*/
    }
    .check-container .s2{
        background-color: #fdfdfd;
         border-radius:50%;
        -webkit-border-radius:50%;
        -moz-border-radius:50%;
        -ms-border-radius:50%;
        -o-border-radius:50%;
        color: green;
        opacity: 0.6;
        font-size:350%;
        margin: 30px;
        padding: 10px;
        box-shadow: 0 0 10px #00bba9;
    }
     .check-container .s3{
        background-color: #fdfdfd;
         border-radius:50%;
        -webkit-border-radius:50%;
        -moz-border-radius:50%;
        -ms-border-radius:50%;
        -o-border-radius:50%;
        color:red;
        opacity: 0.6;
        font-size:350%;
        margin: 30px;
        padding: 10px;
        box-shadow: 0 0 10px #00bba9;
    }
    .popup-message-container p{
        margin-top:15px;
        color: #b8bdc8;
    }
    .ok{
        background-color: #00bba9;
        border:transparent;
        border-radius: 10px;
        -webkit-border-radius:10px;
        -moz-border-radius:10px;
        -ms-border-radius:10px;
        -o-border-radius:10px;
        padding: 15px;
        font-size: 90%;
        margin-top: 5px;
        width:25%;
        color: #fff;
        cursor: pointer; 
        transition: 0.3s;
        -webkit-transition:0.3s;
        -moz-transition:0.3s;
        -ms-transition:0.3s;
        -o-transition:0.3s;
    }
    .active3{
        opacity: 1;
        z-index: 1;
    }
    #banner{
      background-image:linear-gradient(to right,#0d6cb9,#fff);
      color: #fff;
      padding-top:13%;
    }
  .promo-tittle{
      font-size: 30px;
      font-weight: 600;
      margin-top: 100px;
      margin-right:2rem;
   }
   .play-btn{
       width: 45px;
      margin: 20px; 
   }
   #banner a{
       color:#fff;
       text-decoration: none;
   }
   .botttom-img{
       width: 100%;   
   }
     #services{
       padding:20px 0;
       background:#fff;
   }
   .title::before{
       content: '';
       background-image:linear-gradient(to right,#0d6cb9,#fff);
       height: 5px;
       width: 300px;
       margin-left: auto;
       margin-right: auto;
       display: block;
       transform: translateY(63px);
   }
   .title::after{
       content: '';
       background-image:linear-gradient(to right,#0d6cb9,#fff);
       height:20px;
       width: 100px;
       margin-left: auto;
       margin-right: auto;
       margin-bottom: 5px;
       display: block;
       transform: translateY(20px);
   }
   #services1{
       padding:10px 0;
   }
   .title1::before{
       content: '';
       background-image:linear-gradient(to right,#0d6cb9,#fff);
       height: 5px;
       width: 300px;
       margin-left: auto;
       margin-right: auto;
       display: block;
       transform: translateY(37px);
   }
   .title1::after{
       content: '';
       background-image:linear-gradient(to right,#0d6cb9,#fff);
       height:10px;
       width: 100px;
       margin-left: auto;
       margin-right: auto;
       margin-bottom: 5px;
       display: block;
       transform: translateY(10px);
   }
    .popup5{
        position: fixed;
        left: 0;
        top: 0;
        overflow-y: auto;
        overflow-x: hidden;
        background-color: rgba(114, 107, 107, 0.5);
        transition: 0.5s;
        -webkit-transition:0.5s;
        -moz-transition:0.5s;
        -ms-transition:0.5s;
        -o-transition:0.5s;
        z-index: -1;
        width:100vw;
        height:100vh;
        user-select: none;
        opacity: 0;
    }
    .popup-box5{
        background-color: #fdfdfd;
        width: 800px;
        height:70vh;
        text-align: center;
        position: absolute;
        left:50%;
        top:16%;
        transform: translate(-50%);
        -webkit-transform: translate(-50%);
        -moz-transform: translate(-50%);
        -ms-transform: translate(-50%);
        -o-transform: translate(-50%);
        border-radius: 10px;
        -webkit-border-radius:10px;
        -moz-border-radius:10px;
        -ms-border-radius:10px;
        -o-border-radius:10px;
         border-top:10px solid #40E0D0;
         
         /*border-bottom:5px solid #40E0D0;*/
    }
    .active5{
        opacity: 1;
        z-index: 1;
    }
    .mes{
        border: none;
        border-bottom:3px solid #03A3F4;
        width:300px;
        margin-left:1rem;
        text-align: center;
        background:#fff;
        
    }
    .area{
        margin-top:2rem;
        margin-left:5rem;
        text-align:left;
        margin-right:5rem;
    }
    .send-btn{
        margin-top:0.3rem;
    }
    .send-btn button{
           width:200px;
           background:#03A3F4;
           color:#fff;
           border:none;
           border-radius:50px;
    }
    .cancle-btn{
        float:right;
    }
    .cancle-btn button{
           width:30px;
           background:#fff;
           border:none;
    }
    .send{
        background-image:linear-gradient(to right,#0d6cb9,#fff);
        color:#fff;
        border:none;
    }
    #h h1:nth-child(1){
    animation-delay: 1s;
}
#h h1:nth-child(2){
    animation-delay: 2s;
}
#h h1:nth-child(3){
    animation: text_reveal_name .5s ease forwards;
    animation-delay: 3s;
}
#h h1 span{
    position: absolute;
    left: 0;
    top: 0;
    height: 100%;
    width: 0;
    background:linear-gradient(to right,#0d6cb9,#fff);
    animation:text_reveal_box 1s ease;
    animation-delay: 1s;
}
#h h1:nth-child(1) span{
    animation-delay: .5s;
}
#h h1:nth-child(2) span{
    animation-delay: 1.5s;
}
#h h1:nth-child(3) span{
    animation-delay: 2.5s;
}
#h::after{
    content: "";
    position: absolute;
    left: 0;
    top: 0;
    height: 100%;
    width: 100%;
    background-color: black;
    opacity: 0.7;
    z-index: -1;
}
#h .h{
    max-width: 600px;
    margin: 0 auto;
    padding: 0 50px;
    justify-content: flex-start;
}
#h h1{
    display: block;
    width: fit-content;
    font-size: 3rem;
    position: relative;
    color: transparent;
    animation: text_reveal .5s ease forwards;
    animation-delay: 1.5s;
}
    @keyframes text_reveal_box{
    50%{
        width: 100%;
        left: 0;
    }
    100%{
        width: 0;
        left: 100%;
    }
}
@keyframes text_reveal{
    100%{
       color: white;
    }
}
@keyframes text_reveal_name{
    100%{
       color: rgb(8, 240, 209);
       font-weight: 500;
    }
}
        .popup2{
        position: fixed;
        left: 0;
        top: 0;
        overflow-y: auto;
        overflow-x: hidden;
        background-color: rgba(114, 107, 107, 0.5);
        transition: 0.5s;
        -webkit-transition:0.5s;
        -moz-transition:0.5s;
        -ms-transition:0.5s;
        -o-transition:0.5s;
        z-index: -1;
        width:100vw;
        height:100vh;
        user-select: none;
        opacity: 0;
    }
         .popup6{
        position: fixed;
        left: 0;
        top: 0;
        overflow-y: auto;
        overflow-x: hidden;
        background-color: rgba(114, 107, 107, 0.5);
        transition: 0.5s;
        -webkit-transition:0.5s;
        -moz-transition:0.5s;
        -ms-transition:0.5s;
        -o-transition:0.5s;
        z-index: -1;
        width:100vw;
        height:100vh;
        user-select: none;
        opacity: 0;
    }
     .popup-box2{
        background-color: #fdfdfd;
        width: 700px;
        height:63vh;
        text-align: center;
        position: absolute;
        left:50%;
        top:15%;
        transform: translate(-50%);
        -webkit-transform: translate(-50%);
        -moz-transform: translate(-50%);
        -ms-transform: translate(-50%);
        -o-transform: translate(-50%);
        border-radius: 10px;
        -webkit-border-radius:10px;
        -moz-border-radius:10px;
        -ms-border-radius:10px;
        -o-border-radius:10px;
         border-top:5px solid #40E0D0;
         padding-top:1rem;
         background:#fff;
    }
     .popup-message-container1 p{
        margin-top:15px;
        color: #b8bdc8;
    }
     .active3{
        opacity: 1;
        z-index: 1;
    }
   .cardbox2{
    position: relative;
    width: 100%;
    display: grid;
    grid-template-columns: repeat(1,1fr);
    grid-gap:30px;
    background:#fff;
}
   .cardbox2 .card3{
    position: relative;
    display:flex;
    justify-content:space-between;
    align-items:flex-start;
    padding:5px;
    background:#fff;
    }
label{
    color:#b8bdc8;
}    
.datetime{
            color: #fff;
            background: #0d6cb9;
            font-family: "Segio UI",sans-serif;
            width: 380px;
            padding: 5px 10px;
            border: 3px solid #2E94E3;
            border-radius: 5px;
            -webkit-box-reflect:below 1px linear-gradient(transparent,rgba(255,255,255,0.4));
            transition: 0.5s;
            transition-property: background, box-shadow;
            margin-top:2rem;
        }
        .datetime:hover{
            background: #2E94E3;
            box-shadow: 0 0 30px #2E94E3;
        }
        .date{
            font-size: 20px;
            font-weight: 600;
            text-align: center;
            letter-spacing: 3px;
        }
        .time{
            font-size: 60px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .time span:not(:last-child){
            position: relative;
            margin: 0 6px;
            font-weight: 600;
            text-align: center;
            letter-spacing: 3px;
        }
        .time span:last-child{
            background: #2E94E3;
            font-size:30px;
            font-weight: 600;
            text-transform: uppercase;
            margin-top: 10px;
            padding: 0 5px;
            border-radius: 3px;
        }
        .date span{
            color:#fff;
            font-size: 20px;
            font-weight: 600;
            text-align: center;
            letter-spacing: 3px;
        }
        .time span{
            color:#fff;
            font-size: 60px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
      .popup-box7{
        background:#fff;
        width: 900px;
        height:80vh;
        text-align: center;
        position: absolute;
        left:55%;
        top:10%;
        transform: translate(-50%);
        -webkit-transform: translate(-50%);
        -moz-transform: translate(-50%);
        -ms-transform: translate(-50%);
        -o-transform: translate(-50%);
        border-radius: 10px;
        -webkit-border-radius:10px;
        -moz-border-radius:10px;
        -ms-border-radius:10px;
        -o-border-radius:10px;
         border-top:10px solid #8e2de2;
    }
    .popup-message-containerll{
    position:relative;
    width: 110%;
    left:-5%;
    top:15px;
    padding:15px 0px;
    text-align:left;
    color:#fff;
    background-color:#8e2de2;
    background:linear-gradient(to right,#4a00e0,#8e2de2);
}
.popup-message-containerll:before{
    position:absolute;
    content:'';
    left:0;
    bottom:-20px;
    width:45px;
    height:20px;
    background-color:#5f2bc2;
    clip-path:polygon(0 0,100% 0,100% 100%);
}
.popup-message-containerll:after{
    position:absolute;
    content:'';
    right:0;
    bottom:-20px;
    width:45px;
    height:20px;
    background-color:#5f2bc2;
    clip-path:polygon(0 0,0 100%,100% 0);
}
.popup-message-containerll h1{
    text-transform:uppercase;
    font-size:22px;
    font-weight:700;
    margin:0px;
    margin-left:30rem;
    text-align:center;
    
}
.bg{
    background:#fff;
    margin-top:2rem;
    height:250px;
    margin-left:7rem;
}
.drag-area2{
        border: 1px dashed #9658fe;
        height:300px;
        width: 500px;
        border-radius: 5px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }
    .drag-area2 .icon{
        font-size: 80px;
        color:#9658fe;
    }
    .drag-area2 .heade2{
        font-size: 20px;
        font-weight: 500;
        color:#9658fe;
    }
    .drag-area2 span{
        font-size:13px;
        font-weight: 500;
        color:#9658fe;
        margin: 10px 0 15px 0;
    }
    .drag-area2 button{
        padding: 10px 25px;
        font-size: 20px;
        font-weight: 500;
        border: 1px solid beige;
        outline: none;
        background-color:#9658fe;
        color: black;
        border-radius: 5px;
        cursor: pointer;
    }
    .drag-area2.active{
        border: 1px solid rgb(143, 47, 47);
    }
    .dv{
        width:100%;
        height:50px;
        display: flex;
        justify-content:center;
        align-items: center;
        margin-left:5rem;
        /*margin-right:5rem;*/
        
    }
    .but{
         padding: 10px 25px;
        font-size: 20px;
        font-weight: 500;
        border: 1px solid beige;
        outline: none;
        background-color: #fff;
        color: black;
        border-radius: 5px;
        cursor: pointer;
        margin-left:1rem;
    }
    .but:hover{
        background:#03A3F4;
        color: #fff;
    }
    .h41{
        font-size: 15px;
        font-weight: 500;
        color: #9658fe;
        padding-top:1rem;
    }
    .btn-1{
    background-color: #ffffff;
    border: none;
    padding: 5px 40px;
    border-radius: 30px;
    color:var(--main-color);
    font-size: 16px;
    text-transform: capitalize;
    transition: all 0.5s ease;
    box-shadow: var(--shadow-black-300);
    font-weight: 500;
    /*float:right;*/
   margin-left:38rem;
   text-align:left;
   margin-top:3rem;
}
.btn-1:focus{
    box-shadow: var(--shadow-black-300);
}
.btn-1:hover{
    color: #ffffff;
    background-color: var(--main-color);
}
    </style>
    </head>
    <body onload="initClock();">
         <%
          String password=request.getParameter("password");
          String username=request.getParameter("username"); 
          String msg=request.getParameter("msg");
          StringBuilder message=new StringBuilder();
            char a1;
                 for(int i=1;i<msg.length()-1;i++){
                 a1=msg.charAt(i);
//              out.print(a+"<br/>");
                message.append(a1);
            }
            String message1=String.valueOf(message);
//          String msg=request.getParameter("msg");
          StringBuilder decripted=new StringBuilder();
            char a;
                 for(int i=1;i<username.length()-1;i++){
                a=username.charAt(i);
//              out.print(a+"<br/>");
                decripted.append(a);
            }
            String username1=String.valueOf(decripted);
        %>
                               <div class="popup2">
                                           <div class="popup-box7">
                                          <div class="popup-message-containerll">
                                              <div>
                                                  <div class="row ">
                                                      <div class="col-md-11" style="text-align: center;">
                                                          <h2 style="font-size:1.4rem;padding-left:7rem;">Chenging Your Profile</h2>
                                                      </div>
                                                       <div class="col-md-1">
                                                          <button class="ok1" style="margin-right:3rem;background:#fff;border:none;color:black; background-color:#8e2de2;" onclick="cancile();">
                                                       <i class="fas fa-times"></i>
                                                          </button>
                                                      </div>
                                                  </div>
                                                   
                                              </div>
                                            </div>
                                          <% 
                                             String m="";
                                             m=request.getParameter("ms");
            
                                          %>
                                               <section class="bg">
                                                   <div class="container">
                                                       <div class="row ">
                                                           <div class="col-md-4">
                                                               <form class="forms2" action="" method="post" enctype="multipart/form-data">
                                                                      <div style="width:100%; background:#fff;height:280px;text-align:left;">
                                                                      <!--<label style="width:700px;color:#b8bdc8;font-size:1.5rem;font-weight:500;padding-left:5rem;background:#fff;"><%=m%></label>-->
                                                                           <div style="width:100%; background:#fff;height:180px;text-align:right;padding-left:6rem;">
                                                                             <div class="drag-area2">
                                                                               <div class="icon"><i class="fas fa-cloud-upload-alt"></i></div>
                                                                                <h3 class="heade2">Drag & Drop  to Upload Your Profile Here</h3>
                                                                                <span>OR</span>
                                                                                <button class="button2">
                                                                                    Browse File
                                                                                </button>
                                                                                <input type="file" hidden class="in3" name="file" id="file2">
                                                                                 <h4 class="h41"></h4>
                                                                                </div>
                                                                                </div>
                                                                       </div>
                                                                  
                                                                            <input type="submit" value="Submit" class="btn-1"/>
                                                                   
                                                                </form>
                                                                      
                                                               </div>  
                                                       </div>
                                                   </div>
                                               </section>
                                               
                                          </div>
                                          </div>
        <%
             if("view".equals(msg)){
        %>
                         
                                  <div class="popup6 active3">
                                       <div class="popup-box2">
                                          <div class="popup-message-container1">
                                              <div style="display:flex;justify-content: space-between;align-items: center;">
                                                   <p style="margin-left:13rem;font-size:1.5rem; color:#92a1a1;">your full personal information </p>
                                                   <button class="ok1" style="margin-right:2rem;background:#fff;border:none;" onclick="cancile1();">
                                                       <i class="fas fa-times"></i>
                                                   </button>
                                              </div>
                                              <hr/>
                                              <div class="cardbox2">
                                                 <div class="card3">
                                                     <c:forEach items="${single}" var="single">
                                                            <div style="width:40%;height:200px;background:#fff;">
                                                                <div style="text-align:left;margin-left:3rem;" ><img src="pro/${proName}" alt="" style="width:100px;height:100px;"></div>
                                                                <div style="text-align:left;margin-left:3rem;">
                                                                      <label>Employee Id: ${single.employeeId}</label><br/>
                                                                      <label>Status:  ${single.status}</label>
                                                                </div>
                                                            </div>
                                                            <div style="width:60%;height:200px;text-align:left;background:#fff;">
                                                                <label>Full Name: ${single.fname} ${single.mname} ${single.lname}</label><br/>
                                                                <label>gender: ${single.gender}</label><br/>
                                                                <label>Phone Number:  ${single.phoneNumber}</label><br/>
                                                                <label>Department: ${single.department}</label><br/>
                                                                <label>Password: ${single.password}</label><br/>
                                                                
                                                            </div>
                                                             </c:forEach>
                                                 </div>
                                              </div>
                                        </div>
                                               <hr/>
                                               <a href="javascript:void(0);"><button id="ok" class="ok" style="background:green;color:#fff;"><i class="fas fa-print"></i>Print</button></a>
                                          </div>
                                          </div>
        
        
        <%  
             } 
        %>
       <header class="hed navbar-shrink">
        <div class="nav_left">
            <div class="logo"><h1><span>I</span>NSA <span>C</span>MS</h1></div>
            <ul style="text-align:center;margin-left:8rem;font-weight:600;">
                <li><a  href="AllEmployeeWork?password=<%=password%>&&action=back"><i class="fas fa-arrow-left"></i>Back</a></li>
                <li><a  href="AllEmployeeWork?password=<%=password%>&&action=Veiw&&found=copysend">Veiw My Info</a></li>
                <li><a href="AllEmployeeWork?password=<%=password%>&&action=sendCopyRequest">Send Copy Request</a></li>
                <li><button class="send">Send  Message</button></li>
              </ul>
        </div>
                <div class="right" style="padding-right:3rem;">
                    <div class="nav-user-icon online" onclick="settingsMenuToggler();">
                 <img src="pro/${proName}" alt="">
                <i class="fas fa-angle-down"></i>
                 </div>
<!--            <div class="userName">
                <h5><%=username1%></h5>
            </div>-->
        </div>
            <!-- setting menu start-->
            <div class="setting-menu">
                <div class="setting-menu-inner">
                    <div class="user-profile">
                    <img src="pro/${proName}" alt="">
                    <div>
                           <p><%=username1%></p>
                           <small>Employee</small>
                    </div>
                </div>
                     <hr/>
                <div class="user-profile">
                   <i class="fas fa-user-circle i"></i>
                    <div>
                           <p>Change Your Profile</p>
                           <a href="#" style="color:blue;" onclick="popUp();">click here to change</a>
                    </div>
                </div>
                <div class="user-profile">
                     <i class="fas fa-cog i"></i>
                    <div>
                           <p>Setting</p>
                           <a href="#" style="color:blue;">For Setting click here</a>
                    </div>
                </div>
                    <div class="user-profile">
                     <i class="fas fa-sign-out-alt i"></i>
                    <div>
                           <p>Logout</p>
                           <a href="logout.jsp?status=employee" style="color:blue;">To logout click here</a>
                    </div>
                </div>
                </div>
            </div>
              <!-- setting menu ends-->
    </header>
            
            <!-- start baner section -->
        <section id="banner">
           <div class="container">
               <div class="row">
                    <div class="col-md-6 text-center" >
                            <div class="home-img">
                                 <div class="circle">
                                 </div>
                                     <img src="IMG/undraw_quitting_time_dm-8-t.svg" class="img-fluid" alt="">
                             </div>
                           
                        </div>
                      <div class="col-md-6">
                          <div id="h" style="margin-top:0.5rem;">
                            <h1 style="font-size: 30px;">Welcome Employee to<span></span></h1>
                            <h1  style="font-size: 30px;">CMS Web Site<span></span></h1>
                            <h1  style="font-size: 20px;">Every Things Becomes simple<span></span></h1>
                            <div>
        <div class="datetime">
            <div class="date">
                <span id="dayname">Day</span>,
                <span id="month">Month</span>
                <span id="daynum">00</span>,
                <span id="year">Year</span>
            </div>
            <div class="time">
                <span id="hour">00</span>:
                <span id="minutes">00</span>:
                <span id="second">00</span>
                <span id="period">AM</span>
            </div>
        </div>
    </div> 
                          </div>
                        </div>
               </div>
           </div>
           <img src="IMG/wave1.png" class="botttom-img" alt="">
       </section>
    <!-- end of the banner section -->
            <section id="services">
           <div class="container text-center">
               <h1 class="title" style="color:#acacac;">TO SEND COPY REQUEST</h1>
           </div>
       </section>
         <div class="datatable1">
                <div class="listOfallAdmtin" >
                    <div class="cardbox1">
                                  <%
                                  if(message1.equals("valid")){
                                      %>
                                        <div class="popup active3">
                                           <div class="popup-box">
                                             <div class="check-container">
                                                  <i class="fas fa-check s2"></i>
                                             </div>
                                          <div class="popup-message-container">
                                              <h1 style="font-size:2rem;color:#485563;">THANK YOU</h1>
                                               <p>your operation was successfully done</p>
                                            </div>
                                          <button class="ok">OK</button>
                                          </div>
                                          </div>
                                 <%
                                  }
                                  else if(message1.equals("invalid"))
                                  { 
                                      %>
                                      
                                        <div class="popup active3">
                                           <div class="popup-box">
                                             <div class="check-container">
                                                 <i class="fas fa-times s3"></i>
                                             </div>
                                          <div class="popup-message-container">
                                              <h1 style="font-size:2rem;color:red;">SORRY?</h1>
                                              <p style="color:red;">your operation was not successfully done</p>
                                            </div>
                                          <button class="ok">OK</button>
                                          </div>
                                          </div>
                                  <%
                                  }                                 
                                  %>
                <div class="card1" style="width:900px;height:700px;text-align:left;background:#fff;">
                    <h3 style="color:#acacac;">Fill The Following faild correctly to send order</h3>
                    <form class="forms" action="" method="post" enctype="multipart/form-data"/>
                    <div style="width:100%;background:#fff;height:180px;margin-top:3rem;text-align:center;">
                        <div>
                            <span style="color:#565e64;"><label style="padding-right:2rem;font-size:1rem;font-weight:500;text-align:right;">Number Of Page:</label><input type="number" name="page" style="width:500px;height:30px;background:#fff;color:#acacac;border:1px solid #F5F5F5;margin:.5rem;" min="0"  id="page"/><br/></span>
                            <span style="color:#565e64;"><label style="padding-right:1rem;font-size:1rem;font-weight:500;text-align:right;">Delivary Date:</label><input type="date" name="date" style="margin-left:2rem;width:500px;height:30px;background:#fff;color:#acacac;border:1px solid #F5F5F5;margin-bottom:.5rem;margin-top:.5rem;" id="date"/><br/></span>
                                    <span style="color:#565e64;"><label style="padding-right:0.3rem;font-size:1rem;font-weight:500;">Deliverd By:</label><select style="margin-left:3.5rem;width:500px;height:30px;background:#fff;color:#acacac;border:1px solid #F5F5F5;margin-bottom:.5rem;margin-top:.5rem;" name="by">
                                            <option>My Self</option>
                                             <c:forEach items="${assList}" var="all">
                                                <option value="${all.fname} ${all.mname} ${all.lname}">${all.fname} ${all.mname} ${all.lname}</option>
                                             </c:forEach>
                                     </select><br/></span>
                            <!--<span style="color:#565e64;"><label style="padding-right:2rem;font-size:1rem;font-weight:500;">Number Of Page:</label><input type="number" style="width:500px;height:30px;background:#fff;color:#acacac;border:1px solid #F5F5F5;margin:.5rem;"/><br/></span>-->
                              
                        </div>
                    </div >
                    <div style="width:100%;background:#fff;height:280px;text-align:left;">
                        <label style="color:#000;margin-left:8rem;font-size:1rem;font-weight:500;">File:</label>
                        <div style="width:100%;background:#fff;height:200px;text-align:right;padding-left:15rem;">
                                 <div class="drag-area">
                                <div class="icon"><i class="fas fa-cloud-upload-alt"></i></div>
                                <h3 class="heade">Drag & Drop  to Upload File</h3>
                                             <span>OR</span>
                                              <button class="button">
                                                  Browse File
                                              </button>
                                      <input type="file" hidden class="in" name="file" id="files">
                                      <h4 class="h4"></h4>
                                 </div>
                        </div>
                    </div>
                    <div class="dv">
                        <input type="submit" value="send" class="but"/>
                        <input type="reset" value="Reset"class="but"/>
                    </div>
                    
                    </form>
             </div>
                <div class="card1" style="width:300px; height:300px;">
                    <div style="height:40px;width:100%;background:#fff;color:#565e64;text-align: center;">
                        <h4>Full Information of Order Sender</h4>
                    </div>
                    <div style="width:100%;height:130px;background:#fff;color:#565e64;margin-top:2rem;"> 
                        <c:forEach items="${find}" var="find">
                            <label>Full Name:</label><span>  ${find.fname} ${find.mname} ${find.lname}</span><br/>
                        <label>Phone Number: </label><span>${find.phoneNumber}</span><br/>
                        <label>Gender: </label><span> ${find.gender}</span><br/>
                        <label>Department: </label><span>  ${find.department}</span><br/>
                        <label>Password: </label><span>  ${find.password}</span><br/>
                        </c:forEach>
                       
                    </div>
                </div>
            </div>
                </div>
              </div> 
                
    <!--start of the message popup window-->
                                           <div class="popup5">
                                           <div class="popup-box5">
                                                <section id="services1">
                                                     <div class="container text-center">
                                                         <div class="cancle-btn"><button class="ok6">
                                                                 <i class="fas fa-times"></i>
                                                             </button></div>   
                                                      <h1 class="title1" style="color:#0b5ed7;font-size:1rem;padding-left:4rem;">TO SEND MESSAGE TO ORDER ADMIN </h1>
                                                      <h1 style="color:#acacac;margin-top:2rem;margin-bottom:1rem;"><i style="margin-right:1rem;color:#03A3F4;" class="fas fa-comment-alt"></i> Message Us</h1>
                                                      <label style="color:#acacac;">Full Name Of Sender:</label><input class="mes" type="text" value="<%=username1%>" disabled="true">
                                                       
                                                <form action="AllMessageOperation?password=<%=password%>&&from=copysend" method="post">
                                                      <div class="area">
                                                      <textarea id="textarea" cols="30" rows="10" placeholder="writte here to send message" name="message"></textarea>
                                                      </div>
                                                      <div class="send-btn">
                                                          <button type="submit"><i class="fas fa-paper-plane"></i>Send</button>
                                                      </div>
                                                </form>
                                                     
                                                     </div>
                                                </section>
                                   
                                          </div>
                                          </div>
                            
        
        <!--end of the message popup window-->
                <footer>
        <div class="waves">
            <div class="wave" id="wave1"></div>
            <div class="wave" id="wave2"></div>
            <div class="wave" id="wave3"></div>
            <div class="wave" id="wave4"></div>
        </div>
      <p>&copy;2014 INSA CMS website|All right Reserved</p>
    </footer>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <!--<script src="j.js"></script>-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="jquery.PrintArea.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/emojionearea/3.4.2/emojionearea.min.js"></script>
    <script src="bootstrap-5.1.0-dist/js/bootstrap.min.js"></script>
    <script src="fontawesome-free-5.15.4-web/js/all.min.js"></script>
            <script>
        const dropArea2=document.querySelector(".drag-area2");
        const dropText2=document.querySelector(".heade2");
        const button2=document.querySelector(".button2");
        const input3=document.querySelector(".in3");
        const h41=document.querySelector(".h41");
        const formData2=new FormData();
        let file2;     
         button2.onclick=(e)=>{
             input3.click();
             e.preventDefault();
         }  
         input3.addEventListener('change',function(){
             file2=this.files[0];
             h41.textContent=file2.name;
         });
        dropArea2.addEventListener("dragover",(event)=>{
            event.preventDefault();
            dropArea2.classList.add('active');
            dropText2.textContent="Release to Uploade File";
        });
        dropArea2.addEventListener("dragleave",()=>{
            dropArea2.classList.remove('active');
            dropText2.textContent="Drag & Drop to Uploade File";
        });
        dropArea2.addEventListener("drop", (event) =>{
            event.preventDefault();
            input3.files=event.dataTransfer.files;
            h41.textContent=event.dataTransfer.files[0].name;
        });
        var forms2=document.querySelector(".forms2");
        forms2.addEventListener("submit",(event)=>{
                   event.preventDefault();
                   check2();
                   
        }); 
        function check2(){
            var files112=document.getElementById('file2').value;
            if(files112==""){
               alert("please select  the img file first");
               return false;
            }
            else{
                   var exit12=files112.substring(files112.lastIndexOf('.')+1);  
                   if(exit12=="png"||exit12=="jpg"||exit12=="jpeg"){
                       document.forms[0].action="AllEmployeeWork?action=update_profile&&password=<%=password%>&&found=copysend";
                       document.forms[0].submit();
                   }
                   else{
                       alert("select png jpg or jpeg image file only");
                       return false;
                   }
            }
        }    
        const dropArea=document.querySelector(".drag-area");
        const dropText=document.querySelector(".heade");
        const button=document.querySelector(".button");
        const input=document.querySelector(".in");
        const h4=document.querySelector(".h4");
        const formData=new FormData();
        let file;     
         button.onclick=(e)=>{
             input.click();
             e.preventDefault();
         }  
         input.addEventListener('change',function(){
             file=this.files[0];
             h4.textContent=file.name;
         });
        dropArea.addEventListener("dragover",(event)=>{
            event.preventDefault();
            dropArea.classList.add('active');
            dropText.textContent="Release to Uploade File";
        });
        dropArea.addEventListener("dragleave",()=>{
            dropArea.classList.remove('active');
            dropText.textContent="Drag & Drop to Uploade File";
        });
        dropArea.addEventListener("drop", (event) =>{
            event.preventDefault();
           input.files=event.dataTransfer.files;
            h4.textContent=event.dataTransfer.files[0].name;
        });
        var forms=document.querySelector(".forms");
        forms.addEventListener("submit",(event)=>{
                   event.preventDefault();
                   check();
        });
        function check(){
            var page=document.getElementById('page').value;
            var files1=document.getElementById('files').value;
            var date=document.getElementById('date').value;
            if(page==""){
               alert("please enter page number that will be copied");
               return false;
            }
            if(date==""){
               alert("please select the delivery date");
               return false;
            }
            if(files1==""){
               alert("please select  the file first");
               return false;
            }
            else{
                   var exit=files1.substring(files1.lastIndexOf('.')+1);
                   if(exit=="pdf"){
                       document.forms[1].action="checking1?password=<%=password%>";
                       document.forms[1].submit();
                   }
                   else{
                       alert("select only pdf file");
                       return false;
                   }
            }
        }  
         function updateClock(){
              var now=new Date(),
                  dname=now.getDay(),
                  mo=now.getMonth(),
                  dnumm=now.getDate(),
                  yr=now.getFullYear(),
                  hou=now.getHours(),
                  min=now.getMinutes(),
                  sec=now.getSeconds(),
                  pe="AM";
                  if(hou ==0){
                      hou=12;
                  }
                  if(hou>12){
                      hou=hou-12;
                      pe="PM";
                  }
                  Number.prototype.pad=function(digites){
                      for(var n=this.toString();n.length<digites;n=0+n);
                          return n;
                      
                  }
                  var months=["January","February","March","April","May","June","July","Augest","September","October","November","December"];
                  var week=["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
                  var ids=["dayname","month","daynum","year","hour","minutes","second","period"];
                  var values=[ week[dname],months[mo], dnumm.pad(2), yr,hou.pad(2),min.pad(2),sec.pad(2),pe];
                  for(var i=0;i<ids.length;i++)
                       document.getElementById(ids[i]).firstChild.nodeValue=values[i];
                  
                }
        function initClock(){
            updateClock();
            window.setInterval("updateClock()",1)
        }
           $('#textarea').emojioneArea({
                    pickerPosition:'bottom'
                 });
                  $(document).ready(function(){
            $("#ok").click(function(){
                var mode='iframe';
                var close = mode == "popup";
                var options={mode:mode,popClose:close};
                $("div.cardbox2").printArea(options);
            });
        });
         function settingsMenuToggler(){
            var settingsmenu=document.querySelector(".setting-menu");
            settingsmenu.classList.toggle("setting-menu-height");  
        }
       const send=document.querySelector('.send');
       const ok4=document.querySelector('.ok6');
       const cona1l=document.querySelector('.popup5');
          send.addEventListener('click',()=>{
            cona1l.classList.add('active5');
              });
         ok4.addEventListener('click',()=>{
         cona1l.classList.remove('active5');
        });
        const ok2=document.querySelector('.ok');
        const cona1=document.querySelector('.popup');
        ok2.addEventListener('click',()=>{
            cona1.classList.remove('active3');
        });
         const ok3=document.querySelector('.ok1');
        const cona1ll=document.querySelector('.popup2');
        ok3.addEventListener('click',()=>{
            cona1ll.classList.remove('active3');
        })
        
         function cancile1(){
            const cl2=document.querySelector('.popup6');
            cl2.classList.remove('active3');
        }
                function popUp(){
            const cl=document.querySelector('.popup2');
            cl.classList.add('active3');
       }
        function cancile(){
            const cl=document.querySelector('.popup2');
            cl.classList.remove('active3');
        }
        
</script>
    </body>
</html>
