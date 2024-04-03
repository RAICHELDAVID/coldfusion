
<cfcomponent>
    <cffunction name="uploadFile" access="public" returntype="struct">
        <cfargument name="uploadedFile" type="string" required="true">
        <cfargument name="name" type="string" required="true">
        <cfargument name="description" type="string" required="true">
        <cfargument name="allowedExtensions" type="string" required="true">
        <cfargument name="maxFileSize" type="numeric" required="true">

        <cfif len(arguments.uploadedFile)>
            <cffile action="upload" filefield="uploadedFile" destination="#expandPath('assets/')#" accept="image/*" nameConflict ="makeUnique">
            <cfset local.fileName = cffile.serverFile>
                <cfif cffile.fileWasSaved>
                    <cfif cffile.fileSize lte arguments.maxFileSize>
                        <cfif listFindNoCase(arguments.allowedExtensions, "." & cffile.serverFileExt)>
                            <cfset thumbnailPath = expandPath('assets/thumbnails/')>
                            <cfset thumbnailFileName = "thumbnail_" & cffile.serverFileName>
                            <cfset thumbnailFileName = thumbnailFileName & "." & cffile.serverFileExt> 
                            <cfimage action="resize" source="#cffile.serverDirectory#\#cffile.serverFile#" destination="#thumbnailPath#\#thumbnailFileName#" width="20" height="20" overwrite="true">
                            <cfquery name="insertdetails" result="imageResult">
                                insert into trytask14 
                                values(<cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar">,
                                    <cfqueryparam value="#arguments.description#" cfsqltype="cf_sql_varchar">,
                                    <cfqueryparam value="#thumbnailFileName#" cfsqltype="cf_sql_varchar">,
                                    <cfqueryparam value="#local.fileName#" cfsqltype="cf_sql_varchar">
                                )
                            </cfquery>
                            <cfset local.id = imageResult.generatedKey>
                            <cflocation url="display_thumbnail.cfm?imgId=#local.id#">
                        <cfelse>
                            <cffile action="delete" file="#cffile.serverDirectory#\#cffile.serverFile#">
                            <cfreturn "Error: Unsupported file type. Please upload files with extensions .jpg, .jpeg, .png, or .gif.">
                        </cfif>
                    <cfelse>
                        <cffile action="delete" file="#cffile.serverDirectory#\#cffile.serverFile#">
                        <cfreturn "Error: File size exceeds #arguments.maxFileSize# bytes.">

                    </cfif>
                <cfelse>
                    <cfreturn "Error uploading file. Please try again.">
                </cfif>
        </cfif>
    </cffunction>
    <cffunction  name="Thumbnail" access="remote">
        <cfargument  name="imgId">
        <cfquery name="thumbnail">
            select imagename,thumbnail 
            from trytask14
            where imageid=<cfqueryparam value="#arguments.imgId#" cfsqltype="cf_sql_integer">
        </cfquery>
        <cfreturn thumbnail>
    </cffunction>

    <cffunction  name="imageDetail" access="remote">
        <cfargument  name="imgId">
        <cfquery name="imageDetail">
            select imagename,imagedescription,imagefile 
            from trytask14
            where imageid=<cfqueryparam value="#arguments.imgId#" cfsqltype="cf_sql_integer">
        </cfquery>
        <cfreturn imageDetail>
    </cffunction>
</cfcomponent>


