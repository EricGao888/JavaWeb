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
		
			<table>
			
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
				</tr>
				
				<c:forEach var="tmpStudent" items="${STUDENT_LIST}">
					
					<tr>
						<td> ${tmpStudent.firstName} </td>
						<td> ${tmpStudent.lastName}</td>
						<td> ${tmpStudent.email} </td>
					</tr>
				</c:forEach>
				
			</table>
		</div>
	</div>
</body>
</html>