
<cfcomponent>

    <cffunction name="getJsonData" access="public" output="false" returntype="string">
        <cfset local.jsonData = '[{"Name":"Saravanan","Age":27,"LOCATION":"Dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]'>
        <cfreturn jsonData>
    </cffunction>

</cfcomponent>






