<!DOCTYPE html>
<html>
<head>
    <title>task1</title>
</head>

<body>
    <form action="task14.cfm" method="post" enctype="multipart/form-data">
        <label>name of the image</label>
        <input type="text" name="imageName"><br>
        <label>discription of the image</label>
        <input type="text" name="imageDescription"><br>
        <label>upload image</label>
        <input type="file" name="image"><br>
        <input type="submit" name="upload">
    </form>
    <cfparam name="form.image" default="">
    <cfparam name="form.imageDescription" default="">
    <cfparam name="form.imageName" default="">
    <cfset allowedExtensions = ".jpg,.jpeg,.png,.gif">
    <cfset maxFileSize = 1 * 1024 * 1024>

    <cfif structKeyExists(form, "upload")>
        <cfset local.fileUploader = createObject("component", "components.task14")>
        <cfset local.result = local.fileUploader.uploadFile(form.imageName, form.imageDescription,form.image, allowedExtensions, maxFileSize)>

    </cfif>
</body>
</html>