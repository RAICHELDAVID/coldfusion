<cfcomponent>
    <cffunction name="queryFunction" access="remote">
        <cfset newQuery=QueryNew("Id,Name,email","integer,varchar,varchar")/>
        <cfset QueryAddRow(newquery)/>
        <cfset QuerySetCell(newQuery, "Id","1")/>
        <cfset QuerySetCell(newQuery,"Name","RAICHEL")/>
        <cfset QuerySetCell(newQuery, "email","raicheldavid22@gmail.com")/>
        <cfset QueryAddRow(newquery)/>
        <cfset QuerySetCell(newQuery, "Id","2")/>
        <cfset QuerySetCell(newQuery,"Name","TIJU")/>
        <cfset QuerySetCell(newQuery, "email","tijumathew95@gmail.com")/>
        <cfdump var="#newQuery#">

    </cffunction>
</cfcomponent>