<cfcomponent>
    <cffunction name="validateCaptcha" access="public" returntype="boolean" output="false">
        <cfargument name="inputCaptcha" type="string" required="true">
        <cfset var local.captchaText = session.captchaText>
        <cfif len(trim(inputCaptcha)) and len(trim(captchaText)) and compareNoCase(trim(inputCaptcha), trim(captchaText)) EQ 0>
            <cfreturn true>
        <cfelse>
            <cfreturn false>
        </cfif>
    </cffunction>
</cfcomponent>