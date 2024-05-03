<cfset variables.pageid = 0>
<cfset variables.strPagename = "">
<cfset variables.strPagedesc = "">
<cfif structKeyExists(url, "pageid")>
    <cfset variables.pageid = url.pageid>
    <cfset local.components = createObject("component", "CFC_models.page")>
    <cfset local.result = local.components.getPages(variables.pageid)>
    <cfset variables.strPagename = local.result.pagename>
    <cfset variables.strPagedesc = local.result.pagedesc>
</cfif>


