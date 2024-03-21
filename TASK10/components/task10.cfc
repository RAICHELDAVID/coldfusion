<cfcomponent>

    <cffunction name="structureFunction" access="public">
        <cfargument name="form" type="struct" required="true">
        <cfif not structKeyExists(session, "formDataTask10")>
            <cfset session.formDataTask10=structNew()/>
        </cfif>
        <cfif structKeyExists(arguments.form, "key") and structKeyExists(arguments.form, "value")>
            <cfset session.formDataTask10[arguments.form.key]=value/>
        </cfif>
        <cfreturn session.formDataTask10>
    </cffunction>

</cfcomponent>
