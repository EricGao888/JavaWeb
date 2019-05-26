<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>JDBC App</title>
	<link type="text/css" rel="stylesheet" href="css/style.css">
</head>

<body>
<%-- 	<%=theStudents%> --%>
	<div id="wrapper">
		<div id="header">
			<h2>Purdue University</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
		
			<input type="button" value="Add Student" 
				onclick="window.location.href='add-student-form.jsp';return false;"
				class="add-student-button"
			/>
		
			<table>
			
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
				
				<c:forEach var="tmpStudent" items="${STUDENT_LIST}">
					
					<c:url var="tmpLink" value="StudentControllerServlet">
						<c:param name="command" value="LOAD" />
						<c:param name="studentId" value="${tmpStudent.id}" />						
					</c:url>
					
					<c:url var="deleteLink" value="StudentControllerServlet">
						<c:param name="command" value="DELETE" />
						<c:param name="studentId" value="${tmpStudent.id}" />						
					</c:url>
					
					<tr>
						<td> ${tmpStudent.firstName} </td>
						<td> ${tmpStudent.lastName}</td>
						<td> ${tmpStudent.email} </td>
						<td>
							<a href="${tmpLink}">Update</a>
							 |
							<a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">Delete</a>
						</td>
					</tr>
				</c:forEach>
				
			</table>
		</div>
	</div>
</body>
</html>