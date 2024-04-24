
<cfcomponent>

    <cffunction name="savePage" access="remote" returnformat="json">
        <cfargument name="pageid" type="numeric" required="false">
        <cfargument name="pagename" type="string" required="true">
        <cfargument name="pagedesc" type="string" required="true">

        <cftry>
            <cfif arguments.pageid gte 1>
                <cfquery name="editPageQuery" datasource="demo">
                    UPDATE task28_page
                    SET 
                    pagename = <cfqueryparam value="#arguments.pagename#" cfsqltype="cf_sql_varchar">,
                    pagedesc = <cfqueryparam value="#arguments.pagedesc#" cfsqltype="cf_sql_varchar">
                    WHERE 
                    pageid = <cfqueryparam value="#arguments.pageid#" cfsqltype="cf_sql_integer">
                </cfquery>
                <cfreturn {"success":true,"message":"updated!!"}>
            <cfelse>
                <cfquery name="addPageQuery" datasource="demo">
                    INSERT INTO task28_page (pagename, pagedesc)
                    VALUES (
                    <cfqueryparam value="#arguments.pagename#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.pagedesc#" cfsqltype="cf_sql_varchar">
                    )
                </cfquery>
                <cfreturn {"success":true,"message":"inserted!!"}>
            </cfif>
        
        <cfcatch>
            <cfreturn {"error":"An error occurred while saving the page."}>
        </cfcatch>
        </cftry>
    </cffunction>


    <cffunction name="pageNotExists" access="remote" returnformat="json">
        <cfargument name="pageid" type="numeric" required="true">
        <cfargument name="pagename" type="string" required="true">
        
        <cfquery name="pageExist" datasource="demo">
            SELECT pagename
            FROM task28_page
            WHERE pagename = <cfqueryparam value="#arguments.pagename#" cfsqltype="cf_sql_varchar">
            AND pageid != <cfqueryparam value="#arguments.pageid#" cfsqltype="cf_sql_integer">
        </cfquery>
        
        <cfif pageExist.recordCount eq 0>
            <cfreturn {"message": true}>
        <cfelse>
            <cfreturn {"message": false}>
        </cfif>
    </cffunction>



    <cffunction name="getPages" access="public" returntype="query">
        <cfargument name="pageid" type="numeric" required="false">
        
        <cfquery name="getPagesQuery" datasource="demo">
            SELECT pageid,pagename,pagedesc FROM task28_page
            <cfif structKeyExists(arguments, "pageid")>
                WHERE pageid = <cfqueryparam value="#arguments.pageid#" cfsqltype="cf_sql_integer">
            </cfif>
        </cfquery>
        <cfreturn getPagesQuery>
    </cffunction>
    
    <cffunction name="deletePage" access="remote" returnformat="json">
        <cfargument name="pageid" type="numeric" required="true">
        
        <cfquery name="deletePageQuery" datasource="demo" result="deletePageQuery">
            DELETE FROM task28_page
            WHERE pageid = <cfqueryparam value="#arguments.pageid#" cfsqltype="cf_sql_integer">
        </cfquery>
        <cfreturn {"message":true}>
    </cffunction>

    <cffunction name="doLoginAuthenticate" access="remote" returntype="query">
        <cfargument name="username" type="string" required="true">
        <cfargument name="password" type="string" required="true">
        <cfset var hashValue = hash(arguments.password)>
        
        <cfquery name="getUser" datasource="demo">
            SELECT u.userid, u.roleid, r.rolename
            FROM task28_user u
            INNER JOIN role r ON u.roleid = r.roleid
            WHERE u.username = <cfqueryparam value="#arguments.username#" cfsqltype="cf_sql_varchar">
            AND u.password = <cfqueryparam value="#hashValue#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn getUser>
    </cffunction>

</cfcomponent>

