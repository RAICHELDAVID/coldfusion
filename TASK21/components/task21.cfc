<cfcomponent>

    <cffunction name="sendBirthdayGreeting" access="public" returntype="void">
        <cfargument name="babyName" type="string" required="true">
        <cfargument name="email" type="string" required="true">
        <cfargument name="wishes" type="string" required="true">
        <cfargument name="greetingImage" type="string" required="false">
        
        <cfmail to="#email#" from="#email#" subject="Happy Birthday!" type="html">
            <p>Dear #babyName#,</p>
            <p>Warm wishes on your special day!</p>
            <p>#wishes#</p>
            <cfif len(arguments.greetingImage)>
                <cfmailparam file="#greetingImage#" disposition="attachment" type="image/jpeg">
            </cfif>
        </cfmail>
    </cffunction>
</cfcomponent>