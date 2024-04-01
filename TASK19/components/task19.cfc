<cfcomponent>

    <cffunction name="incrementVisitsCounter" access="public" returntype="numeric">
        <cfargument name="cookieName" type="string" required="true">
        <cfset var visitsCounter = 0> 
        <cfparam name="cookie.#arguments.cookieName#" default="0">
        <cfif IsDefined("form.submitButton")>
            <cfset cookie[arguments.cookieName] = cookie[arguments.cookieName] + 1>
        </cfif>
        <cfreturn cookie[arguments.cookieName]>
    </cffunction>

</cfcomponent>
