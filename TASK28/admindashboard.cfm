<!DOCTYPE html>
<html>
	<head>
		<title>Admin Dashboard</title>
		<link rel="stylesheet" href="style/style.css">
	</head>
	<body>
		<h2>Admin Dashboard</h2>
		<cfif session.userRole eq "admin" or session.userRole eq "editor">
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
					<td>
						<form action="editPage.cfm" method="post">
							<input type="hidden" name="pageid" id="pageid" value="#getPages.pageid#">
							<input type="submit" value="Edit">
						</form>
					</td>
					<td>
						<form action="components/page.cfc?method=deletePage" method="post">
							<input type="hidden" name="pageid" value="#getPages.pageid#">
							<input type="submit" value="Delete">
						</form>
					</td>
				</tr>
			</cfoutput>
		</table>
		<form action="addPage.cfm" method="post">
			<input type="submit" value="Add Page">
		</form>
		</cfif>
	</body>
</html>