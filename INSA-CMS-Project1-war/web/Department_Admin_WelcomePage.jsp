<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Department Admin Dashboard</title>
     <link rel="stylesheet" href="fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/fixedheader/3.2.0/css/fixedHeader.bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.bootstrap.min.css">
    <link rel="stylesheet" href="CSS/admin.css">
     <script language="JavaScript" type="text/javascript">
            window.history.forward(1);
      </script>
    <style>
        :root{
    --main-color:#7857fe;
    --color-1:#e91e63;
    --color-2:#f5ae10;
    --color-3:#09d69c;
    --bg-dark:#2b2c2f;
    --main-to-dark-color:var(--main-color);
    --dark-to-main-color:var(--bg-dark);
    --shadow-black-100:0 5px 15px rgba(0,0,0,0.1);
    --shadow-black-300:0 5px 15px rgba(0,0,0,0.3);
    --black-900:#000000;
    --black-400:#555555;
    --black-100:#f7f7f7;
    --black-000:#ffffff;
    --black-alpha-100:rgba(0,0,0,0.05);
}
    .popup-overlay{
        position: fixed;
        left: 0;
        top: 0;
        overflow-y: auto;
        overflow-x: hidden;
        background-color: rgba(114, 107, 107, 0.3);
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
    .popup-box-container{
        background-color: #fdfdfd;
        width: 900px;
        height: 80vh;
        text-align: center;
        position: absolute;
        left:52%;
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
        box-shadow:0 2px 5px rgba(0,0,0,0.3);
        overflow:hidden;
    }
    .check-container .s{
        background-color: #fdfdfd;
        border-radius:50%;
        -webkit-border-radius:50%;
        -moz-border-radius:50%;
        -ms-border-radius:50%;
        -o-border-radius:50%;
        color: green;
        opacity: 0.6;
        font-size: 250%;
        margin: 50px;
        padding: 10px;
        box-shadow: 0 0 10px #00bba9;
    }
    .check-container .s3{
        background-color:red;
        border-radius:50%;
        -webkit-border-radius:50%;
        -moz-border-radius:50%;
        -ms-border-radius:50%;
        -o-border-radius:50%;
        color:white;
        opacity: 0.6;
        font-size: 500%;
        margin:30px;
        padding: 10px;
        box-shadow: 0 0 10px #00bba9;
    }
    .popup-message-container p{
        margin-top:8px;
        color: #b8bdc8;
    }
    .ok-btn{
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
    .active{
        opacity: 1;
        z-index: 1;
    }
    .top-container{
         width:100%;
         height:8vh;
         display:flex;
         justify-content: space-between;
         align-items: center;
         background:blue;
         opacity:0.5;
    }
    .text{
        padding-left:30rem;
        opacity:1;
        color:#fff;
     }
     .bt{
         padding-right:2rem;
         font-size: 2rem;
         color:black;
     }
     .cancel-btn{
         border:0;
         background:blue;
     }
     .cancel-btn:hover{
         opacity:1;
         color:#fff;
     }
     .con{
          width:98%;
          box-shadow:0 2px 5px rgba(0,0,0,0.3);
          margin:1rem;
     }
     .form{
         padding: 30px 40px;
         background:#fff;
      }
      .form-controler{
          margin-bottom: 10px;
          padding-bottom:20px;
          position:relative;
      }
      .form-controler1{
           margin-bottom: 10px;
          padding-bottom:20px;
          position:relative;
      }
      .form-controler1 label{
          display:inline-block;
          margin-bottom:5px;
      }
      .form-controler label{
          display:inline-block;
          margin-bottom:5px;
      }
       .form-controler1 input{
          border:2px solid #f0f0f0;
          border-radius:4px;
          display:block;
          font-family:inherit;
          font-size:14px;
          padding:5px;
          width:100%;
          
      }
      .form-controler input{
          border:2px solid #f0f0f0;
          border-radius:4px;
          display:block;
          font-family:inherit;
          font-size:14px;
          padding:5px;
          width:250px;
          margin-right:1rem;
      }
      .form-controler1.success input{
          border-color:#2ecc71;
       }
       .form-controler1.success input:after{
          background: #e74c3c;
       }
      .form-controler1.error input{
           border-color:red;
      }
      .form-controler1 .f{
          position: absolute;
          top:40px;
          right:10px;
          visibility:hidden;
      }
      .form-controler1.success .f.fa-check-circle{
          visibility:visible;
          color:green;
      }
      .form-controler1.error .f.fa-exclamation-circle{
          visibility:visible;
          color:red;
      }
      .form-controler1 small{
          visibility: hidden;
          position:absolute;
          bottom:0;
          left:0;
      }
      .form-controler1.error small{
          color: red;
          visibility:visible;
      }
      .form-controler input{
          border:2px solid #f0f0f0;
          border-radius:4px;
          display:block;
          font-family:inherit;
          font-size:14px;
          padding:5px;
          width:250px;
          margin-right:1rem;
      }
      .form-controler.success input{
          border-color:#2ecc71;
       }
       .form-controler.success input:after{
          background: #e74c3c;
       }
      .form-controler.error input{
           border-color:red;
      }
      .form-controler .f{
          position: absolute;
          top:40px;
          right:10px;
          visibility:hidden;
      }
      .form-controler.success .f.fa-check-circle{
          visibility:visible;
          color:green;
      }
      .form-controler.error .f.fa-exclamation-circle{
          visibility:visible;
          color:red;
      }
      .form-controler small{
          visibility: hidden;
          position:absolute;
          bottom:0;
          left:0;
      }
      .form-controler.error small{
          color: red;
          visibility:visible;
      }
      .form .button1{
          background:blue
          border-radius:4px;
          color:#fff;
          font-family:inherit;
          padding:10px;
          width:40%;
          
      }
       .form .button2{
          background:buttonface;
          border-radius:4px;
          color:#fff;
          font-family:inherit;
          padding:10px;
          width:40%;
          
      }
      .buy-btn{
        background-color:#fff;
        border:transparent;
        border-radius: 10px;
        -webkit-border-radius:10px;
        -moz-border-radius:10px;
        -ms-border-radius:10px;
        -o-border-radius:10px;
        padding: 15px;
        font-size:90%;
        margin-top: 5px;
        width:80px;
        height:40px;
        color: green;
        cursor: pointer;
        transition: 0.3s;
        -webkit-transition:0.3s;
        -moz-transition:0.3s;
        -ms-transition:0.3s;
        -o-transition:0.3s;
    }
    .buy-btn:hover{
        border:1px solid aqua;
        background:green;
        color:#fff;
    }
    .topCont{
         display:flex;
         justify-content: space-between;
         align-items: center;
         background:#fff;
    }
    .centerCont{
        display:flex;
         justify-content: space-between;
         align-items: center;
    }
     .popup1{
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
        width: 400px;
        height:50vh;
        text-align: center;
        position: absolute;
        left: 50%;
        top: 20%;
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
    .popup-box1{
        background-color: #fdfdfd;
        width: 700px;
        height:25vh;
        text-align: center;
        position: absolute;
        left:55%;
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
    .lu{
        color:red;
        border: none;
        background:#fff;
    }
    .lu:hover{
        color:#fff;
        border:1px solid crimson;
        background:crimson;
    }
    .popup-overlay1{
        position: fixed;
        left: 0;
        top: 0;
        overflow-y: auto;
        overflow-x: hidden;
        background-color: rgba(114, 107, 107, 0.3);
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
    .active4{
        opacity: 1;
        z-index: 1;
    }
     .popup-box-container1{
        background-color: #fdfdfd;
        width: 900px;
        height: 80vh;
        text-align: center;
        position: absolute;
        left:52%;
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
        box-shadow:0 2px 5px rgba(0,0,0,0.3);
        overflow:hidden;
    }
    .bt{
         padding-right:2rem;
         font-size: 2rem;
         color:black;
     }
     .cancel-btn1{
         border:0;
         background:blue;
     }
     .cancel-btn1:hover{
         opacity:1;
         color:#fff;
     }
      .popup3{
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
    .popup31{
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
        height:60vh;
        text-align: center;
        position: absolute;
        left:55%;
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
    }
    .popup-box7{
        background-color:#fff;
        width: 900px;
        height:80vh;
        text-align: center;
        position: absolute;
        left:55%;
        top:5%;
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
    .active5{
        opacity: 1;
        z-index: 1;
    }
    .active51{
        opacity: 1;
        z-index: 1;
    }
    .cardbox1{
    position: relative;
    width: 100%;
    display: grid;
    grid-template-columns: repeat(1,1fr);
    grid-gap:30px;
}
.cardbox1 .card{
    position: relative;
    display:flex;
    justify-content:space-between;
    align-items:flex-start;
    padding:5px;
}
label{
    color:#b8bdc8;
}
.popup-message-containerll{
    position:relative;
    width: 110%;
    left:-5%;
    top:15px;
    padding:15px 0px;
    text-align:center;
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
    margin-top:1.5rem;
    height:400px;
    margin-left:8rem;
}
.form-wrap{
   width:700px; 
   position:relative;
   background-color:#fff;
}
#orderForm{
    padding:50px 30px 30px 30px;
}
#orderForm label{
    text-transform:uppercase;
    font-size:12px;
    font-weight:600;
    width:230px;
    padding-top:2.3rem;
}
.form-control{
    border:none;
    padding: 0px;
    border-bottom:2px solid #b5b5b5;
    border-radius:0px;
    box-shadow: none;
}
.form-control:focus{
    box-shadow: none;
}
.form-g{
    display:flex;
    justify-content:space-between;
    align-items:flex-start;
    margin-bottom:1rem; 
}
.btn-primary{
    background-color:#8e2de2;
    border:none;
    margin:20px 0px 0px 0px;
    text-transform:capitalize;
    font-size: 14px;
    font-weight:600;
    background:linear-gradient(to right,#4a00e0,#8e2de2);
}
#submit{
    margin-top:8rem;
    width:200px;
    margin-left:2rem;
}
#reset{
     margin-top:8rem;
    width:200px;
}
  .popup-box71{
        background:#fff;
        width: 700px;
        height:70vh;
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
.bg2{
    background:#fff;
    margin-top:2rem;
    height:250px;
    margin-left:1.7rem;
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
    .drag-area2 .icon2{
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
    .drag-area2 .button3{
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
    .h42{
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
   margin-left:43rem;
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
.drag-area2 .in2{
    visibility:hidden;
}
    </style>
</head>
<body>
    <%
        String msg=request.getParameter("msg");
        String from=request.getParameter("from");
        String give=request.getParameter("give");
        String password=request.getParameter("password");
    %>  
    <div class="popup31">
                         <div class="popup-box71">
                                          <div class="popup-message-cont">
                                              <div>
                                                  <div class="row ">
                                                      <div class="col-md-11" style="text-align: center;">
                                                          <h2 style="font-size:2rem;padding-left:7rem;color:#9658fe;">Chenging Your Profile</h2>
                                                      </div>
                                                       <div class="col-md-1">
                                                          <button class="ok1" style="margin-right:3rem;background:#fff;border:none;color:black; background-color:#fff;font-size:2rem;" onclick="cancile1();">
                                                       <i class="fas fa-times"></i>
                                                          </button>
                                                      </div>
                                                  </div>
                                                   
                                              </div>
                         </div>
                             <section class="bg2">
                                                   <div class="container">
                                                       <div class="row ">
                                                           <div class="col-md-4">
                                                               <form class="forms2" action="" method="post" enctype="multipart/form-data">
                                                                      <div style="width:100%; background:#fff;height:280px;text-align:left;">
                                                                      <!--<label style="width:700px;color:#b8bdc8;font-size:1.5rem;font-weight:500;padding-left:5rem;background:#fff;"></label>-->
                                                                           <div style="width:100%; background:#fff;height:180px;text-align:right;padding-left:6rem;">
                                                                             <div class="drag-area2">
                                                                               <div class="icon2"><i class="fas fa-cloud-upload-alt"></i></div>
                                                                                <h3 class="heade2">Drag & Drop  to Upload Your Profile Here</h3>
                                                                                <span>OR</span>
                                                                                <button class="button3">
                                                                                    Browse File
                                                                                </button>
                                                                                <input type="file" hidden class="in2" name="file" id="file2">
                                                                                 <h4 class="h42"></h4>
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
    <!-- add window-->
    <div class="popup-overlay">
        <div class="popup-box-container">
            <div class="top-container">
                <div class="text">
                    <h1>Registration Form</h1>
                </div>
                <div class="bt">
                    <button class="cancel-btn"> <i class="fas fa-times"></i></button>
                </div>
            </div>
            <div class="con">
                    <form id="form" class="form" action="" method="post">
                    <div class="topCont">
                        <div class="form-controler">
                        <label>FName:</label>
                        <input type="text" placeholder="enter fname" name="fname" id="fname" class="ll"/>
                        <i class="fas fa-check-circle f"></i>
                        <i class="fas fa-exclamation-circle f"></i>
                        <small>error message</small>
                        </div>
                        <div class="form-controler">
                        <label>MName:</label>
                        <input type="text" placeholder="enter fname" name="mname" id="mname" class="ll"/>
                        <i class="fas fa-check-circle f"></i>
                        <i class="fas fa-exclamation-circle f"></i>
                        <small>error message</small>
                    </div>
                    <div class="form-controler">
                        <label>LName:</label>
                        <input type="text" placeholder="enter fname" name="lname" id="lname"/>
                        <i class="fas fa-check-circle f"></i>
                        <i class="fas fa-exclamation-circle f"></i>
                        <small>error message</small>
                    </div>
                </div>
                <div class="centerCont">
                    <div class="form-controler">
                        <label>Department:</label>
                        <input type="text" placeholder="enter department" name="department" id="department"/>
                        <i class="fas fa-check-circle f"></i>
                        <i class="fas fa-exclamation-circle f"></i>
                        <small>error message</small>
                    </div>
                    <div class="form-controler">
                        <div style="display:flex;justify-content: space-between;align-items: center;width:250px;">
                        <label>Gender:</label>
                        <input type="radio" name="gender" value="male" checked="true">Male
                        <input type="radio" name="gender" value="female">Female
                        </div>
                    </div>
                         <div class="form-controler">
                        <label>Phone Number:</label>
                        <input type="number" placeholder="enter department" name="phone" id="phone"/>
                        <small>error message</small>
                        </div>        
                </div>
                <div style="width:100%;">
                        <div class="form-controler1">
                        <label>Password:</label>
                        <input type="password" placeholder="enter password" name="pass" id="pass" width="100%;"/>
                        <i class="fas fa-check-circle f"></i>
                        <i class="fas fa-exclamation-circle f"></i>
                        <small>error message</small>
                        </div>
                </div>
                <div style="width:100%;">
                         <div class="form-controler1">
                        <label>Department:</label>
                        <select name="status" style="width:200px;height:30px;">
                            <option value="dadmin">dadmin</option>
                        </select>
                    </div>
                </div>
                          <span>
                              <input type="submit" value="Add"  class="button1"/>
                              <input type="reset" value="Reset" class="button2"/>
                          </span>
                </form>
            </div>  
            </div>
            </div>
             
        </div>
    </div>
     <div class="containera">
         <div class="navigation">
             <ul>
                 <li><a href="#">
                     <span class="title" style="color:#005cbf;font-size:2rem;padding-top:1rem;">INSA-CMS</span>
                 </a></li>
                 <li><a href="#">
                    <span class="icon"><i class="fas fa-tasks"></i></span>
                    <span class="title">M-Admin</span>
                </a></li>
                <li><a href="AllDAdminWork2?action=employee&&password=<%=password%>">
                    <span class="icon"><i class="fas fa-users"></i></span>
                    <span class="title">M-Employee</span>
                </a></li>
                <li><a href="AllDAdminWork2?action=assistance">
                    <span class="icon"><i class="fas fa-briefcase"></i></span>
                    <span class="title">M-Assistance</span>
                </a></li>
                 <li><a href="AllDAdminWork2?action=sendArchivefrom_admin&&password=<%=password%>">
                    <span class="icon"><i class="fas fa-file-import"></i></span>
                    <span class="title">Send Archive Order</span>
                </a></li>
                <li><a href="logout.jsp?status=dadmin">
                    <span class="icon"><i class="fas fa-sign-out-alt"></i></span>
                    <span class="title">Logout</span>
                </a></li>
             </ul>
         </div>
         <!-- main-->
         <section>
         <div class="main">
             <div class="topbar navbar-shrink" style="background:#fff;">
                 <div class="toggle">
                     <i class="fas fa-bars"></i>
                      
                 </div>
                 <div class="search"><label>
<!--                     <input type="text" placeholder="Search here">
                     <i class="fas fa-search icon"></i>-->
                     <a href="#" onclick="popUp();"><i class="fas fa-user-circle"></i> Change My Profile</a>
                 </label>
                </div>
                <div class="user">
                     <div class="nav-user-icon online">
                        <img src="pro/${proName}" alt="">
                      <i class="fas fa-angle-down"></i>
                 </div>
                   
                </div>
             </div> 
            <!-- card -->
            <div class="cardbox">
                <div class="card">
                    <div>
                        <div class="numbers">${allEmp}</div>
                        <div class="cardName">Employeers</div>
                    </div>
                    <div class="iconBox">
                        <i class="fas fa-users"></i>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="numbers">${allAssist}</div>
                        <div class="cardName">Assistaces</div>
                    </div>
                    <div class="iconBox">
                       <i class="fas fa-briefcase"></i>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="numbers">${allAdmin}</div>
                        <div class="cardName">Admins</div>
                    </div>
                    <div class="iconBox">
                       <i class="fas fa-user-shield"></i>
                    </div>
                </div>
            </div>
            <!--data table-->
            <div class="datatable">
                <div class="listOfallAdmtin">
                    <div class="cardHeader">
                        <h3>All List Of Admins</h3>
                                         <%
                                         if("valid".equals(msg)&&"add".equals(from))
                                                {
                                               %>
                                         <div class="popup1 active3">
                                           <div class="popup-box">
                                             <div class="check-container">
                                                  <i class="fas fa-check s2"></i>
                                             </div>
                                          <div class="popup-message-container">
                                              <h1 style="font-size:4rem;">THANK YOU</h1>
                                               <p>your operation was successfully done</p>
                                            </div>
                                               <button class="ok" onclick="clicking();">OK</button>
                                          </div>
                                          </div>
                                         <%
                                          }
                                         else if("invalid".equals(msg)&&"add".equals(from)){
                                             %>
                                             <div class="popup1 active3">
                                           <div class="popup-box">
                                             <div class="check-container">
                                                 <i class="fas fa-times s3"></i>
                                             </div>
                                          <div class="popup-message-container">
                                              <h1 style="font-size:4rem;color:red;">SORRY?</h1>
                                              <p style="color:red;">your operation was not successfully done</p>
                                            </div>
                                          <button class="ok">OK</button>
                                          </div>
                                          </div>
                                         <%
                                             }
                                         else if("permition".equals(give)){
                                              String pas=request.getParameter("pass");
                                              StringBuilder me=new StringBuilder();
                                              char a11;
                                              for(int i=1;i<pas.length()-1;i++){
                                              a11=pas.charAt(i);
                                              //              out.print(a+"<br/>");
                                              me.append(a11);
                                               }
                                              String ms=String.valueOf(me);
                                          %>
                                            <div class="popup2 active3">
                                           <div class="popup-box1">
                                          <div class="popup-message-container1">
                                              <div style="display:flex;justify-content: space-between;align-items: center;">
                                                   <p style="margin-left:15rem;font-size:2rem;">your operation was not successfully done</p>
                                                   <button class="ok1" style="margin-right:3rem;background:#fff;border:none;" onclick="cancile();">
                                                       <i class="fas fa-times"></i>
                                                   </button>
                                              </div>
                                             
                                              <hr/>
                                            </div>
                                               <a href="AllDAdminWork2?singlep=<%=ms%>&&action=delete&&permission=yes&&password=<%=password%>"><button class="ok" style="background:red;color:#fff;">YES</button></a>
                                          </div>
                                          </div>
                                         <%
                                         }
                                         else if("view".equals(msg)){
                                         %>
                                         <div class="popup2 active3">
                                           <div class="popup-box2">
                                          <div class="popup-message-container">
                                              <div style="display:flex;justify-content: space-between;align-items: center;">
                                                   <p style="margin-left:15rem;font-size:2rem;">your operation was not successfully done</p>
                                                   <button class="ok1" style="margin-right:3rem;background:#fff;border:none;" onclick="cancile();">
                                                       <i class="fas fa-times"></i>
                                                   </button>
                                              </div>
                                              <hr/>
                                              <div class="cardbox1">
                                                        <div class="card">
                                                             <c:forEach items="${single}" var="single">
                                                            <div style="width:40%;height:200px;">
                                                                <div style="text-align:left;margin-left:3rem;" ><img src="pro/${single.proname}" alt="" style="width:100px;height:100px;"></div>
                                                             
                                                                <div style="text-align:left;margin-left:3rem;">
                                                                      <label>Employee Id: ${single.employeeId}</label><br/>
                                                                      <label>Status:  ${single.status}</label>
                                                                </div>
                                                              
                                                            </div>
                                                            <div style="width:60%;height:200px;text-align:left;">
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
                                         else if("ok".equals(msg)){
                                           %>
                                           <div class="popup2 active3">
                                           <div class="popup-box7">
                                          <div class="popup-message-containerll">
                                              <div style="display:flex;justify-content: space-between;align-items: center;">
                                                   <h1>Sending Archive Copy Order</h1>
                                                   <button class="ok1" style="margin-right:3rem;background:#fff;border:none;color:black; background-color:#8e2de2;" onclick="cancile();">
                                                       <i class="fas fa-times"></i>
                                                   </button>
                                              </div>
                                            </div>
                                               <section class="bg">
                                                   <div class="container">
                                                       <div class="row d-flex justify-content-center">
                                                           <div class="col-md-4">
                                                               <div class="form-wrap">
                                                                   <form action="" method="post" name="orderForm" id="orderForm" class="orderForm1" >
                                                                       <div class="form-g">
                                                                           <label>Page Number:</label>
                                                                           <input type="number" min="1" name="pageNumber" class="form-control" id="pnumber"/>
                                                                       </div>
                                                                       <div class="form-g">
                                                                           <label>Delivery Date:</label>
                                                                           <input type="date"  name="deliveryDate" class="form-control" id="ddate"/>
                                                                       </div>
                                                                       <div class="form-g">
                                                                           <label>Delivered By:</label>
                                                                           <select name="deliverdBy" class="form-control">
                                                                               <option value="My Self">My Self</option>
                                                                               <c:forEach items="${allAssistance}" var="allAssistance">
                                                                               <option value="${allAssistance.fname} ${allAssistance.mname} ${allAssistance.lname}">${allAssistance.fname} ${allAssistance.mname} ${allAssistance.lname}</option>
                                                                                </c:forEach>
                                                                           </select>
                                                                       </div>
                                                                       <div class="form-g">
                                                                           <label>All Archive File List:</label>
                                                                           <select name="archiveFile" class="form-control" id="archfile">
                                                                           <c:forEach items="${allArchive}" var="allArchive">
                                                                               <option value="${allArchive.filename}">${allArchive.filename}</option>
                                                                           </c:forEach>
                                                                        </select>
                                                                       </div>
                                                                       <div class="form-g">
                                                                           <input type="submit" value="Submit" class="btn btn-primary btn-block" id="reset"/>
                                                                           <input type="reset" class="btn btn-primary btn-block" id="reset"/>
                                                                       </div>
                                                                   </form>
                                                               </div>
                                                           </div>
                                                       </div>
                                                   </div>
                                               </section>
                                               
                                          </div>
                                          </div>
                                         <%
                                         } 
                                         %>
                                         
                        <span>
                            <button class="buy-btn"><i class="fas fa-plus"></i>Add</button>
                            <a href="AllDAdminWork2?action=refresh&&password=<%=password%>">
                                <button><i class="fas fa-sync-alt"></i></button>
                            </a> 
                        </span> 
                    </div>
                    <div style="overflow:auto;">
                         <table id="example" class="table table-striped table-bordered nowrap" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>Employee</th>
                                        <th>Full Name</th>
                                        <th>gender</th>
                                        <th>Phone Number</th>
                                        <th>Password</th>
                                        <th>Profile</th>
                                        <th>Status</th>
                                        <th>View</th>
                                        <th>Update</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${allad}" var="all">        
                                <tr>
                                    <td>${all.employeeId}</td>
                                    <td>${all.fname} ${all.mname} ${all.lname}</td>
                                    <td>${all.gender}</td>
                                    <td>${all.phoneNumber}</td>
                                    <td>${all.password}</td>
                                    <td>None</td>
                                    <td>${all.status}</td>
                                    <td><a href="AllDAdminWork2?singlep=${all.password}&&action=view&&password=<%=password%>"><button><i class="fas fa-address-card"></i></button></a></td>
                                    <td><a href="AllDAdminWork2?singlep=${all.password}&&action=retrive&&password=<%=password%>"><button><i class="fas fa-edit"></i></button></td></a>
                                    <td><a href="AllDAdminWork2?singlep=${all.password}&&action=delete&&password=<%=password%>&&permission=none"><button class="lu"><i class="fas fa-trash-alt"></i></button></a></td>
                                </tr>
                                    </c:forEach>
                                </tbody>
                            </table> 
                    </div>
                </div>
            </div>
         </div>
     </section>
     </div>
      <script src="JS/jquery.main.js"></script>
     <script src="jquery.PrintArea.js"></script>
     <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
     <script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap.min.js"></script>
     <script src="https://cdn.datatables.net/fixedheader/3.2.0/js/dataTables.fixedHeader.min.js"></script>
     <script src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.min.js"></script>
     <script src="https://cdn.datatables.net/responsive/2.2.9/js/responsive.bootstrap.min.js"></script>
      <script src="fontawesome-free-5.15.4-web/js/all.min.js"></script>
<script>
    $(document).ready(function(){
            $("#ok").click(function(){
                var mode='iframe';
                var close = mode == "popup";
                var options={mode:mode,popClose:close};
                $("div.cardbox1").printArea(options);
            });
        });
    let toggle=document.querySelector('.toggle');
    let navigation=document.querySelector('.navigation');
    let main=document.querySelector('.main');
    let con=document.querySelector('.listOfallAdmtin');
   toggle.onclick=function(){
       navigation.classList.toggle('active');
       main.classList.toggle('active');
       con.classList.toggle('act');
   }
        const buy=document.querySelector('.buy-btn');
        const conatainer=document.querySelector('.popup-overlay');
        const ok=document.querySelector('.cancel-btn');
        buy.addEventListener('click',()=>{
            conatainer.classList.add('active')
        })
        ok.addEventListener('click',()=>{
            conatainer.classList.remove('active')
        })
    let list=document.querySelectorAll('.navigation li');
    function activelink(){
        list.forEach((item)=>
        item.classList.remove('hovered'));
        this.classList.add('hovered');
    }
     list.forEach((item)=>
     item.addEventListener('mouseover',activelink));
             $(document).ready(function() {
    var table = $('#example').DataTable( {
        responsive: true
    } );
    new $.fn.dataTable.FixedHeader( table );
} );
    const dropArea=document.querySelector(".drag-area2");
        const dropText=document.querySelector(".heade2");
        const button=document.querySelector(".button3");
        const input=document.querySelector(".in2");
        const h4=document.querySelector(".h42");
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
        var forms=document.querySelector(".forms2");
        forms.addEventListener("submit",(event)=>{
                   event.preventDefault();
                   check1();
        }); 
        function check1(){
            var files11=document.getElementById('file2').value;
            if(files11==""){
               alert("please select  the img file first");
               
               return false;
            }
            else{
                   var exit1=files11.substring(files11.lastIndexOf('.')+1);
                   if(exit1=="png"||exit1=="jpg"||exit1=="jpeg"){
                       document.forms[0].action="AllDAdminWork2?action=update_profile&&password=<%=password%>";
                       document.forms[0].submit();
                   }
                   else{
                       alert("select png jpg or jpeg image file only");
                       return false;
                   }
            }
        }
    var form=document.getElementById('form');
    var fname=document.getElementById('fname');
    var mname=document.getElementById('mname');
    var lname=document.getElementById('lname');
    var pass=document.getElementById('pass');
    var  department=document.getElementById('department');
    var f='';
    var m='';
    var l='';
    var ll='';
    var p='';
    form.addEventListener('submit',(e)=>{
    e.preventDefault();
    checkAll();
    });
    function checkAll(){
     f=fname.value.trim();
     m=mname.value.trim();
     l=lname.value.trim();
     ll=department.value.trim();
     p=pass.value.trim();
    if(f === '')
    {
        if(m!=''||l!=''||ll!=''||p!=''){
              setErrorFor(fname,"first name cannot be blank");
        }
    }
    else{
        setSuccessFor(fname);
    }
    if(m === '')
    {
         if(f!=''||l!=''||ll!=''||p!=''){
              setErrorFor(mname,"first name cannot be blank");
         }
    }
    else{
        setSuccessFor(mname);
    }
    if(l === '')
    {
         if(m!=''||f!=''||ll!=''||p!=''){
        setErrorFor(lname,"last name cannot be blank");
        }
    
    }
    else{
        setSuccessFor(lname);
    }
     if(ll === '')
    {
        if(m!=''||l!=''||f!=''||p!=''){
        setErrorFor(department,"department name cannot be blank");
        }
    }
    else{
        setSuccessFor(department);
    }
     if(p === '')
    {
        if(m!=''||l!=''||f!=''||ll!=''){
        setErrorFor(pass,"password name cannot be blank");
        }
    }
    else{
        setSuccessFor(pass);
    }
    if(f === ''&&m === ''&&l === ''&&ll === ''&&p === '')
    {
        if(f===''){
            setErrorFor(fname,"first name cannot be blank");
        }
        if(m===''){
            setErrorFor(mname,"first name cannot be blank");
        }
        if(l===''){
             setErrorFor(lname,"last name cannot be blank");
        }
        if(ll===''){
             setErrorFor(department,"department name cannot be blank");
        }
        if(p===''){
             setErrorFor(pass,"password name cannot be blank");
        }
    }
}
function  setErrorFor(input,msg){
    const formControl=input.parentElement;
    const small=formControl.querySelector('small');
    small.innerText=msg;
    formControl.className='form-controler error';
}
function setSuccessFor(input){
     const formControl=input.parentElement;
     formControl.className='form-controler success';
     if(f!=''&&m!=''&&l!=''&&ll!=''&&p!=''){
       document.forms[1].action="AllDAdminWork2?action=add&&password=<%=password%>";
       document.forms[1].submit();
     }
           }
            var orderForm=document.querySelector(".orderForm1");
                   orderForm.addEventListener("submit",(event)=>{
                   event.preventDefault();
                   check2();
                });
        function check2(){
            var pnumber=document.getElementById('pnumber').value;
            var ddate=document.getElementById('ddate').value;
            var archfile=document.getElementById('archfile').value;
            if(pnumber==""){
               alert("please enter the page number first");
               return false;
            }
            if(ddate==""){
               alert("please enter the delivery date first");
               
               return false;
            }
            else{
                   var exit2=archfile.substring(archfile.lastIndexOf('.')+1);
                   if(exit2=="pdf"){
                       
                       document.forms[2].action="AllDAdminWork2?action=doneSend&&password=<%=password%>";
                       document.forms[2].submit();
                   }
                   else{
                       alert("select only pdf file");
                       return false;
                   }
            }
        }
       
        const cr=document.querySelector('.popup3');
        const or=document.querySelector('.ok3');
        or.addEventListener('click',()=>{
              
            cr.classList.remove('active5');
        })
                  function clicking(){
            const conap=document.querySelector('.popup1');
            conap.classList.remove('active3');
        }
        
                    function cancile(){
                        const cona1=document.querySelector('.popup2');
                          cona1.classList.remove('active3');
                     }
                     function popUp(){
                    const cl=document.querySelector('.popup31');
                    cl.classList.add('active51');
                    } 
                   function cancile1(){
                        const cona1=document.querySelector('.popup31');
                          cona1.classList.remove('active51');
                     }
</script>
</body>
</html>
