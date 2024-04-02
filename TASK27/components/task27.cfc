<cfcomponent>

    <cffunction name="login" access="public" returntype="boolean">
        <cfargument name="username" type="string" required="true">
        <cfargument name="password" type="string" required="true">
        
        <cfif arguments.username eq "admin" and arguments.password eq "password">
            <cfset session.authenticated = true>
            <cfset session.username = arguments.username>
            <cfreturn true>
        <cfelse>
            <cfset session.authenticated = false>
            <cfreturn false>
        </cfif>
    </cffunction>

    <cffunction name="logout" access="public" returntype="void">
        <cfset structDelete(session, "authenticated")>
        <cfset structDelete(session, "username")>
    </cffunction>

    <cffunction name="isLoggedIn" access="remote" returntype="boolean">
        <cfreturn structKeyExists(session, "authenticated") and session.authenticated>
    </cffunction>

</cfcomponent>
