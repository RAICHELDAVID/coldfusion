<cfcomponent>
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
            <cfif getUser.rolename eq "admin" or getUser.rolename eq "editor">
                <cflocation url="admindashboard.cfm" addtoken="false">
            <cfelse>
                <cflocation url="userDashboard.cfm" addtoken="false">
            </cfif>
        <cfelse>
            <cfreturn "invalid user">
        </cfif>
    </cffunction>
</cfcomponent>