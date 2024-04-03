<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
    <cfset local.task14 = createObject("component","components/ImageUploadProcessor")>
        <cfset local.alldatas=#local.task14.imageDetail(URL.imgId)#>
        <cfoutput>
            <cfloop query="local.alldatas">
                <h2>#imagename#</h2>
                <p>#imagedescription#</p>
                <img src="./assets/#imagefile#">
            </cfloop>
        </cfoutput>   
</body>
</html>



