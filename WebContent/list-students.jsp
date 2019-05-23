<%@ page import = "java.util.*, com.ericgao.jdbc.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>JDBC App</title>
</head>

<%
	List<Student> theStudents = (List<Student>) request.getAttribute("STUDENT_LIST");
%>

<body>
<%-- 	<%=theStudents%> --%>
	<div id="wrapper">
		<div id="header">
			<h2>Purdue University</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
		
			<table>
			
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
				</tr>
				
				<% for (Student tempStudent : theStudents) { %>
				
					<tr>
						<td> <%= tempStudent.getFirstName() %> </td>
						<td> <%= tempStudent.getLastName() %> </td>
						<td> <%= tempStudent.getEmail() %> </td>
					</tr>
				
				<% } %>
				
			</table>
		</div>
	</div>
</body>
</html>