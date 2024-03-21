<cfcomponent>

    <cffunction name="structureFunction" access="public">
        <cfargument name="form" type="struct" required="true">
        <cfif not structKeyExists(session, "formDataTask8")>
            <cfset session.formDataTask8=structNew()/>
        </cfif>
        <cfif structKeyExists(arguments.form, "key") and structKeyExists(arguments.form, "value")>
            <cfset session.formDataTask8[arguments.form.key]=value/>
        </cfif>
        <cfreturn session.formDataTask8>
    </cffunction>

</cfcomponent>
