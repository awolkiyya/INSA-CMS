<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="CSS/bootreap.main.css">
    <link rel="stylesheet" href="fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="stylesheet" href="OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="CSS/style_4.css">
</head>
<body>
   
    <!--navbar start-->
    <nav class="navbar navbar-expand-md fixed-top">
        <div class="container">
        <a class="navbar-brand" href="#">INSA <span>CMS</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
         <i class="fas fa-bars"></i>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item ">
              <a class="nav-link active " data-scroll-nav="0" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-scroll-nav="1" href="#">Features</a>
              </li>
              <li class="nav-item ">
                <a class="nav-link" data-scroll-nav="2" href="#">How It Works</a>
              </li>
              <li class="nav-item ">
                <a class="nav-link" data-scroll-nav="3" href="#">Contact Us</a>
              </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Login Us
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="LoginPage.jsp?status=employee">Employeer</a>
                <a class="dropdown-item" href="LoginPage.jsp?status=dadmin">Department Admin</a>
                <a class="dropdown-item" href="LoginPage.jsp?status=oadmin">Order Admin</a>
            </li>
            
          </ul>
        </div>
    </div>
      </nav>
    <!--navbar end-->
<!--Home section start-->
   <section class="home d-flex align-items-center" data-scroll-index="0">
     <div class="effect-wrap">
       <i class="fas fa-plus effect effect-1"></i>
       <i class="fas fa-plus effect effect-2"></i>
       <i class="fas fa-circle-notch effect effect-3"></i>
     </div>
         <div class="container">
             <div class="row align-items-center">
                 <div class="col-lg-7 col-md-7">
                        <div class="home-text">
                            <h1>Best Copy Managment WebSite For Your Works</h1>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                             eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
                             <div class="home-btn">
                                 <a href="" class="btn btn-1">Download App</a>
                                <button type="button"class=" btn btn-1 video-play-btn">
                                    <i class="fas fa-play"></i>
                                </button>
                                </div>
                        </div>
                 </div> 
                 <div class="col-lg-5 col-md-5 ">
                     <div class="home-img">
                         <div class="circle">
                         </div>
                        <img src="IMG/undraw_photocopy_gj-0-t.svg" alt="copy image">
                     </div>
                </div> 
             </div>
         </div>
   </section>
<!--Home section end-->
<!---------Features section start-->
      <section class="features section-padding" data-scroll-index="1">
                <div class="container">
                  <div class="row justify-content-center">
                       <div class="col-lg-8 ">
                               <div class="section-title">
                                 <h2>website <span>features</span></h2>
                               </div>
                       </div>
                  </div>
                  <div class="row">
                     <div class=" owl-carousel features-carousel">
                            <div class="feature-item">
                                 <div class="icon"><i class="fas fa-code"></i></div>
                                  <h3>clean code</h3>
                                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                                    eiusmod tempor</p>
                                </div>
                                <div class="feature-item">
                                  <div class="icon"><i class="fas fa-edit"></i></div>
                                   <h3>auto install system</h3>
                                   <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                                     eiusmod tempor</p>
                                 </div>
                                 <div class="feature-item">
                                  <div class="icon"><i class="fas fa-paint-brush"></i></div>
                                   <h3>pixel perfect design</h3>
                                   <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                                     eiusmod tempor</p>
                                 </div>
                                 <div class="feature-item">
                                  <div class="icon"><i class="fas fa-check"></i></div>
                                   <h3>fast load app</h3>
                                   <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                                     eiusmod tempor</p>
                                 </div>
                     </div>
                  </div>
                </div>
      </section>


<!---------Features section end-->
<!--       How it works section start-->
       <section class="how-it-works section-padding" data-scroll-index="2">
         <div class="container">
           <div class="row justify-content-center">
                 <div class="col-lg-8">
                   <div class="section-title">
                       <h2>how it <span>works</span></h2>
                   </div>
                 </div>
           </div>
           <div class="row">
             <div class="col-lg-3 col-md-6">
                  <div class="how-it-works-item line-right">
                    <div class="step">1</div>
                    <h3>Login Us</h3>
                    <p>1.Employeer<br/>
                       2.Department Admin
                       3.Order Admin</p>
                  </div>
             </div>
             <div class="col-lg-3 col-md-6">
              <div class="how-it-works-item line-right">
                <div class="step">2</div>
                <h3>Employeer Page</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                  eiusmod tempor</p>
              </div>
         </div>
         <div class="col-lg-3 col-md-6">
          <div class="how-it-works-item line-right">
            <div class="step">3</div>
            <h3>Department Admin Page</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
              eiusmod tempor</p>
          </div>
     </div>
     <div class="col-lg-3 col-md-6">
      <div class="how-it-works-item ">
        <div class="step">4</div>
        <h3>Order Admin Page</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
          eiusmod tempor</p>
      </div>
    </div>
           </div>
         </div>
       </section>
<!--       How it works section start-->
<!--       Contact  section start-->
     <section class="contact section-padding" data-scroll-index="3">
            <div class="container">
                  <div class="row justify-content-center">
                    <div class="col-lg-8">
                      <div class="section-title">
                        <h2>get in <span>touch</span></h2>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-4 col-md-8">
                            <div class="contact-info">
                              <h3>For any Quesies and Support</h3>
                              <div class="contact-info-item">
                                <i class="fas fa-location-arrow i"></i>
                                <h4>Company Loction</h4>
                                <p>199 xyz gali ,New Addis abeba</p>
                              </div>
                              <div class="contact-info-item">
                                <i class="fas fa-envelope i"></i>
                                <h4>Write to us at</h4>
                                <p>info@gmail.com</p>
                              </div>
                              <div class="contact-info-item">
                                <i class="fas fa-phone i"></i>
                                <h4>Call us on</h4>
                                <p>0911996750**</p>
                              </div>
                            </div>
                    </div>
                    <div class="col-lg-8 col-md-7">
                            <div class="contact-form">
                              <form action="">
                                <div class="row">
                                    <div class="col-lg-6">
                                      <div class="form-group">
                                        <input type="text" placeholder="Your Full Name" class="form-control">
                                      </div>
                                    </div>
                                    <div class="col-lg-6">
                                      <div class="form-group">
                                        <input type="text" placeholder="Your Password" class="form-control">
                                      </div>
                                    </div>
                                </div>
                                  <div class="row">
                                    <div class="col-lg-12">
                                           <div class="form-group">
                                             <textarea placeholder="Your Message" class="form-control"> </textarea>
                                           </div>
                                    </div>
                                  </div>
                                  <div class="row">
                                    <div class="col-lg-12">
                                          <button type="submit" class="btn btn-1">Send Message</button>
                                    </div>
                                  </div>
                              </form>
                            </div>
                    </div>
                  </div>
            </div>
     </section>
<!--      Contact section end-->
<!--------footer section start-->
           <footer class="footer">
                  <div class="container">
                       <div class="row">
                         <div class="col-lg-3 col-md-6">
                               <div class="footer-col">
                                    <h3>About Us</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                                      eiusmod tempor</p>
                               </div>
                         </div>
                         <div class="col-lg-3 col-md-6">
                          <div class="footer-col">
                               <h3>Company </h3>
                               <ul>
                                 <li><a href="#">privacy policy</a></li>
                                 <li><a href="#">term & condition</a></li>
                                 <li><a href="#">leters blogs</a></li>
                                 <li><a href="#">web service</a></li>
                                </ul>
                          </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                      <div class="footer-col">
                           <h3>quick link</h3>
                           <ul>
                            <li><a href="#">home</a></li>
                            <li><a href="#">features</a></li>
                            <li><a href="#">how it works</a></li>
                            <li><a href="#">contact us</a></li>
                           </ul>
                      </div>
                </div>
                <div class="col-lg-3 col-md-6">
                  <div class="footer-col">
                       <h3>social pages</h3>
                       <ul>
                        <li><a href="#">facebook</a></li>
                        <li><a href="#">twitter</a></li>
                        <li><a href="#">instagram</a></li>
                        <li><a href="#">linkedin</a></li>
                       </ul>
                  </div>
            </div>
     </div>
              <div class="row">
                  <div class="col-lg-12">
                    <p class="copyright-text">&copy:2021@The CMS WebSite</p>
                  </div>
              </div>
   </div>
 </footer>
<!--------footer section end-->
<!--------Toggle Theme start -light and dark-->
  <div class="toggle-theme">
    <i class="fas i"></i>
  </div>




<!--------Toggle Theme end -light and dark--->
<!--vedio Popup Start-->
       <!-- <div class="video-popup">
           <div class="vedio-popup-inner">
               <i class="fas fa-times vedio-popup-close"></i>
               <div class="iframe-box">
                <iframe id="player-1" width="560" height="315" src="https://www.youtube.com/embed/rGF_4LlenP0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                </iframe>
               </div>
           </div>
       </div> -->
<!--vedio Popup end-->

    <script src="JS/jquery.main.js"></script>
    <script src="JS/popper.main.js"></script>
    <script src="JS/bootstrap.main.js"></script>
    <script src="fontawesome-free-5.15.4-web/js/all.min.js"></script>
    <script src="OwlCarousel2-2.3.4/dist/owl.carousel.min.js"></script>
    <script src="scrollIt.js-master/scrollIt.min.js"></script>
    <script >
      $(document).ready(function(){
     /*----------------Navbar Shrink--------*/
        $(window).on("scroll",function(){
            if($(this).scrollTop()>10){
                $(".navbar").addClass("navbar-shrink");
            }
            else{
              $(".navbar").removeClass("navbar-shrink");
            }
        });
$('.features-carousel').owlCarousel({
    loop:true,
    margin:0,
    autoplay:true,
    responsiveClass:true,
    responsive:{
        0:{
            items:1,
        },
        600:{
            items:2,
        },
        1000:{
            items:3,
        }
    }
});
$.scrollIt({
  topOffset: -50
});
$(".nav-link").on("click",function(){
       $(".navbar-collapse").collapse("hide");
});

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


    </script>
</body>
</html>