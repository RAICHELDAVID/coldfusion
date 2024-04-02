<cfcomponent>
    <cffunction  name="countWord" access="public">
        <cfargument  name="input" type="string">
        <cfset local.sentence="the quick brown fox jumps over the lazy dog"/>
        <cfset local.count=0/>
        <cfloop list="#sentence#" item="item" delimiters=" ">
            <cfif arguments.input eq item>
                <cfset count=count+1/>
            </cfif>
        </cfloop>
        <cfreturn count>
    </cffunction>
</cfcomponent>