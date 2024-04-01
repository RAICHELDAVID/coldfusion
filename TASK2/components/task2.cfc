<cfcomponent>
    <cffunction name="ratingUsingCFCASE" access="public">
        <cfargument name="inputNumber" type="string">
        <cfswitch expression="#inputNumber#">
            <cfcase value=5> VERY GOOD</cfcase>
            <cfcase value=4> GOOD</cfcase>
            <cfcase value=3> FAIR</cfcase>
            <cfdefaultcase>OK</cfdefaultcase>
        </cfswitch>
    </cffunction>
</cfcomponent>