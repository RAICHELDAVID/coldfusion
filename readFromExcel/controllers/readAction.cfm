
<cfparam name="form.fileUpload" default="">
<cfset variables.upload=''>
<cfif len(trim(form.fileUpload))>
    <cfset variables.upload=createObject("component", "controllers.readFromExcel").uploadFile(fileUpload=form.fileUpload)>
</cfif>


