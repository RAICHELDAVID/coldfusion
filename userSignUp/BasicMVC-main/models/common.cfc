<cfcomponent>
    <cffunction  name="displayTable">
        <cfquery name="getPage" datasource="demo">
            select * from task28_page
        </cfquery>
        <cfreturn getPage>
    </cffunction>
</cfcomponent>