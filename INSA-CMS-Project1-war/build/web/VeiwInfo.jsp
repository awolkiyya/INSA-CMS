<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.Blob"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!--The link for the FontAwosame using the css  -->
    <link href="fontawesome-free-5.15.4-web/fontawesome-free-5.15.4-web/css/all.min.css" rel="stylesheet"/>
    <!-- The link  for the bootstrup css -->
    <link href="bootstrap-5.1.0-dist/css/bootstrap.min.css" rel="stylesheet"/>
    <!-- The link for the external css -->
    <link rel="stylesheet" href="CSS/l.css">
    <link rel="stylesheet" href="CSS/sty.css">
    <style>
        h3{
            text-align: center;
            font-weight: 600;
            margin: 10px 0;
        }
        .footer{
            margin-top: 6.5rem;
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
            top: 50%;
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
            </style> 
</head>
<body>
    <%
          String password=request.getParameter("password");
          String username=request.getParameter("username"); 
            StringBuilder decripted=new StringBuilder();
            char a;
                 for(int i=1;i<username.length()-1;i++){
                a=username.charAt(i);
//              out.print(a+"<br/>");
                decripted.append(a);
            }
            String username1=String.valueOf(decripted);
        %>
    <header>
        <div class="nav_left">
            <div class="logo"><h1><span>I</span>NSA <span>C</span>MS</h1></div>
              <ul>
                <li><a href="AllEmployeeWork?password=<%=password%>&&action=Veiw">Veiw My Info</a></li>
                <li><a href="copysend.jsp">Send Copy Request</a></li>
                <li><a href="">Send Message</a></li>
                <li><a href="">Resived Message</a></li>
                <li><a href="">Logout</a></li>
              </ul>
        </div>
        <div class="right">
            <div class="nav-user-icon online">
                <img src="pro/l.jpg" alt="">
            </div>
            <div class="userName">
                <h5 style="padding:1rem;"><%=username1%></h5>
            </div>
        </div>
    </header>
    <h4 style="text-align: center; color: crimsons;"></h4>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-tittle">
                <div class="row">
                    <div class="col-sm-9">
                        <h2>Employee <b> Table</b></h2>
                    </div>
                    <div class="col-sm-3">
                        <form >
                            <input type="text" name="id" placeholder="Enter name">
                            <input type="submit" value="Search"/>
                        </form>
                    </div>
                   
                </div>
            </div>
            <table class="table table-striped table-hover">
                     <thead>
                         <tr>
                             <th>
                                 <span class="custom-checkbox">
                                     <input type="checkbox" id="salectAll">
                                     <label for="selectAll"></label>
                                 </span>
                                 <th>Employee</th>
                                 <th>FName</th>
                                 <th>MName</th>
                                 <th>LName</th>
                                 <th>Department</th>
                                 <th>Your Profile</th>
                                 <th>Veiw</th>
                            </th>
                         </tr>
                     </thead>
                     <tbody>
                         
                             <c:forEach items="${employeeInfo}" var="find">
                                 <tr>
                                 <td>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="checkbox1" name="option[]" value="1">
                                    <label for="checkbox1"></label>
                                </span>
                             </td>
                             <td>${find.employeeId}</td>
                             <td>${find.fname}</td>
                             <td>${find.mname}</td>
                             <td>${find.lname}</td>
                             <td>${find.department}</td>
                             <td>
                                 <div class="nav-user-icon">
                                  <img src="pro/l.jpg" alt="">
                                 </div></td>
                              <td>
                                <a href="" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Veiw My Info detail"></i>Veiw</a>
                             </td>
                             </tr>
                             </c:forEach>
                     </tbody>
            </table>
            <div class="clearfix">
                <div class="hint-text">Showing <b> 1</b>  Out of<c:forEach items="${employeeInfo}" var="all">
                        <b>${all.employeeId}</b>
                     </c:forEach><b>entity</div>
                <ul class="paggination" style="display: flex; list-style: none;">
                     <li class="page-item disabled"><a href=" " class="page-link">pre</a></li>
                     <c:forEach items="${employeeInfo}" var="all">
                     <li class="page-item"><a href=" " class="page-link">${all.employeeId}</a></li>
                     </c:forEach>
                     <li class="page-item"><a href=" " class="page-link">next</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div id="Add" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form>
                    <div class="modal-header">
                        <h4 class="modal-tittle">Add Employee</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-controler" required>
                        </div>
                        <div class="form-group">
                            <label for="name">date</label>
                            <input type="text" class="form-controler" required>
                        </div>
                        <div class="form-group">
                            <label for="name">Department</label>
                            <input type="text" class="form-controler" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" name="btn btn-success" value="Add">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div id="edit" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form>
                    <div class="modal-header">
                        <h4 class="modal-tittle">Eddit Employee</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-controler" required>
                        </div>
                        <div class="form-group">
                            <label for="name">date</label>
                            <input type="text" class="form-controler" required>
                        </div>
                        <div class="form-group">
                            <label for="name">Department</label>
                            <input type="text" class="form-controler" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" name="edit" value="Edit">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div id="Delete" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form>
                    <div class="modal-header">
                        <h4 class="modal-tittle">Delete Employee</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <p>Are you sure</p>
                        <p class="text-warning"><small>This action cannot be </small></p>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" name="btn btn-danger" value="Delete">
                    </div>
                </form>
            </div>
        </div>
    </div>

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
  <!-- The link for the Fontawsome for js -->
  <script src="fontawesome-free-5.15.4-web/fontawesome-free-5.15.4-web/js/all.min.js"></script>
  <!-- The link for the Bootstrup for js -->
  <script src="bootstrap-5.1.0-dist/js/bootstrap.min.js"></script>
  <!-- This is the link for the Jquery using js -->
  <script src="jquery-1.3.2.min.js"></script>
    <script>
$(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();
            var checkbox=$('table tbody input[type=checkbox]');
            $('#selectAll').click(function(){
                if(this.checked){
                    checked.each(function(){
                        this.checked=true;
                    });
                }
                else{
                    checked.each(function(){
                        this.checked=false;
                    });
                }
            });
            checkbox.click(function(){
                if(this.checked){

                    $("selectAll").prop("checked",false);
                }
            });
        });
    </script>
</body>
</html>