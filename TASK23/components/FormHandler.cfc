<!---<cfcomponent>
    
    <cffunction name="saveFormData" access="remote" returntype="void">


        <cfargument name="formData" type="struct" required="true">
        
        <!--- Connect to your SQL Server database --->
        <cfset dataSourceName = "demo">
        <cfset username = "admin">
        <cfset password = "raichel">
        
        <cftry>
            <cfset conn = datasource.getConnection(demo, admin, raichel)>
            <cfcatch type="database">
                <cfdump var="#cfcatch#">
                <cfabort>
            </cfcatch>
        </cftry>
        
        <!--- Prepare SQL insert statement --->
        <cfset insertQuery = "
            INSERT INTO task23_formData (
                PositionAppliedFor,
                WillingToRelocate,
                StartDate,
                PortfolioWebsite,
                ResumeAttachment,
                SalaryRequirements,
                FirstName,
                LastName,
                EmailAddress,
                Phone
            )
            VALUES (
                <cfqueryparam value=""##arguments.formData.PositionAppliedFor##"" cfsqltype=""CF_SQL_VARCHAR"">,
                <cfqueryparam value=""##arguments.formData.WillingToRelocate##"" cfsqltype=""CF_SQL_VARCHAR"">,
                <cfqueryparam value=""##arguments.formData.StartDate##"" cfsqltype=""CF_SQL_DATE"">,
                <cfqueryparam value=""##arguments.formData.PortfolioWebsite##"" cfsqltype=""CF_SQL_VARCHAR"">,
                <cfqueryparam value=""##arguments.formData.ResumeAttachment##"" cfsqltype=""CF_SQL_VARCHAR"">,
                <cfqueryparam value=""##arguments.formData.SalaryRequirements##"" cfsqltype=""CF_SQL_VARCHAR"">,
                <cfqueryparam value=""##arguments.formData.FirstName##"" cfsqltype=""CF_SQL_VARCHAR"">,
                <cfqueryparam value=""##arguments.formData.LastName##"" cfsqltype=""CF_SQL_VARCHAR"">,
                <cfqueryparam value=""##arguments.formData.EmailAddress##"" cfsqltype=""CF_SQL_VARCHAR"">,
                <cfqueryparam value=""##arguments.formData.Phone##"" cfsqltype=""CF_SQL_VARCHAR"">
            )
        " >

        
        <!--- Execute the insert query with the form data --->
        <cfquery name="insertResult" datasource="#demo#">
            #insertQuery#
        </cfquery>
        
        <!--- Close database connection --->
        <cfset conn.close()>
    </cffunction>
    
</cfcomponent>--->
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
