
<%@include file = "header.jsp" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<security:authorize access="hasRole('ROLE_ADMIN')">



<jsp:forward page="adminHome"></jsp:forward>



</security:authorize>
<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
  </ul>




<div class="carousel-inner">
   <div class="carousel-item active">
       <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/images/download1.jpg" alt="First Product">
   </div>
   <div class="carousel-item">
       <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/images/three.jpg" alt="Second Product">
   </div>
   <div class="carousel-item">
       <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/images/cromecaste.jpg" alt="Third Product">
   </div>
   <div class="carousel-item">
       <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/images/laptop.jpg" alt="Fourth Product">
   </div>
   
</div>   
 <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>

</div>
<p>Copyright@789511122</p>

<%@include file="footer.jsp" %>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};
function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}
// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script>




















</body>
</html>