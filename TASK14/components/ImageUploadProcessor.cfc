
<cfcomponent>
    <cffunction name="uploadFile" access="public" returntype="struct">
        <cfargument name="uploadedFile" type="string" required="true">
        <cfargument name="name" type="string" required="true">
        <cfargument name="description" type="string" required="true">
        <cfargument name="allowedExtensions" type="string" required="true">
        <cfargument name="maxFileSize" type="numeric" required="true">

        <cfset var response = {}>

        <cfif len(arguments.uploadedFile)>
            <cffile action="upload" filefield="uploadedFile" destination="#expandPath('assets/')#" accept="image/*">

            <cfif cffile.fileWasSaved>
                <cfif cffile.fileSize lte arguments.maxFileSize>
                    <cfif listFindNoCase(arguments.allowedExtensions, "." & cffile.serverFileExt)>
                        <cfset thumbnailPath = expandPath('assets/thumbnails/')>
                        <cfset thumbnailFileName = "thumbnail_" & cffile.serverFileName>
                        <cfset thumbnailFileName = thumbnailFileName & "." & cffile.serverFileExt> 

                        <cfimage action="resize" source="#cffile.serverDirectory#\#cffile.serverFile#" destination="#thumbnailPath#\#thumbnailFileName#" width="20" height="20" overwrite="true">
                        <cfset response.success = true>
                        <cfset response.message = "File uploaded successfully.">
                        <cfset response.imageName = cffile.serverFileName>
                        <cfset response.thumbnailName = thumbnailFileName>
                    <cfelse>
                        <cfset response.success = false>
                        <cfset response.message = "Error: Unsupported file type. Please upload files with extensions .jpg, .jpeg, .png, or .gif.">
                        <cffile action="delete" file="#cffile.serverDirectory#\#cffile.serverFile#">
                    </cfif>
                <cfelse>
                    <cfset response.success = false>
                    <cfset response.message = "Error: File size exceeds #arguments.maxFileSize# bytes.">
                    <cffile action="delete" file="#cffile.serverDirectory#\#cffile.serverFile#">
                </cfif>
            <cfelse>
                <cfset response.success = false>
                <cfset response.message = "Error uploading file. Please try again.">
            </cfif>
        </cfif>

        <cfreturn response>
    </cffunction>
</cfcomponent>


