<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn14.css">
    <title>Document</title>
</head>
<body>
        <cfset local.task14 = createObject("component","components/task14")>
        <cfset local.alldatas=#local.task14.displayDetails(URL.imgId)#>
        <cfoutput>
            <cfloop query="local.alldatas">
                <h4>#imageName#</h4>
                <p>#imageDescription#</p>
                <img src="./assets/#imageFile#">
            </cfloop>
        </cfoutput>
</body>
</html>