<!DOCTYPE html>
<html>
	<head>
		<title>user Dashboard</title>
		<link rel="stylesheet" href="style/style.css">
	</head>
	<body>
		<h2>User Dashboard</h2>
		<cfif session.userRole eq "user">
			<p>Welcome</p>
			<h3>List of Pages:</h3>
			<cfquery name="getPages" datasource="demo">
				SELECT * FROM task28_page
			</cfquery>
			<table border>
				<tr>
					<th>Page Name</th>
					<th>Page Description</th>
				</tr>
				<cfoutput query="getPages">
					<tr>
						<td>#pagename#</td>
						<td>#pagedesc#</td>
					</tr>
				</cfoutput>
			</table>
		</cfif>
	</body>
</html>