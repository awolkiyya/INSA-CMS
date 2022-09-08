<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <!--<link href="bootstrap-5.1.0-dist/css/bootstrap.min.css" rel="stylesheet">-->
    <link href="fontawesome-free-5.15.4-web/fontawesome-free-5.15.4-web/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="CSS/newStyle.css">
    <link href="CSS/sty.css" rel="stylesheet">
    <!--<link rel="stylesheet" href="CSS/admin.css">-->
  <style>
    body{
            width:100%;
            height:100%;
    }
    .hed{
           color:#485563;
           background:#03A3F4;
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
        border: 1px dashed rgb(12, 9, 9);
        height:230px;
        width: 500px;
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
    footer{
        position: relative;
        width:100%;
        background: #3586ff;
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
        <header class="hed">
        <div class="nav_left">
            <div class="logo"><h1><span>I</span>NSA <span>C</span>MS</h1></div>
              <ul>
                <li><a href="#">Veiw My Info</a></li>
                <li><a href="#">Send Copy Request</a></li>
                <li><a href="">Send  Message</a></li>
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
     <footer>
        <div class="waves">
            <div class="wave" id="wave1"></div>
            <div class="wave" id="wave2"></div>
            <div class="wave" id="wave3"></div>
            <div class="wave" id="wave4"></div>
        </div>
        <ul class="social-icon">
            <li><a  href=""><ion-icon name="logo-facebook"></ion-icon></a></li>
            <li><a  href=""><ion-icon name="logo-twitter"></ion-icon></a></li>
            <li><a  href=""><ion-icon name="logo-facebook"></ion-icon></a></li>
            <li><a  href=""><ion-icon name="logo-facebook"></ion-icon></a></li>
        </ul>
        <ul class="menu">
            <li><a  href="">Home</a></li>
            <li><a  href="">About</a></li>
            <li><a  href="">Service</a></li>
        </ul>
      <p>&copy; Online Tutorials|All right Reserved</p>
    </footer>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
            <script src="fontawesome-free-5.15.4-web/fontawesome-free-5.15.4-web/js/all.min.js"></script>
            <script>
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
                       document.forms[0].action="checking?password=<%=password%>";
                       document.forms[0].submit();
                   }
                   else{
                       alert("select only pdf file");
                       return false;
                   }
            }
        }  
         const ok2=document.querySelector('.ok');
        const cona1=document.querySelector('.popup');
        ok2.addEventListener('click',()=>{
            cona1.classList.remove('active3');
        });
       
</script>
    </body>
</html>
