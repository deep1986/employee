<!DOCTYPE html>
<html>

<head>
<title>Register Employee</title></head>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
<body>
<h2> Registration page</h2>
<form action="registration" method="post">

<table style="float:center">
<tr>
<td>
<label for="FirstName">First Name</label>
</td>
<td>
<input type="text" name="firstname" required/>
</td>
</tr>
<tr>
<td>
<label for="lastName">Last Name</label>
</td>
<td>
<input type="text" name="lastname" required/>
</td>
</tr>
<tr>
<td>
<label for="emailid">Email ID</label>
</td>
<td>
<input type="email" name="emailid"
       pattern=".+@gmail.com" size="30" required>
<!--  <input type="text" name="emailid"/>-->
</td>
</tr>
<tr>
<td>
<label for="salary">Salary</label>
</td>
<td>
<input type="text" name="salary" required/>
</td>
</tr>
<tr>
<td>
<label for="phonenumber">Phone Number</label>
</td>
<td>
<input type="text" name="phonenumber" pattern="[7-9]{1}[0-9]{9}" 
       title="Phone number with 7-9 and remaing 9 digit with 0-9">
<!--  <input type="text" name="phonenumber" required/>-->
</td>
</tr>
<tr>
<td>
<input type="submit" name="submitbtn" value="Submit"/>
</td>
</tr>
</table>

</form>
<a href="displayEmployeeDetails.jsp">Display Employees</a>
</body>
</html>
