<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
    <div>
        <cfset local.task14 = createObject("component","components/task14")>
        <cfset local.alldatas=#local.task14.Thumbnail(URL.imgId)#>
        <cfoutput>
            <cfloop query="local.alldatas">
                <a href="displayDetails.cfm?imgId=#imgId#">#imageName#</a>
                <img src="./assets/#imageFile#" width="20" height="20">
            </cfloop>
        </cfoutput>
    </div>
</body>
</html>