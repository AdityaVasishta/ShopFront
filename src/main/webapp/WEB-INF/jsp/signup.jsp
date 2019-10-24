<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file = "header.jsp" %>
    


<body>
<!-- 
<form action="register" method="post">

<input type="text" name="name">
<input type="text" name="password">
<input type="submit" value="register">


</form>
 -->

<spring:form action="${pageContext.request.contextPath}/addCustomer" method="post" modelAttribute="customer" style="border:1px solid #ccc">
<div class="container">
<h1>Sign Up</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

<label for="firstname">
<b>First Name</b>
</label>
<spring:input type="text" placeholder="Enter First Name" path="firstName" />

<label for="firstname">
<b>Email Id</b>
</label>
<spring:input type="text"  placeholder="Enter Email id" path="emailId" />

<label for="psw">
<b>Password</b>
</label>
<spring:input type="password"  placeholder="Enter Password"  path="password" />


<label for="firstname">
<b>City</b>
</label>
<spring:input type="text"  placeholder="Enter City" path="shippingAddress.shippingCity" />

<label for="firstname">
<b>Street no.</b>
</label>
<spring:input type="text"  placeholder="Enter Street No." path="shippingAddress.streetname" />

<label for="firstname">
<b>House No.</b>
</label>
<spring:input type="text"  placeholder="Enter House No." path="shippingAddress.houseno" />


<p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
     
     <div class="clearfix" align="center">
      <!-- <button type="button" class="cancelbtn">Cancel</button>  -->
      <button type="submit" class="signupbtn" value="register">Sign Up</button>
    </div>

</div>
</spring:form>

<c:if test="${ not empty customerList }">
<table class="table table-striped" border="2">
<thead>
 <tr>
  <th>Id</th>
  <th>FirstName</th>
  <th>Email Id</th>
 </tr>
</thead>
<c:forEach items="${customerList}" var="cust">
<tr>
 <td>${cust.customerId}</td>
 <td>${cust.firstName}</td>
 <td>${cust.emailId}</td>
 <td><a href="deleteCustomer/${cust.customerId}">Delete</a></td>
 <td><a href="editCustomer/${cust.customerId}">Edit</a></td>
</tr>
 
</c:forEach>
</table>
</c:if>  





</body>
</html>