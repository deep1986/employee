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
<input type="text" name="firstName"/>
</td>
</tr>
<tr>
<td>
<label for="lastName">Last Name</label>
</td>
<td>
<input type="text" name="lastname"/>
</td>
</tr>
<tr>
<td>
<label for="emailid">Email ID</label>
</td>
<td>
<input type="text" name="emailid"/>
</td>
</tr>
<tr>
<td>
<label for="salary">Salary</label>
</td>
<td>
<input type="text" name="salary"/>
</td>
</tr>
<tr>
<td>
<label for="phonenumber">Phone Number</label>
</td>
<td>
<input type="text" name="phonenumber"/>
</td>
</tr>
<tr>
<td>
<input type="submit" name="submitbtn" value="Submit"/>
</td>
</tr>
</table>

</form>
</body>
</html>
