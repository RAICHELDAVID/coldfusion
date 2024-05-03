<!DOCTYPE html>
<html>
<head>
    <title>Read</title>
    <link rel="stylesheet" href="assets/styles/style.css">
    <link href="assets/styles/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<cfoutput>
<form action="index.cfm?action=read" enctype="multipart/form-data" method="post">
  <label>Choose a file to upload-</label>
  <input type="file" name="fileUpload"><br><br>
  <input class="btn btn-outline-primary" type="submit" value="Upload File">
</form>
</cfoutput>
<cfif structKeyExists(variables, "upload") and isQuery(variables.upload)>
    <table border="1">
        <tbody>
            <cfoutput query="variables.upload">
                <tr>
                    <cfloop list="#variables.upload.columnList#" index="columnName">
                        <td>#variables.upload[columnName][currentRow]#</td>
                    </cfloop>
                </tr>
            </cfoutput>
        </tbody>
    </table>

</cfif>
   
</body>
</html>