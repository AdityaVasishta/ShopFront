<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@page isELIgnored="false" %>
<%@include file = "header.jsp" %>

<spring:form action="${pageContext.request.contextPath}/addCategory" method="post" modelAttribute="category" style="border:1px solid #ccc" enctype="multipart/form-data">
<div class="container">
<h1>Category Page</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

<label for="categoryName">
<b>Category Name</b>
</label>
<spring:input type="text" placeholder="Enter Category Name" path="categoryName" />

<label for="categoryDescription">
<b>Category Description</b>
</label>
<spring:input type="text"  placeholder="Enter Description of Category" path="categoryDescription" />

<p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
     
     <div class="clearfix" align="center">
      <!-- <button type="button" class="cancelbtn">Cancel</button>  -->
      <button type="submit" class="signupbtn" value="add">Add category</button>
    </div>

</div>
</spring:form>


<c:if test="${not empty categoryList}">
<table class="table table-striped" border="1">
<thead>
 <tr>
  <th>Id</th>
  <th>Category Name</th>
  <th>Category Description</th>
 </tr>
</thead>
<c:forEach items="${categoryList}" var="categ">
<tr>
 <td>${categ.categoryId}</td>
 <td>${categ.categoryName}</td>
 <td>${categ.categoryDescription}</td>
 <td><a href="deleteCategory/${categ.categoryId}">Delete</a></td>
 <td><a href="editCategory/${categ.categoryId}">Edit</a></td>
</tr>
 
</c:forEach>
</table>
</c:if>  



</body>
</html>s