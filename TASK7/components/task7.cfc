<cfcomponent>

    <cffunction name="structureFunction" access="public">
        <cfargument name="form" type="struct" required="true">
        <cfif not structKeyExists(session, "formData")>
            <cfset session.formData=structNew()/>
        </cfif>
        <cfif structKeyExists(arguments.form, "key") and structKeyExists(arguments.form, "value")>
            <cfset session.formData[arguments.form.key]=value/>
        </cfif>
        <cfreturn session.formData>
    </cffunction>

</cfcomponent>
