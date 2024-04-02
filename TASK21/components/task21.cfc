<cfcomponent>

    <cffunction name="sendBirthdayGreeting" access="public" returntype="void">
        <cfargument name="babyName" type="string" required="true">
        <cfargument name="email" type="string" required="true">
        <cfargument name="greetingImage" type="string" required="false">
        <cfargument name="formattedContent" type="string" required="true">
        
        <cfmail to="#email#" from="raicheldavid22@gmail.com" subject="Happy Birthday!" type="html">
            #arguments.formattedContent#
            <cfif len(arguments.greetingImage)>
                <cfmailparam file="#arguments.greetingImage#" disposition="attachment" type="image/jpeg">
            </cfif>
        </cfmail>
    </cffunction>
</cfcomponent>

