
<cfcomponent>
    <cffunction name="structureFunction" access="public">
        <cfargument name="form" type="struct">
        
        <cfif not structKeyExists(session, "formDataTask9")>
            <cfset session.formDataTask9 = structNew()>
        </cfif>
        
        <cfset var message = "">
        
        <cfif structKeyExists(arguments.form, "key") and structKeyExists(arguments.form, "value")>
            <cfif not structKeyExists(session.formDataTask9, arguments.form.key)>
                <cfset session.formDataTask9[arguments.form.key] = arguments.form.value>
            <cfelse>
                <cfset message = "Key already exists">
            </cfif>
        </cfif>
        
        <cfreturn message>
    </cffunction>
</cfcomponent>


