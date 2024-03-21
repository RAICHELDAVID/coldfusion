<cfcomponent>
    <cffunction  name="countWord" access="remote">
        <cfargument  name="input" type="string">
        <cfset sentence="the quick brown fox jumps over the lazy dog"/>
        <cfset count=0/>
        <cfloop list="#sentence#" item="item" delimiters=" ">
            <cfif #arguments.input# eq #item#>
                <cfset count=count+1/>
            </cfif>
        </cfloop>
        <cfoutput>#count#</cfoutput>

    </cffunction>
</cfcomponent>