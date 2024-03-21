<cfcomponent>
    <cffunction  name="structureFunction" access="public">
        <cfargument  name="form" type="struct">
        <cfif not structKeyExists(session, "formDataTask9")>
            <cfset session.formDataTask9=structNew()/>
        </cfif>
        <cfif structKeyExists(arguments.form, "key") and structKeyExists(arguments.form, "value")>
            <cfif not structKeyExists(session.formDataTask9,key)>
                <cfset session.formDataTask9[key]=value/>
            <cfelse>
                <cfoutput>key already exist</cfoutput>
            </cfif>
        </cfif>
        <cfreturn session.formDataTask9>
    </cffunction>
</cfcomponent>