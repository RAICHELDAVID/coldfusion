
<cfcomponent>
    <cffunction name="readFromFile" access="remote">
        <cffile action="upload" fileField="fileInput" nameconflict="makeunique" destination="C:\ColdFusion2023\cfusion\wwwroot\coldfusion_new\coldfusion\TASK26\uploads"> 
        <cfset uploadedFilePath = cffile.serverDirectory & "/" & cffile.serverFile> 
        <cftry>
            <cffile action="read" file="#uploadedFilePath#" variable="fileContent">
            <cfset words = reMatch("\b\w+\b", fileContent)>
            <cfloop array="#words#" index="word">
                <cfquery datasource="demo" name="insertQuery">
                    INSERT INTO task26 (word) VALUES (<cfqueryparam value="#word#" cfsqltype="CF_SQL_VARCHAR">)
                </cfquery>
            </cfloop>
            <cfcatch type="any">
                <cfdump var="#cfcatch#">
            </cfcatch>
        </cftry>
    </cffunction>
</cfcomponent>

