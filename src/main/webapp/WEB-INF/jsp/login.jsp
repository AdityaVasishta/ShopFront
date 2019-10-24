<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@page isELIgnored="false" %>
<%@include file = "header.jsp" %>

<form action="${pageContext.request.contextPath}/logg" method="post" style="border:1px solid #ccc" >
<div class="container">
<h1>Login Page</h1>
    <p>Please fill in this form to create an account or Go Ahead.</p>
    <hr>
    
<div class="form-group">
<label for="email">
<b>User Name</b>
</label>
<input type="text" placeholder="Enter UserName" class="form-control" name="emailId" />
</div>

<div class="form-group">
<label for="pwd">
<b>Password</b>
</label>
<input type="password"  placeholder="Enter Password" class="form-control" name="password" />
</div>

<p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a></p>
     
     <div class="clearfix" align="center">
      <!-- <button type="button" class="cancelbtn">Cancel</button>  -->
      <button type="submit"  class="btn btn-primary" value="add">Login</button>
    </div>
<p>To create a new account <a href="signup" style="color:dodgerblue">New User</a></p>
</div>
</form>
  <!--  
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email">
  -->

</body>
</html>