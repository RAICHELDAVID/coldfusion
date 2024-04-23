
<cfif structKeyExists(url, "pageid")>
    <cfset variables.pageid = url.pageid>
    <cfset local.components = createObject("component", "CFC_models.page")>
    <cfset local.result = local.components.getPages(variables.pageid)>
    <cfset variables.pagename = local.result.pagename>
    <cfset variables.pagedesc = local.result.pagedesc>
</cfif>


