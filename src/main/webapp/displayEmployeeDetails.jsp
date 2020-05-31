<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>
    <%@ page import="java.sql.*"	 %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Employee Details</title></head>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
<script src="https://code.jquery.com/jquery-3.0.0.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {    
            $('input[type="checkbox"]').click(function(){
                var type = $(this).prop("checked");
                	 if (type){
                    $(this).parent().prev().find("input[type=text]").attr('disabled', false);
                    $(this).parent().prev().prev().find("input[type=text]").attr('disabled', false);
                    $(this).parent().prev().prev().prev().find("input[type=text]").attr('disabled', false);
                    $(this).parent().prev().prev().prev().prev().find("input[type=text]").attr('disabled', false);
                    $(this).parent().prev().prev().prev().prev().prev().find("input[type=text]").attr('disabled', false);
                    $(".check_class").prop("checked", false);
                    $(this).prop("checked", true);
                    $(".check_class").not(this).parent().prev().prev().find("input[type=text]").attr('disabled', true);
                    $(".check_class").not(this).parent().prev().find("input[type=text]").attr('disabled', true);
                    $(".check_class").not(this).parent().prev().prev().prev().find("input[type=text]").attr('disabled', true);
                    $(".check_class").not(this).parent().prev().prev().prev().prev().find("input[type=text]").attr('disabled', true);
                    $(".check_class").not(this).parent().prev().prev().prev().prev().prev().find("input[type=text]").attr('disabled', true);
}
                else {
                	 $(this).parent().prev().find("input[type=text]").attr('disabled', true);
                     $(this).parent().prev().prev().find("input[type=text]").attr('disabled', true);
                     $(this).parent().prev().prev().prev().find("input[type=text]").attr('disabled', true);
                     $(this).parent().prev().prev().prev().prev().find("input[type=text]").attr('disabled', true);
                     $(this).parent().prev().prev().prev().prev().prev().find("input[type=text]").attr('disabled', true);
                }
                
                	 
            });
        });
        
        $(document).ready(function () {    
            $('input[type="submit"]').click(function(){
            	 	var phoneno=$(this).parent().prev().prev().find("input[type=text]").prop("value");
            	 	var salary=$(this).parent().prev().prev().prev().find("input[type=text]").prop("value");
            	 	var emailid=$(this).parent().prev().prev().prev().prev().find("input[type=text]").prop("value");
            	 	var lastname=$(this).parent().prev().prev().prev().prev().prev().find("input[type=text]").prop("value")
            	 	var firstname=$(this).parent().prev().prev().prev().prev().prev().prev().find("input[type=text]").prop("value")
            	 	var empID=$(this).parent().prev().prev().prev().prev().prev().prev().prev().find("input[type=hidden]").prop("value")
       // alert(phoneno)
       // alert(salary)
       // alert(emailid)
       // alert(lastname)
        //alert(firstname)
        
       // window.open("www.google.com")
        window.open("/employee/empUpdate?empID="+empID+"&firstname="+firstname+"&lastname="+lastname+"&emailid="+emailid+"&salary="+salary+"&phonenumber="+phoneno+"");
          window.close()
            	 	//window.location="http://localhost:8080/employee/empUpdate?empID="+empID+"&firstname="+firstname+"&lastname="+lastname+"&emailid="+emailid+"&salary="+salary+"&phonenumber="+phoneno+"";
            	// $(location).attr('href',"/employee/empUpdate?empID="+empID+"&firstname="+firstname+"&lastname="+lastname+"&emailid="+emailid+"&salary="+salary+"&phonenumber="+phoneno+"");
     //   document.location.href="http://localhost:8080/employee/empUpdate?empID="+empID+"&firstname="+firstname+"&lastname="+lastname+"&emailid="+emailid+"&salary="+salary+"&phonenumber="+phoneno+"";
            	 	// document.location.href=
                //$(this).parent().prev().prev().find("input[type=text]").attr('disabled', true);
               //$(this).parent().prev().prev().prev().find("input[type=text]").attr('disabled', true);
               // $(this).parent().prev().prev().prev().prev().find("input[type=text]").attr('disabled', true);
               // $(this).parent().prev().prev().prev().prev().prev().find("input[type=text]").attr('disabled', true);
            });
        });
        
        $(document).ready(function () {    
            $('input[type="button"]').click(function(){
            	var empID=$(this).parent().prev().prev().prev().prev().prev().prev().prev().prev().find("input[type=hidden]").prop("value")
            	 	window.open("/employee/empDelete?empID="+empID+"");
                    window.close()
                     
                      });
                  });
        
        
        $(document).ready(function() {
            $("#dialog-box").dialog({
              autoOpen: false,
              modal: true
            });

          $(".close").click(function(e) {
            var currentElem = $(this);
            $("#dialog-box").dialog({
              buttons : {
                "Confirm" : function() {
                  currentElem.remove()
                },
                "Cancel" : function() {
                  $(this).dialog("close");
                }
              }
            });

            $("#dialog-box").dialog("open");
          });
        });
        
        function deleteItem(this) {
            if (confirm("Are you sure?")) {
                  $(this).remove();
            }
            return false;
        }
            	 	</script>



</head>
<body>
<h2> Employees Details</h2>


<table style="float:center">
<tr>
<td>
<label for="employeeid">Emp ID</label>
</td>
<td>
<label for="firstname">First Name</label>
</td>
<td>
<label for="lastname">Last Name</label>
</td>
<td>
<label for="emailid">Email Id Name</label>
</td>
<td>
<label for="salary">Salary </label>
</td>
<td>
<label for="phonenumber">Phone number</label>
</td>
<td colspan="3" align="center">
<label for="action" >Action</label>
</td>
</tr>

<% 
Class.forName("com.mysql.cj.jdbc.Driver");
String db_URL="jdbc:mysql://localhost/emp";
String username="root";
String password="root";
Connection con =DriverManager.getConnection(db_URL,username,password);
Statement stmt= con.createStatement();
//sql query to retrieve values from the secified table.
String QueryString = "SELECT * from register_emp";
ResultSet rs = stmt.executeQuery(QueryString);
//rs.next();
while(rs.next()){
%>
<tr>
<form name="f1" action="" method="post">
<td><%=rs.getInt(1)%><input type="hidden" value="<%=rs.getInt(1)%>" name="empID"></td>
<td><input type="text" disabled value="<%=rs.getString(2)%>" name="firstname"></td>
<td><input type="text" disabled value="<%=rs.getString(3)%>" name="lastname" ></td>
<td><input type="text" disabled value="<%=rs.getString(4)%>" name="emailid"></td>
<td><input type="text" disabled value="<%=rs.getString(5)%>" name="salary"></td>
<td><input type="text" disabled value="<%=rs.getString(6)%>" name="phonenumber" id="phonenumber"></td>
<td><input type="checkbox" name="edit" class='check_class'/>Edit</td>
<td><input type="submit" name="action" value="Update"  />
</td>
<td><input type="button" name="action" value="Delete" onclick="deleteItem()"/></td>
</form>
</tr>
<% }%>

<%
//close all the connections.
rs.close();
stmt.close();
con.close();
%>
</table>


<a href="index.jsp">Register User!</a>


</body>
</html>