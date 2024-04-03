<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
        <cfset local.task14 = createObject("component","components/ImageUploadProcessor")>
        <cfset local.alldatas=#local.task14.Thumbnail(URL.imgId)#>
        <cfoutput>
            <cfloop query="local.alldatas">
                <a href="displayDetails.cfm?imgId=#imgId#">#imagename#</a>
                <img src="./assets/thumbnails/#thumbnail#">
            </cfloop>
        </cfoutput>
</body>
</html>

