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
                          
    %>  
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
                     <span class="title" style="color:#0000002c;font-size:3rem;padding-top:1rem;padding-right:1rem;">INSA-CMS</span>
                 </a></li>
                 <li><a href="#">
                    <span class="icon"><i class="fas fa-home"></i></span>
                    <span class="title">Normal copy Order</span>
                </a></li>
                <li><a href="AllOrderAdmin_Works?action=archive_order&&password=<%=orignal_pass%>">
                    <span class="icon"><i class="fas fa-users"></i></span>
                    <span class="title">Archive Order</span>
                </a></li>
                  <li><a href="AllOrderAdmin_Works?action=archive_file&&password=<%=orignal_pass%>">
                    <span class="icon"><i class="fas fa-briefcase"></i></span>
                    <span class="title">Archive File</span>
                </a></li>
                <li><a href="#">
                    <span class="icon"><i class="fas fa-briefcase"></i></span>
                    <span class="title">Message Request</span>
                </a></li>
                <li><a href="logout.jsp?status.oadmin">
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
                <div class="card">
                    <div>
                        <div class="numbers">${no_normal_order}</div>
                        <div class="cardName">Normal Copy Order</div>
                    </div>
                    <div class="iconBox">
                       <i class="fas fa-copy"></i>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="numbers">${no_archive_order}</div>
                        <div class="cardName">Archive Copy Order</div>
                    </div>
                    <div class="iconBox">
                       <i class="fas fa-briefcase"></i>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="numbers">${allmessage}</div>
                        <div class="cardName">Message Requested</div>
                    </div>
                    <div class="iconBox">
                      <i class="fas fa-comments"></i>
                    </div>
                </div>
            </div>

                                    <%
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
                                            <div class="popup2 active3">
                                           <div class="popup-box1">
                                          <div class="popup-message-container1">
                                              <div style="display:flex;justify-content: space-between;align-items: center;">
                                                   <p style="margin-left:15rem;font-size:2rem;">your operation was not successfully done</p>
                                                   <button class="ok1" style="margin-right:3rem;background:#fff;border:none;">
                                                       <i class="fas fa-times"></i>
                                                   </button>
                                              </div>
                                             
                                              <hr/>
                                            </div>
                                               <a href="AllOrderAdmin_Works?orderId=<%=ms%>&&action=delete&&permission=yes&&password=<%=orignal_pass%>&&types=order_nfile&&from2=normal_order"><button class="ok" style="background:red;color:#fff;">YES</button></a>
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
                                                   <p style="margin-left:30rem;font-size:2rem;">Full Information Of The Copy Order</p>
                                                   <button class="ok1" style="margin-right:3rem;background:#fff;border:none;">
                                                       <i class="fas fa-times"></i>
                                                   </button>
                                              </div>
                                              <hr/>
                                              <div class="cardbox1">
                                                        <div class="card">
                                                            <div class="graphBox">
                                                                <div class="box" style="color:black;">
                                                                       <c:forEach items="${single_order}" var="s">
                                                                           <label>Order Id: ${s.orderId}</label><br/>
                                                                           <label>File Name:${s.filename}</label><br/>
                                                                           <label>File Size:${s.filesize}</label><br/>
                                                                           <label>Delivery Date:${s.deliverydate}</label><br/>
                                                                           <label>Request Date:${s.ordereddate}</label><br/>
                                                                           <label>Delivered By:${s.deliveredby}</label><br/>
                                                                           <label>Page Number:${s.pagenumber}</label><br/>
                                                            
                                                                       </c:forEach>
                                                                         
                                                                           <button class="view" style="margin-left:65rem;">View full Detail About Sender</button>     
                                                                </div>
                                                                <div class="box3" style="padding-left:35rem;">
                                                                    <c:forEach var="detail" items="${detail}">
                                                                        <label>Employee Id: ${detail.employeeId}</label><br/>
                                                                        <label>Status:  ${detail.status}</label><br/>
                                                                        <label>Full Name: ${detail.fname} ${detail.mname} ${detail.lname}</label><br/>
                                                                        <label>gender: ${detail.gender}</label><br/>
                                                                        <label>Phone Number:  <a href="#">${detail.phoneNumber}</a></label><br/>
                                                                        <label>Department: ${detail.department}</label><br/>
                                                                       
                                                                    </c:forEach>
                                                                </div>
                                                            </div>
                                                             
                                                         </div>
                
                                               </div>
                                             <hr/>
                                              <a href="javascript:void(0);"><button id="ok" class="ok" style="background:green;color:#fff;"><i class="fas fa-print"></i>Print</button></a>
                                            </div>
                                              
                                               
                                          </div>
                                          </div>
                                         <%
                                         }
                                         %>
                                    
            <!--data table-->
            <div class="datatable">
                <div class="listOfallAdmtin">
                    <div class="cardHeader">
                        <h3>All List Of Normal Copy Order</h3>
                        <span>
                            <a href="AllOrderAdmin_Works?action=refresh&&for=order&&password=<%=orignal_pass%>&&from=normal">
                                <button><i class="fas fa-sync-alt"></i></button>
                            </a> 
                        </span> 
                    </div>
                    <div style="overflow:auto;">
                         <table id="example" class="table table-striped table-bordered nowrap" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>OrderId</th>
                                        <th>File_Name</th>
                                        <th>File Size</th>
                                        <th>DeliverdBy</th>
                                        <th>Request_Date</th>
                                        <th>Delivary_Date</th>
                                        <th>Page_No</th>
                                        <th>View</th>
                                        <th>Download</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${normal_order}" var="all">        
                                <tr>
                                    <td>${all.orderId}</td>
                                    <td>${all.filename}</td>
                                    <td>${all.filesize}</td>
                                    <td>${all.deliveredby}</td>
                                    <td>${all.ordereddate}</td>
                                    <td>${all.deliverydate}</td>
                                    <td>${all.pagenumber}</td>
                                    <td><a href="AllOrderAdmin_Works?orderId=${all.orderId}&&action=view&&password=<%=orignal_pass%>&&from3=n_order"><button><i class="fas fa-address-card"></i></button></a></td>
                                    <td><a href="Douwnload?filename=${all.filename}"><button><i class="fas fa-download"></i></button></td></a>
                                    <td><a href="AllOrderAdmin_Works?orderId=${all.orderId}&&action=delete&&permission=none&&password=<%=orignal_pass%>&&types=order_nfile&&from2=normal_order"><button class="lu"><i class="fas fa-trash-alt"></i></button></a></td>
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
        const ok2=document.querySelector('.ok1');
        const cona1=document.querySelector('.popup2');
        ok2.addEventListener('click',()=>{
            cona1.classList.remove('active3');
        });
      
        const o2=document.querySelector('.view');
        const box1=document.querySelector('.box3');
        o2.addEventListener('click',()=>{
            box1.classList.add('active6');
            
        });
       
//        ok.addEventListener('click',()=>{
//            conatainer.classList.remove('active')
//        })
</script>
</body>
</html>
