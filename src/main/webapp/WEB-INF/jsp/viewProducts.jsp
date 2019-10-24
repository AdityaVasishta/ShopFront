<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@include file = "header.jsp" %>
<%@page isELIgnored="false" %>

<h1>Hello</h1>

<spring:form action="${pageContext.request.contextPath}/addToCart" method="post" modelAttribute="customer" style="border:1px solid #ccc">
<span class="border">
<c:if test="${not empty productList}">
<c:forEach items="${productList}" var="prod">


<div class="row text-center text-lg-left">

        <div class="col-lg-3 col-md-4 col-xs-6">
        <div class="thumbnail">
          <a href="${pageContext.request.contextPath}/resources/images/${prod.productId}.jpg" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${pageContext.request.contextPath}/resources/images/${prod.productId}.jpg" alt="">
                      <p><strong>Product Name ::</strong> ${prod.productName}</p>
          </a>
          <p><strong>Product Cost ::</strong> ${prod.productCost}</p>
          <a href="${pageContext.request.contextPath}/addToCart" class="btn btn-info" role="button">Add To cart</a>
          <a href="${pageContext.request.contextPath}/addToCart" class="btn btn-info" role="button">More </a>
        </div>  
        </div>
</div>
<hr>      
</c:forEach>
</c:if>
</span>

</spring:form>


</body>
</html>
