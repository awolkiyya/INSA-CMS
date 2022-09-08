<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
  <link rel="stylesheet" href="bootstrap-5.1.0-dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="fontawesome-free-5.15.4-web/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/emojionearea/3.4.2/emojionearea.min.css">
    <link rel="stylesheet" href="CSS/newStyle.css">
    <link href="CSS/sty.css" rel="stylesheet">
    <style>
h3{
    text-align: center;
    font-weight: 600;
    margin: 10px 0;
}
.footer{
    box-shadow: 0 1px 10px black;
    width:100%;   
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
#add.add{
      width:100%;
      height:750px;
      background-color:#fff;
}
#all{
      width:100%;
      height:750px;
      background-color: aquamarine;
}
#all.hide{
    display:none;
}
.top{
    width: 100%;
    height:250px;
    background-color: #ffffff;
}
.bottom{
    width: 100%;
    height:280px;
    background-color: #ffffff;
}
.f{
    text-align: right;
    padding-top: 2rem;
}
.f h2,.fill h2{
    font-size: 1.3rem;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    font-weight: 400;
    padding-right: 3rem;
    color: rgb(11, 107, 75);
}
.field{
    font-size: 0.8rem;
    padding-right:2.5rem;
    box-shadow: 0 1px 5px black;
    padding-top:3rem;
    padding-bottom:5rem;
}
.a{
    padding-right:1rem;
    padding-bottom:0.6rem;
}
input{
    width:300px;
    border:1px solid beige;
    background-color: rgb(233, 243, 240);
    height:30px;
    margin-bottom:0.3rem;
}
.fill{
     padding-top:5rem;
     text-align:center;
     background-color: #ffffff;
}
.form{
    height:450px;
    margin:1rem;
}
.form input{
      width:300px;
      margin:0.4rem;
      height:35px;
      font-size:1rem;
}
.form label{
    text-align:center;
    padding-right:10rem;
    font-size:1rem;
    color:rgb(49,58,55);
}
span .send{
    margin-top:2rem;
    width:200px;
    height:30px;
    background-color:rgb(1, 29, 24);
    color: white;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
.send:hover{
    background-color: white;
    border:1px solid green;
    color: green;
}
span .reset{
    width:200px;
    background-color: rgb(2, 99, 78);
    color: rgb(250, 10, 10);
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
.reset:hover{
    background-color: white;
    border:1px solid green;
    color: green;
}
form .selection{
    width:300px;
    height:30px;
    background-color:  rgb(233, 243, 240);
    color:darkblue;
}
button{
background-color: #47a386;
border-radius: 5px;
box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
color: #fff;
font-size:14px;
padding:10px 25px;
}
#modal-container{
   background-color:rgba(0, 0, 0, 0.3);
   display:flex;
   align-items: center;
   justify-content:center;
   position:fixed;
   opacity:0;
   pointer-events:none;
   top:0;
   left:0;
   height:100vh;
   width: 100vw;
   
}
.modal{
    background-color:#fff;
    border-radius:5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
    padding: 30px 50px;
    width:800px;
    height:400px;
    max-width:100%;
    text-align:center;
}

.modal h1{
    margin:0;
}
.modal p{
    font-size: 14px;
    opacity: 0.7;
}
#modal-container.show{
     opacity:1;
     pointer-events:auto; 
}
.center1{
    padding-top:1rem; 
}
textarea{
    width:650px;
    height:180px;
    border:1px solid #03A3F4;
    max-height:600px;
    margin-top:1rem;
    color:black;
}


    </style>  
</head>
<body>
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
    <div id="modal-container">
        <div class="modal">
            <div class="top1">
                <h4 style="font-size:2rem;background:#fff;color:buttonhighlight;"><u>Message Us</u> <button id="close" style="float:right;background:#fff;color:background;"><i class="fas fa-times"></i></button></h4>
               
            </div>
            <h4 style="padding:1rem;"></h4>
            <div class="center1">
                <form action="AllMessageOpation" method="post">
                    <label style="color:buttonhighlight;">Full Name Of Sender:</label><input type="text" value="<%=username1%>" disabled="true" style="text-align:center;background:#fff;margin-left: 1rem; "/><br/>
                <textarea placeholder="writte yout message here!"></textarea>
                <button type="submit" style="width:200px;">send</button>
                 <button type="reset" style="width:200px;">reset</button>
            </div>
                
           </form>
                
               
        </div>
    </div>
    <header>
        <div class="nav_left">
            <div class="logo"><h1><span>I</span>NSA <span>C</span>MS</h1></div>
              <ul>
                <li><a href="AllEmployeeWork?password=<%=password%>&&action=Veiw">Veiw My Info</a></li>
                <li><a href="AllEmployeeWork?password=<%=password%>&&action=sendCopyRequest">Send Copy Request</a></li>
                <button id="open" style="color:#fff;background:black;">Send Message</button>
                <li><a href="">Resived Message</a></li>
                <li><a href="">Logout</a></li>
              </ul>
        </div>
        <div class="right">
            <div class="nav-user-icon online">
                <img src="pro/l.jpg" alt="">
            </div>
            <div class="userName">
                <h5><%=username1%></h5>
            </div>
        </div>
    </header>
    <section id="add"></section>        
    <section id="all">
              <div class="top">
                       <div class="f">
                           <h2>All information About Sender</h2>
                           <div class="field">
                               <c:forEach items="${find}" var="find">
                              <label class="a" for="">Full Name:</label><input type="text" value="${find.fname} ${find.mname} ${find.lname}" disabled="true"><br/>
                              <label class="a" for="">Department:</label><input type="text" value="${find.department}" disabled="true"><br/>
                              <label class="a" for="">Phone Number:</label><input type="text" value="${find.phoneNumber}" disabled="true"><br/>
                              <label class="a" for="">Employee Id:</label><input type="text" value="${find.password}" disabled="true">
                               </c:forEach>
                           </div>
                       </div>
              </div>
              <div class="bottom">
                           <div class="fill">
                                 <h2>Fill The following information To Send Copy Request</h2>
                                 <%
                                     if(message1.equals("valid")){
                                         %>
                                         <h5 style="color:gold;font-size:1.4rem;margin-left:10rem;margin-right:10rem;">Your Copy File Will be Send Successfully With Your Full Information.</h5>
                                     <%
                                     }
                                     else if(message1.equals("invalid")){
                                         %>
                                         <h5  style="color:red;font-size:2rem;">Your Copy File Not Successfully Send Please Fill All Information Correctly Agan.</h5>
                                    <% 
                                     }
                                     %>
                                 <form action="" class="form" method="POST" enctype="multipart/form-data">
                                     <input type="file" name="file" id="file" accept="application/pdf"><br/>
                                     <label for="">Enter Page Number:</label><br/>
                                     <input type="number" min="0" name="page" id="page"><br/>
                                     <label for="">Enter Date Delivered:</label><br/>
                                     <input type="datetime-local" name="date" id="date"><br/>
                                     <label for="">Select Delivered By:</label><br/>
                                     <select name="deliverey" class="selection">
                                         <option value="My Self">My Self</option>
                                         <c:forEach items="${assList}" var="all">
                                                <option value="${all.fname} ${all.mname} ${all.lname}">${all.fname} ${all.mname} ${all.lname}</option>
                                         </c:forEach>
                                     </select><br/>
                                     <span>
                                         <input class="send" type="submit" value="send" onclick="check();">
                                         <input class="reset" type="reset" value="Reset">
                                     </span>
                                 </form>
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
        var open=document.getElementById('open');
        var modal=document.getElementById('modal-container');
        var close=document.getElementById('close');
        var all=document.getElementById('all');
        var add=document.getElementById('add');
        open.addEventListener('click',()=>{
            modal.classList.add('show');
            all.classList.add('hide');
            add.classList.add('add');
        });
        close.addEventListener('click',()=>{
                  modal.classList.remove('show');
                  all.classList.remove('hide');
                  add.classList.remove('add');
        });
        function check(){
            var page=document.getElementById('page').value;
            var file=document.getElementById('file').value;
            var date=document.getElementById('date').value;
//            var de=document.getElementById('delived_by').value;
            if(file==""){
               alert("please select  the file first");
               return false;
            }
            if(page==""){
               alert("please enter page number that will be copied");
               return false;
            }
            if(date==""){
               alert("please select the delivery date");
               return false;
            }
            else{
                   var exit=file.substring(file.lastIndexOf('.')+1);
                   if(exit=="pdf"){
                         
                         document.forms[0].action="Order_Controler1.java?password=<%=password%>";
                         document.forms[0].submit();
                        
                   }
                   else{
                       alert("select only pdf file");
                       return false;
                   }
            }
        }  
        
</script>
</body>
</html>