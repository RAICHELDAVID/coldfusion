<cfcomponent>
    <cffunction  name="uploadFile" access="public">
        <cfargument  name="imageName" type="string">
        <cfargument  name="imageDescription" type="string">
        <cfargument  name="image" type="string">
        <cfargument name="allowedExtensions" type="string" required="true">
        <cfargument name="maxFileSize" type="numeric" required="true">
        
        <cfif len(arguments.imageName)>
            <cfset local.imagepath = expandPath("../TASK14/assets/")>
            <cffile action ="upload" destination ="#local.imagepath#" nameConflict ="makeUnique">
                <cfset local.image = cffile.clientFile>
                    <cfif cffile.fileSize lte arguments.maxFileSize>
                        <cfquery name="imageList" result="imageResult">
                            insert into task14_new
                            values(
                                <cfqueryparam value='#arguments.imageName#' cfsqltype="cf_sql_varchar">,
                                <cfqueryparam value='#arguments.imageDescription#' cfsqltype="cf_sql_varchar">,
                                <cfqueryparam value='#local.image#' cfsqltype="cf_sql_varchar">
                            )
                        </cfquery>
                        <cfset local.id = imageResult.generatedKey>
                        <cflocation url="task14_imageDisplay.cfm?imgId=#local.id#">

                    <cfelse>
                        <cfreturn "Error: File size exceeds #arguments.maxFileSize# bytes.">
                    </cfif>
            <cfelse>
                <cfreturn "Error uploading file. Please try again.">
            </cfif>
    </cffunction>
    <cffunction  name="Thumbnail" access="remote">
        <cfargument name="imgId" required="true">
        <cfquery name="displayThumbnail">
            select * from task14_new
            where imageid=<cfqueryparam value='#arguments.imgId#' cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn displayThumbnail>
    </cffunction>
    <cffunction name="displayDetails" access="remote">
        <cfargument name="imgId" required="true">
        <cfquery name="displayDetails">
            select * from task14_new
            Where imageid=<cfqueryparam value='#arguments.imgId#' cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn displayDetails>
    </cffunction>
   
</cfcomponent>