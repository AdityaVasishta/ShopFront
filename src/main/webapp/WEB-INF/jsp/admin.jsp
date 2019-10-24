
<%@include file = "header.jsp" %>


<spring:form action="${pageContext.request.contextPath}" method="post" modelAttribute="product" style="border:1px solid #ccc" >
</spring:form>

<div class="card-deck">
  <div class="card">
    <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/addProduct.jpg" alt="Card image cap">
    <div class="card-body">
      <h1 class="card-title">Product</h1>
       <a href="product">Add/Update Product</a>
       
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/addCategory.png" alt="Card image cap">
    <div class="card-body">
      <h1 class="card-title">Category</h1>
       <a href="category">Add/Update Category</a>

    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/addSupplier.png" alt="Card image cap">
    <div class="card-body">
      <h1 class="card-title">Supplier</h1>
      <a href="#">Add/Update Supplier</a>
      
    </div>
  </div>
</div>



</body>
</html>