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
    <style>
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
        background:#fff;
        width: 700px;
        height: 85vh;
        text-align: center;
        position: absolute;
        left:57%;
        top:8%;
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
        border-top:7px solid #40E0D0;
        
        
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
          background:blue;
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
     .popup-box2{
        background-color: #fdfdfd;
        width: 900px;
        height:90vh;
        text-align: center;
        position: absolute;
        left:55%;
        top:1%;
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
    .active5{
        opacity: 1;
        z-index: 1;
    }
   
    .cardbox1{
    position: relative;
    width: 100%;
    display: grid;
    grid-template-columns: repeat(1,1fr);
    grid-gap:30px;
     background:#fff;
}
.cardbox1 .card{
    position: relative;
    display:flex;
    justify-content:space-between;
    align-items:flex-start;
    padding:5px;
     background:#fff;
}
/*label{
    color:#b8bdc8;
}*/
.graphBox{
    position: relative;
    width:100%;
    display: grid;
    grid-template-columns:2fr;
    grid-gap:30px;
    min-height:200px;
}
.box{
    position:relative;
    background:#fff;
    widows: 100%;
    /*box-shadow:0 7px 25px rgba(0,0,0,0.08);*/
    border-radius:20px;
    text-align:left;
    color:#000;
    padding-left:5rem;
    
}
.box3{
    position:relative;
    background:#fff;
    widows: 100%;
    /*box-shadow:0 7px 25px rgba(0,0,0,0.08);*/
    border-radius:20px;
    text-align:left;
    color:#000;
    padding-left:5rem;
    visibility:hidden;
    
}
.box3.active6{
     visibility:visible;
     
}
.view.active7{
     visibility:hide;
}
.t{
     height:55px;
     background: #fff;
}
.op_body{
    width:100%;
    height:360px;
    background:#fff;
    text-align:center;
}
.title1{
    font-size:2.5rem;
}
 .title1::before{
       content: '';
       background-image:linear-gradient(to right,#0d6cb9,#fff);
       height: 5px;
       width: 300px;
       margin-left: auto;
       margin-right: auto;
       display: block;
       transform: translateY(45px);
   }
   .title1::after{
       content: '';
       background-image:linear-gradient(to right,#0d6cb9,#fff);
       height:15px;
       width: 100px;
       margin-left: auto;
       margin-right: auto;
       margin-bottom: 5px;
       display: block;
       transform: translateY(10px);
   }
   .button_area{
       float:left;
       //padding-right:2rem;
      margin-left:5rem;
   }
   .bu{
       width:100px;
       height:30px;
   }
   .drag-area{
        border: 1px dashed rgb(12, 9, 9);
        height:280px;
        width: 400px;
        border-radius: 5px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }
    .drag-area .icon{
        font-size: 80px;
        color: rgb(248, 245, 245);
    }
    .drag-area .heade{
        font-size: 15px;
        font-weight: 500;
        color: rgb(207, 199, 199);
    }
    .drag-area span{
        font-size:13px;
        font-weight: 500;
        color: rgb(233, 227, 227);
        margin: 10px 0 15px 0;
    }
    .drag-area button{
        padding: 10px 25px;
        font-size: 20px;
        font-weight: 500;
        border: 1px solid beige;
        outline: none;
        background-color: #fff;
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
    .drag-area1{
        border: 1px dashed rgb(12, 9, 9);
        height:280px;
        width: 400px;
        border-radius: 5px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }
    .drag-area1 .icon{
        font-size: 80px;
        color: rgb(248, 245, 245);
    }
    .drag-area1 .heade1{
        font-size: 15px;
        font-weight: 500;
        color: rgb(207, 199, 199);
    }
    .drag-area1 span{
        font-size:13px;
        font-weight: 500;
        color: rgb(233, 227, 227);
        margin: 10px 0 15px 0;
    }
    .drag-area1 button{
        padding: 10px 25px;
        font-size: 20px;
        font-weight: 500;
        border: 1px solid beige;
        outline: none;
        background-color: #fff;
        color: black;
        border-radius: 5px;
        cursor: pointer;
    }
    .drag-area1.active{
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
        color: rgb(207, 199, 199);
        padding-top:1rem;
    }
    .popup4{
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
    .active8{
        opacity: 1;
        z-index: 1;
    }
    </style>
</head>
<body>
    <%
        String msg=request.getParameter("msg");
        String from=request.getParameter("from");
        String give=request.getParameter("give");
        String password=request.getParameter("password");
        StringBuilder pass=new StringBuilder();
                             char a1;
                            for(int i=1;i<password.length()-1;i++){
                                   a1=password.charAt(i);
//                                 out.print(a+"<br/>");
                                   pass.append(a1);
                              }
                            String orignal_pass=String.valueOf(pass);
                          int fileID=0;
    %>  
    <!-- add window-->
<!--     <div class="bt">
                    <button class="cancel-btn"> <i class="fas fa-times"></i></button>
                </div>-->
    <div class="popup-overlay">
        <div class="popup-box-container">
            <div class="t"><h1 class="title1" style="color:#b8bdc8;">Adding Archive File</h1></div>
            <hr/>  
            <form class="forms" action="" method="post" enctype="multipart/form-data">
                 <div class="op_body">
                <div style="margin-right:10rem;margin-left:10rem;height:100%;background:#fff;text-align: left;">
                    <label  style="color:#b8bdc8;font-size:1.5rem;font-weight:500;">Description:<input type="text" style="text-align:center;width:393px;height:30px;background:#fff;color:#acacac;border:1px solid #F5F5F5;margin-left:2rem;" id="description" name="description"/></label>
                    <div style="width:100%;background:#fff;height:280px;text-align:left;">
                        <label style="color:#b8bdc8;font-size:1.5rem;font-weight:500;padding-left:5rem;">File:</label>
                        <div style="width:100%;background:#fff;height:180px;text-align:right;padding-left:10rem;">
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
                </div>
            </div>
            <div class="button_area">
                <input type="submit" value="Submit"/>
               
            </div>
            </form>
            <button class="bu cancel-btn" style="float:right;margin-right: 2rem;">Cancle</button>
            </div>
             
        </div>
     <div class="containera">
         <div class="navigation">
             <ul>
                 <li><a href="#">
                     <span class="title" style="color:#0000002c;font-size:3rem;padding-top:1rem;padding-right:1rem;">INSA-CMS</span>
                 </a></li>
                 <li><a href="#">
                    <span class="icon"><i class="fas fa-home"></i></span>
                    <span class="title">Normal copy Order</span>
                </a></li>
                <li><a href="AllDAdminWork?action=employee">
                    <span class="icon"><i class="fas fa-users"></i></span>
                    <span class="title">Archive Order</span>
                </a></li>
                  <li><a href="ArchiveFile.jsp">
                    <span class="icon"><i class="fas fa-briefcase"></i></span>
                    <span class="title">Archive File</span>
                </a></li>
                <li><a href="AllDAdminWork?action=assistance">
                    <span class="icon"><i class="fas fa-briefcase"></i></span>
                    <span class="title">Message Request</span>
                </a></li>
                <li><a href="#">
                    <span class="icon"><i class="fas fa-cogs"></i></span>
                    <span class="title">Setting</span>
                </a></li>
                <li><a href="logout.jsp?status=oadmin">
                    <span class="icon"><i class="fas fa-sign-out-alt"></i></span>
                    <span class="title">Logout</span>
                </a></li>
             </ul>
         </div>
         <!-- main-->
         <section>
         <div class="main">
             <div class="topbar">
                 <div class="toggle">
                     <i class="fas fa-bars"></i>
                 </div>
                 <div class="search"><label>
                     <input type="text" placeholder="Search here">
                     <i class="fas fa-search icon"></i>
                 </label>
                </div>
                <div class="user">
                    <img src="IMG/images.jpg" alt="">
                </div>
             </div> 
            <!-- card -->
            <div class="cardbox">
                <div class="card" style="opacity:0;">
                </div>
                <div class="card">
                    <div>
                        <div class="numbers">${no_normal_order}</div>
                        <div class="cardName">Archive File</div>
                    </div>
                    <div class="iconBox">
                       <i class="fas fa-briefcase"></i>
                    </div>
                </div>
                <div class="card" style="opacity:0;">
                </div>
            </div>
                                     <%
                                         
                                        if("display".equals(msg)){
                                                    String fileId=request.getParameter("fileId");
                                                      StringBuilder Id=new StringBuilder();
                                                         char c;
                                                        for(int i=1;i<fileId.length()-1;i++){
                                                            c=fileId.charAt(i);
                                                        Id.append(c);
                                         }
                                                     String orignal_Id=String.valueOf(Id);
                                                      fileID=Integer.parseInt(orignal_Id);
                                                     
                                         %>
                                          <div class="popup-overlay active3">
                                                    <div class="popup-box-container">
                                                        <div class="t"><h1 class="title1" style="color:#b8bdc8;">Updating Archive File</h1></div>
                                                        <hr/>  
                                           <form class="forms1" action="" method="post" enctype="multipart/form-data">
                                                 <div class="op_body">
                                                <c:forEach var="l" items="${allFile}">
                                                   <div style="margin-right:10rem;margin-left:10rem;height:100%;background:#fff;text-align: left;">
                                                       <label  style="color:#b8bdc8;font-size:1.5rem;font-weight:500;">Description:<input type="text" style="text-align:center;width:393px;height:30px;background:#fff;color:#acacac;border:1px solid #F5F5F5;margin-left:2rem;" id="description1" name="description1" value="${l.discription}"/></label>
                                                   <div style="width:100%;background:#fff;height:280px;text-align:left;">
                                                      <label style="color:#b8bdc8;font-size:1.5rem;font-weight:500;padding-left:5rem;">File:</label>
                                                   <div style="width:100%;background:#fff;height:180px;text-align:right;padding-left:10rem;">
                                                              <div class="drag-area1">
                                                              <div class="icon"><i class="fas fa-cloud-upload-alt"></i></div>
                                                              <h3 class="heade1">Drag & Drop  to Upload File</h3>
                                                                                <span>OR</span>
                                                              <button class="button1">
                                                                         Browse File
                                                              </button>
                                                <input type="file" hidden class="in1" name="file1" id="files1" >
                                                     <h4 class="h41"></h4>
                                                              </div>
                                                    </div>
                                                 </div>
                                                </div>
                                            </c:forEach>
                                              </div>
                             <div class="button_area">
                                         <input type="submit" value="Submit"/>
                              </div>
                                        </form>
                                             <button class="bu cancel-btn1" style="float:right;margin-right: 2rem;">Cancle</button>
                                      </div>
             
                                 </div>
                                         <%
                                        }
                                              if("permition".equals(give)){
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
                                    <div class="popup4 active8">
                                      <div class="popup-box1">
                                          <div class="popup-message-container1">
                                              <div style="display:flex;justify-content: space-between;align-items: center;">
                                                   <p style="margin-left:15rem;font-size:2rem;">your operation was not successfully done</p>
                                                   <button onclick="popup();" style="margin-right:3rem;background:#fff;border:none;">
                                                       <i class="fas fa-times"></i>
                                                   </button>
                                              </div>
                                             
                                              <hr/>
                                            </div>
                                               <a href="AllOrderAdmin_Works?fileId=<%=ms%>&&action=delete&&permission=yes&&password=<%=orignal_pass%>&&types=archive_file&&from2=archive_file"><button class="ok" style="background:red;color:#fff;">YES</button></a>
                                          </div>
                                          </div>
                                     <%
                                         }
                                      %>
                                    
            <!--data table-->
            <div class="datatable">
                <div class="listOfallAdmtin">
                    <div class="cardHeader">
                        <h3>All List Of Archive File</h3>
                        <span>
                            <button class="buy-btn"><i class="fas fa-plus-circle"></i> File</button>
                            <a href="AllOrderAdmin_Works?action=refresh&&for=file&&password=<%=orignal_pass%>&&from=file">
                                <button><i class="fas fa-sync-alt"></i></button>
                            </a> 
                        </span> 
                    </div>
                    <div style="overflow:auto;">
                         <table id="example" class="table table-striped table-bordered nowrap" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>File Id</th>
                                        <th>File_Name</th>
                                        <th>File Size</th>
                                        <th>File Uploader</th>
                                        <th>Description</th>
                                        <th>Update</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${allFile}" var="all">        
                                <tr>
                                    <td>${all.fileId}</td>
                                    <td>${all.filename}</td>
                                    <td>${all.filesize}</td>
                                    <td>Order Admin</td>
                                    <td>${all.discription}</td>
                                    <td><a href="AllOrderAdmin_Works?action=update_file&&fileId=${all.fileId}&&password=<%=orignal_pass%>"><button><i class="fas fa-pen-alarchive_filet"></i></button></a></td>
                                    <td><a href="AllOrderAdmin_Works?fileId=${all.fileId}&&action=delete&&permission=none&&password=<%=orignal_pass%>&&types=archive_file&&from2=archive_file"><button class="lu"><i class="fas fa-trash-alt"></i></button></a></td>
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
     <script src="https://cdn.jsdelivr.net/npm/chart.js@3.5.1/dist/chart.min.js"></script>
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
        
        const buy=document.querySelector('.buy-btn');
        const conatainer=document.querySelector('.popup-overlay');
        const ok=document.querySelector('.cancel-btn');
        buy.addEventListener('click',()=>{
            conatainer.classList.add('active')
        })
        ok.addEventListener('click',()=>{
            conatainer.classList.remove('active')
        })
    let toggle=document.querySelector('.toggle');
    let navigation=document.querySelector('.navigation');
    let main=document.querySelector('.main');
    let con=document.querySelector('.listOfallAdmtin');
   toggle.onclick=function(){
       navigation.classList.toggle('active');
       main.classList.toggle('active');
       con.classList.toggle('act');
   }

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
        const dropArea1=document.querySelector(".drag-area1");
        const dropText1=document.querySelector(".heade1");
        const button1=document.querySelector(".button1");
        const input1=document.querySelector(".in1");
        const h41=document.querySelector(".h41");
        const formData1=new FormData();
        let file1;     
         button1.onclick =(e)=>{
             input1.click();
             e.preventDefault();
         }  
         input1.addEventListener('change',function(){
             file1=this.files[0];
             h41.textContent=file1.name;
         });
        dropArea1.addEventListener("dragover",(event)=>{
            event.preventDefault();
            dropArea1.classList.add('active');
            dropText1.textContent="Release to Uploade File";
        });
        dropArea1.addEventListener("dragleave",()=>{
            dropArea1.classList.remove('active');
            dropText1.textContent="Drag & Drop to Uploade File";
        });
        dropArea1.addEventListener("drop", (event) =>{
            event.preventDefault();
            input1.files=event.dataTransfer.files;
            h41.textContent=event.dataTransfer.files[0].name;
        });
        var forms1=document.querySelector(".forms1");
        forms1.addEventListener("submit",(event)=>{
                   event.preventDefault();
                   check1();
        });
        function check(){
            var description=document.getElementById('description').value;
            var files1=document.getElementById('files').value;
            if(description==""){
               alert("please enter some description about file");
               return false;
            }
            if(files1==""){
               alert("please select  the file first");
               
               return false;
            }
            else{
                   var exit=files1.substring(files1.lastIndexOf('.')+1);
                   if(exit=="pdf"){
                       document.forms[0].action="AllOrderAdmin_Works?action=file_upload&&password=<%=orignal_pass%>";
                       document.forms[0].submit();
                   }
                   else{
                       alert("select only pdf file");
                       return false;
                   }
            }
        }  
        function check1(){
            var description1=document.getElementById('description1').value;
            var files11=document.getElementById('files1').value;
            if(description1==""){
               alert("please enter some description about file");
               return false;
            }
            if(files11==""){
               alert("please select  the file first");
               
               return false;
            }
            else{
                   var exit1=files11.substring(files11.lastIndexOf('.')+1);
                   if(exit1=="pdf"){
                       document.forms[1].action="AllOrderAdmin_Works?password=<%=orignal_pass%>&&action=yes&&FileId=<%=fileID%>";
                       document.forms[1].submit();
                   }
                   else{
                       alert("select only pdf file");
                       return false;
                   }
            }
        }  
       function popup(){
            var cp=document.querySelector('.popup4');
            cp.classList.remove('active8');
       }
        
//        ok.addEventListener('click',()=>{
//            conatainer.classList.remove('active')
//        })
</script>
</body>
</html>

