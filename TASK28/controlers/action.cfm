<cfset variables.pageid=0>
<cfset variables.pagename = "">
<cfset variables.pagedesc = "">
<cfset variables.Errormessage="">
<cfset variables.Successmessage="">

<cfif structKeyExists(url, "pageid")>
    <cfset variables.pageid = url.pageid>
    <cfset local.components = createObject("component", "admin.page")>
    <cfset local.result = local.components.getPages(variables.pageid)>
    <cfloop query="local.result">
        <cfif local.result.pageid EQ variables.pageid>
            <cfset variables.pagename = local.result.pagename>
            <cfset variables.pagedesc = local.result.pagedesc>
            <cfbreak>
        </cfif>
    </cfloop>
</cfif>

<cfif structKeyExists(form, "submit")>
    <cfset local.components = createObject("component","admin.page")>
    <cfset variables.pagename = form.pagename>
    <cfset variables.pagedesc = form.pagedesc>
    <cfset local.validData = "^[a-zA-Z]+$">
    <cfset local.validateData = "^(?=.*[a-zA-Z])[a-zA-Z\d]+$">

    <!---using listFind() function
    <cfset variables.pagename = form.pagename>
    <cfset variables.pagedesc = form.pagedesc>
    <cfset specialCharList="!,@,%,$,^,&,*,(,),_,-,+,*,/">
    <cfloop index="i" from="1" to="#len(variables.pagename)#">
            <cfset currentChar = mid(form.pagename, i, 1)>
            <cfif isValid("integer",currentChar) or listFind(specialCharList, currentChar)>
                <cfset variables.Errormessage &= "Page Name should not contain digits or special characters!" & "<br>">
                <cfbreak>
            </cfif>
    </cfloop>--->


    <!---<cfif isNumeric(variables.pagedesc)>
            <cfset variables.Errormessage &= "Page description should not contain only digits!" & "<br>">
    </cfif>--->
    <!---<cfif isValid("integer", variables.pagedesc)>
            <cfset variables.Errormessage &= "Page Description is invalid!" & "<br>">
    </cfif>--->
        
    <cfif not isValid("regex", form.pagename, local.validData)>
        <cfset variables.Errormessage &= "Page Name is invalid!" & "<br>">
    </cfif>
        
    <cfif not isValid("regex", form.pagedesc, local.validateData)>
        <cfset variables.Errormessage &= "Page Description is invalid!" & "<br>">
    </cfif>

        <!---<cfif !isvalid("string",variables.pagename)>
            <cfset variables.Errormessage &= "Page name is invalid!" & "<br>">
        </cfif>--->
        <!---<cfif isValid("integer", variables.pagedesc)>
            <cfset variables.Errormessage &= "Page Description is invalid!" & "<br>">
        </cfif>--->

        
    <!---<cfif variables.Errormessage eq "">
        <cfset local.result = local.components.savePage(variables.pageid, form.pagename, form.pagedesc)>
            <cfif local.result>
                <cfset variables.Successmessage = "Page saved successfully!" & "<br>">
            </cfif>
    </cfif>--->
</cfif>