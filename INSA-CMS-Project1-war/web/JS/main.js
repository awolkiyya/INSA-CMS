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
          alert("welcome");
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
