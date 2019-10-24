<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@page isELIgnored="false" %>
<%@include file = "header.jsp" %>

<spring:form action="${pageContext.request.contextPath}/addProduct" method="post" modelAttribute="product" style="border:1px solid #ccc" enctype="multipart/form-data">
<div class="container">
<h1>Product Page</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

<label for="productName">
<b>Product Name</b>
</label>
<spring:input type="text" placeholder="Enter Product Name" path="productName" />

<label for="productCost">
<b>Product Cost</b>
</label>
<spring:input type="text"  placeholder="Enter Cost Of the Product" path="productCost" />

<div class="form-group">
        <label for="category" >Category: </label>
  		<spring:select class="selectpicker show-tick" data-style="btn-success" path = "categoryId">
    	  <c:forEach var = "categ" items ="${categoryList}">
    		<spring:option value = "${categ.categoryId}" label = "${categ.categoryName }"/>
    	  </c:forEach>
  		</spring:select>
</div><br><br>


<label for="image">
<b>Product Image</b>
</label>
<spring:input type="file" path="image"/>

<p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
     
     <div class="clearfix" align="center">
      <!-- <button type="button" class="cancelbtn">Cancel</button>  -->
      <button type="submit" class="signupbtn" value="add">Add Product</button>
    </div>

</div>
</spring:form>


<c:if test="${not empty productList}">
<table class="table table-striped" border="1">
<thead>
 <tr>
  <th>Id</th>
  <th>Product Name</th>
  <th>Product Cost</th>
  <th>Product Image</th>
 </tr>
</thead>
<c:forEach items="${productList}" var="prod">
<tr>
 <td>${prod.productId}</td>
 <td>${prod.productName}</td>
 <td>${prod.productCost}</td>
 <td><img src="resources/images/${prod.productId}.jpg"></td>
 <td><a href="deleteProduct/${prod.productId}">Delete</a></td>
 <td><a href="editProduct/${prod.productId}">Edit</a></td>
</tr>
 
</c:forEach>
</table>
</c:if>  



</body>
</html>