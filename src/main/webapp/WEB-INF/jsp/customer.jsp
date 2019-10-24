<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   
   <!--HTML FORM
   
 
<form action="addCustomer" method="post">
<div align="center">
 <table>
   <tr>
   <td>FIRST NAME</td>
   <td><input type="text" name="firstName"></td>
   </tr>
   <tr>
   <td>PASSWORD</td>
   <td><input type="password" name="password"></td>
   </tr>
   
   <tr>
   <td><input type="submit" value="Add"></td>
   </tr>
   
 </table>
</div>
</form>
-->

  <spring:form action="${pageContext.request.contextPath}" method="post" modelAttribute="product" style="border:1px solid #ccc" >
</spring:form>
  
   SPRING FORM 

<!--sf:form action="${pageContext.request.contextPath}/addCustomer" -->  
 <sf:form action="addCustomer" method="post" modelAttribute="customer" >
<div align="center">
 <table>
   <tr>
   <td>FIRST NAME</td>
   <td><sf:input type="text" path="firstName"/></td>
   </tr>
   <tr>
   <td>PASSWORD</td>
   <td><sf:input type="password" path="password"/></td>
   </tr>
   <tr>
   <td>CITY</td>
   <td><sf:input type="text" path="shippingAddress.city"/></td>
   </tr>
   <tr>
   <td>STREET NO.</td>
   <td><sf:input type="text" path="shippingAddress.streetno"/></td>
   </tr>
   <tr>
   <td>HOUSE NO.</td>
   <td><sf:input type="text" path="shippingAddress.houseno"/></td>
   </tr>
   
   <tr>
   <td><input type="submit" value="Add"></td>
   </tr>
   
   
 </table>
</div>
</sf:form>
<c:if test="${not empty customerList}">
 <table class="table table-striped" border="2">
   <thead>
     <tr>
      <th>Id</th>
      <th>FirstName</th>
    </tr>
    </thead>
  <tbody>
  <c:forEach items="${customerList}" var="cust">
   <tr>
     <td>${cust.customerId}</td>
     <td>${cust.firstName}</td>
   </tr>
 
  </c:forEach>
  </tbody>
 </table>
</c:if>  


</body>
</html>