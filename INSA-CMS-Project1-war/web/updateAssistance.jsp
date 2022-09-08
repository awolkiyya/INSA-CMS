<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="fontawesome-free-5.15.4-web/fontawesome-free-5.15.4-web/css/all.min.css">
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
        background-color: #fdfdfd;
        width: 900px;
        height: 70vh;
        text-align: center;
        position: absolute;
        left:50%;
        top:23%;
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
    </style>
    </head>
    <body>
        <%
              String password=request.getParameter("password");
               StringBuilder me=new StringBuilder();
                           char a11;
                           for(int i=1;i<password.length()-1;i++){
                                 a11=password.charAt(i);
                                 //              out.print(a+"<br/>");
                                 me.append(a11);
                               }
                                String pass=String.valueOf(me);
          
        %>
         <div class="containera">
         <div class="navigation">
             <ul>
                 <li><a href="#">
                     <span class="title" style="color:red;font-size:2rem;padding-top:1rem;">INSA-CMS</span>
                 </a></li>
                 <li><a href="#">
                    <span class="icon"><i class="fas fa-home"></i></span>
                    <span class="title">Dashboard</span>
                </a></li>
                <li><a href="#">
                    <span class="icon"><i class="fas fa-users"></i></span>
                    <span class="title">Employee</span>
                </a></li>
                <li><a href="#">
                    <span class="icon"><i class="fas fa-briefcase"></i></span>
                    <span class="title">Assistance</span>
                </a></li>
                <li><a href="#">
                    <span class="icon"><i class="fas fa-cogs"></i></span>
                    <span class="title">Setting</span>
                </a></li>
                <li><a href="#">
                    <span class="icon"><i class="fas fa-sign-out-alt"></i></span>
                    <span class="title">Sign Out</span>
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
            <div class="datatable">
                <div class="listOfallAdmtin" >
                    <h1 style="text-align:center;">All detail of the Admin that you whent to Update</h1>
                </div>
              </div> 
        <div class="popup-box-container">
            <c:forEach items="${allad}" var="all">
                    <form id="form" class="form" action="" method="post">
                    <div class="topCont">
                        <div class="form-controler">
                        <label>FName:</label>
                        <input type="text" placeholder="enter fname" name="fname" id="fname" class="ll" value="${all.fname}"/>
                        <i class="fas fa-check-circle f"></i>
                        <i class="fas fa-exclamation-circle f"></i>
                        <small>error message</small>
                        </div>
                        <div class="form-controler">
                        <label>MName:</label>
                        <input type="text" placeholder="enter fname" name="mname" id="mname" class="ll" value="${all.mname}"/>
                        <i class="fas fa-check-circle f"></i>
                        <i class="fas fa-exclamation-circle f"></i>
                        <small>error message</small>
                    </div>
                    <div class="form-controler">
                        <label>LName:</label>
                        <input type="text" placeholder="enter fname" name="lname" id="lname" value="${all.lname}"/>
                        <i class="fas fa-check-circle f"></i>
                        <i class="fas fa-exclamation-circle f"></i>
                        <small>error message</small>
                    </div>
                </div>
                <div class="centerCont">
                    <div class="form-controler">
                        <label>Department:</label>
                        <input type="text" placeholder="enter department" name="department" id="department" value="${all.department}"/>
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
                        <input type="number" placeholder="enter department" name="phone" id="phone" value="${all.phoneNumber}"/>
                        <small>error message</small>
                        </div>        
                </div>
                <div style="width:100%;">
                        <div class="form-controler1">
                        <label>Password:</label>
                        <input type="password" placeholder="enter password" name="pass" id="pass" width="100%;" value="${all.id}"/>
                        <i class="fas fa-check-circle f"></i>
                        <i class="fas fa-exclamation-circle f"></i>
                        <small>error message</small>
                        </div>
                </div>
                <div style="width:100%;">
                         <div class="form-controler1">
                        <label>Status:</label>
                        <select name="status" style="width:200px;height:30px;">
                            <option value="${all.status}">${all.status}</option>
                        </select>
                    </div>
                </div>
                          <span>
                              <input type="submit" value="Add"  class="button1"/>
                              <input type="reset" value="Reset" class="button2"/>
                          </span>
                </form>
            </c:forEach> 
            </div>
        </div>
    </div>
         </div>
     </section>
     </div>
                         <script src="fontawesome-free-5.15.4-web/fontawesome-free-5.15.4-web/js/all.min.js"></script>
    </body>
    <script>
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
       document.forms[0].action="AllManageAssistance?action=update&&password=<%=pass%>";
       document.forms[0].submit();
     }
           }
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
  
</script>
</html>
