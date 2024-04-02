<!DOCTYPE html>
<html>
<head>
    <title>task26</title>
</head>

    <body>
        <form action="task26.cfm" method="post" enctype="multipart/form-data">
            <input type="file" name="fileInput">
            <input type="submit">
        </form>
                    <cfif StructKeyExists(form, "fileInput")>
                <cfset local.task26=createObject("component","components/task26")>
                <cfoutput>
                    #local.task26.readFromFile(form.fileInput)#
                </cfoutput>
            </cfif>
    </body>
</html>