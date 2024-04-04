<cfcomponent>
    
    <cffunction name="addPage" access="public">
        <cfargument name="pagename" type="string" required="true">
        <cfargument name="pagedesc" type="string" required="true">
        
        <cfquery name="addPageQuery" datasource="demo">
            INSERT INTO task28_page (pagename, pagedesc)
            VALUES (
                <cfqueryparam value="#arguments.pagename#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.pagedesc#" cfsqltype="cf_sql_varchar">
            )
        </cfquery>
        
        <cfreturn "Page added successfully">
    </cffunction>


    <cffunction name="editPage" access="public">
        <cfargument name="pageid" type="numeric" required="true">
        <cfargument name="pagename" type="string" required="true">
        <cfargument name="pagedesc" type="string" required="true">


        <cfif NOT isNumeric(arguments.pageid)>
            <cfthrow message="Invalid pageid passed">
        </cfif>
       
        <cflog text="Page ID: #arguments.pageid#, Page Name: #arguments.pagename#, Page Description: #arguments.pagedesc#" type="information">

        <cfquery name="editPageQuery" datasource="demo">
            UPDATE task28_page
            SET pagename = <cfqueryparam value="#arguments.pagename#" cfsqltype="cf_sql_varchar">,
                pagedesc = <cfqueryparam value="#arguments.pagedesc#" cfsqltype="cf_sql_varchar">
            WHERE pageid = <cfqueryparam value="#arguments.pageid#" cfsqltype="cf_sql_integer">
        </cfquery>
        
        <cfreturn "Page updated successfully">
    </cffunction>
    <cffunction name="getPages" access="public">
        <cfquery name="getPagesQuery" datasource="demo">
            SELECT * FROM task28_page
        </cfquery>
        <cfreturn getPagesQuery>
    </cffunction>
    <cffunction name="deletePage" access="remote">
        <cfargument name="pageid" type="numeric" required="true">
        
        <cfquery name="deletePageQuery" datasource="demo">
            DELETE FROM task28_page
            WHERE pageid = <cfqueryparam value="#arguments.pageid#" cfsqltype="cf_sql_integer">
        </cfquery>
        
        <cfreturn "Page deleted successfully">
    </cffunction>
    <cffunction name="validateUser" access="public">
        <cfargument name="username" type="string" required="true">
        <cfargument name="password" type="string" required="true">

        <cfquery name="getUser" datasource="demo">
            SELECT u.userid, u.roleid, r.rolename
            FROM task28_user u
            INNER JOIN role r ON u.roleid = r.roleid
            WHERE u.username = <cfqueryparam value="#arguments.username#" cfsqltype="cf_sql_varchar">
            AND u.password = <cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar">
        </cfquery>

        <cfif getUser.recordCount>
            <cfset session.userID = getUser.userid>
            <cfset session.userRole = getUser.rolename>
            <cfif getUser.rolename eq "admin" or getUser.rolename eq "editor" or getUser.rolename eq "user">
                <cflocation url="list.cfm" addtoken="false">
            </cfif>
        <cfelse>
            <cfreturn "invalid user">
        </cfif>
    </cffunction>

</cfcomponent>