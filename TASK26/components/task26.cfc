<cfcomponent>

    <cffunction name="fileFunction" access="remote" returntype="string">
        <cfargument name="file" type="string" required="true">
        <cfset var response = "">
        
        <cftry>
            <!--- Define path to store uploaded files --->
            <cfset uploadDirectory = expandPath("./files/")>
            

            
            <!--- Upload the file to the server --->
            <cffile action="upload"
                filefield="file"
                destination="#uploadDirectory#"
                nameconflict="makeunique"
                result="uploadResult">
            
            <!--- Check if file upload was successful --->
            <cfif uploadResult.Succeeded>
                <!--- Read the uploaded file content --->
                <cfset fileContent = fileRead(uploadResult.ServerDirectory & uploadResult.ServerFile)>
                
                <!--- Split file content into words --->
                <cfset words = listToArray(fileContent, " \n\t")>
                
                <!--- Insert each word into the database --->
                <cfloop array="#words#" index="word">
                    <!--- Insert word into database table --->
                    <cfquery datasource="demo">
                        INSERT INTO word (word) VALUES (<cfqueryparam value="#word#" cfsqltype="CF_SQL_VARCHAR">)
                    </cfquery>
                </cfloop>
                
                <!--- Set success response --->
                <cfset response = "File uploaded and words inserted into database successfully.">
                
            <cfelse>
                <!--- Set error response if file upload failed --->
                <cfset response = "Error uploading file. Please try again.">
            </cfif>
            
            <!--- Delete the uploaded file from the server --->
            <cffile action="delete" file="#uploadResult.ServerDirectory & uploadResult.ServerFile#">
            
            <!--- Return response --->
            <cfreturn response>
        
        <cfcatch type="any">
            <!--- Handle any exceptions --->
            <cfreturn "An error occurred while processing the file.">
        </cfcatch>
        </cftry>
    </cffunction>

</cfcomponent>
