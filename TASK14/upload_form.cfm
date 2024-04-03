<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
        
    <cfoutput>
        <form action="upload_form.cfm" method="post" enctype="multipart/form-data">
            <label>image name</label>
            <input type="text" name="name"><br>
            <label>image description</label>
            <input type="text" name="description"><br>
            <input type="file" name="uploadedFile" accept=".jpg, .jpeg, .png, .gif"><br>
            <input type="submit" name="upload" value="Upload">
        </form>
    </cfoutput>
    <cfparam name="form.uploadedFile" default="">
    <cfparam name="form.name" default="">
    <cfparam name="form.description" default="">
    <cfset allowedExtensions = ".jpg,.jpeg,.png,.gif">
    <cfset maxFileSize = 1 * 1024 * 1024>

    <cfif structKeyExists(form, "upload")>
        <cfset fileUploader = createObject("component", "components.imageUploadProcessor")>
        <cfset result = fileUploader.uploadFile(form.uploadedFile, form.name, form.description, allowedExtensions, maxFileSize)>
        <cfif result.success>
            <cfset thumbnailPageURL = "display_thumbnail.cfm?imageName=" & result.imageName & "&thumbnailName=" & result.thumbnailName>
            <cflocation url="#thumbnailPageURL#" addtoken="false">
        <cfelse>
            <cfoutput>#result.message#</cfoutput>
        </cfif>
    </cfif>

</body>
</html>
