
<cfcomponent>
    <cffunction name="uploadFile" access="remote" returntype="any">
        <cfargument name="fileUpload" required="true" type="any">
        <cffile action="upload" fileField="fileUpload" destination="#expandpath('./assets/uploads/')#" nameconflict="makeunique">
        <cfset uploadedFilePath = cffile.serverDirectory & "/" & cffile.serverFile>
        <cffile action="read" file="#uploadedFilePath#" variable="fileContent">
        <cfspreadsheet action="read" src="#uploadedFilePath#" query="spreadsheetData" headerrow="1">
        <cfset metadata = getMetaData(spreadsheetData)>
        <cfset excelColumnNames = []>
        <cfloop index="i" from="1" to="#arrayLen(metadata)#">
            <cfset headerCellValue = metadata[i].name>
            <cfset arrayAppend(excelColumnNames, headerCellValue)>
        </cfloop>
        
        <cfset local.result = createObject("component", "models.readFromExcel").viewColumn()>
        <cfset dbColumnNames = local.result>
        
        <cfset arraysEqual = true>
        <cfif ArrayLen(dbColumnNames) EQ ArrayLen(excelColumnNames)>
            <cfloop from="1" to="#ArrayLen(dbColumnNames)#" index="i">
                <cfif dbColumnNames[i] NEQ excelColumnNames[i]>
                    <cfset arraysEqual = false>
                    <cfbreak>
                </cfif>
            </cfloop>
        <cfelse>
            <cfset arraysEqual = false>
        </cfif>
        
        <cfif arraysEqual>  
            <cfreturn spreadsheetData>
        </cfif>
    </cffunction>
</cfcomponent>

