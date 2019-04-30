<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<script src="UserTemplate/assets/js/modernizr-2.6.2.min.js"></script>

<script src="UserTemplate/assets/js/jquery-1.10.2.min.js"></script> 
<script src="UserTemplate/bootstrap/js/bootstrap.min.js"></script>
<script src="UserTemplate/assets/js/bootstrap-select.min.js"></script>
<script src="UserTemplate/assets/js/bootstrap-hover-dropdown.js"></script>

<script src="UserTemplate/assets/js/easypiechart.min.js"></script>
<script src="UserTemplate/assets/js/jquery.easypiechart.min.js"></script>

<script src="UserTemplate/assets/js/owl.carousel.min.js"></script>
<script src="UserTemplate/assets/js/wow.js"></script>

<script src="UserTemplate/assets/js/icheck.min.js"></script>
<script src="UserTemplate/assets/js/price-range.js"></script>

<script type="text/javascript" src="UserTemplate/assets/js/lightslider.min.js"></script>
<script src="UserTemplate/assets/js/main.js"></script>

<script>
     $(document).ready(function () {

         $('#image-gallery').lightSlider({
             gallery: true,
             item: 1,
             thumbItem: 9,
             slideMargin: 0,
             speed: 500,
             auto: true,
             loop: true,
             onSliderLoad: function () {
                 $('#image-gallery').removeClass('cS-hidden');
             }
         });
     });
     
    
 </script>
    