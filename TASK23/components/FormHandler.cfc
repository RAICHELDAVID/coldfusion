
<cfcomponent>
    
    <cffunction name="saveFormData" access="remote" returntype="void">
        <cfargument name="PositionAppliedFor">  
        <cfargument name="Field19"> 
        <cfargument name="month">     
        <cfargument name="day"> 
        <cfargument name="year">    
        <cfargument name="Field14">
        <cfargument name="Field16">
        <cfargument name="Field161">
        <cfargument name="Field22">
        <cfargument name="Field23">
        <cfargument name="field13">
        <cfargument name="Field25">
        <cfargument name="Field251"> 
        <cfargument name="Field252">
        
        <cfset date=#arguments.year#&"-"&#arguments.month#&"-"&#arguments.day#>
        <cfset salary=#arguments.Field16#&"."&#arguments.Field161#>
        <cfset name=#arguments.Field22#&"."&#arguments.Field23#>
        <cfset phno=#arguments.Field25#&#arguments.Field251#&#arguments.Field252#>

        <cfquery name="insertQuery" datasource="demo">
            INSERT INTO task23 VALUES (
                <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.PositionAppliedFor#">,
                <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Field19#">,
                <cfqueryparam cfsqltype="cf_sql_varchar" value="#date#">,
                <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Field14#">,
                <cfqueryparam cfsqltype="cf_sql_varchar" value="#salary#">,
                <cfqueryparam cfsqltype="cf_sql_varchar" value="#name#">,
                <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.field13#">,
                <cfqueryparam cfsqltype="cf_sql_varchar" value="#phno#">
            )
        </cfquery>

    </cffunction>
</cfcomponent>
