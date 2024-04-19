<!---<cfcomponent>
    <cffunction  name="editPageFunction" access="public">
        <!---<cfset variables.pageid=0>
        <cfset variables.pagename = "">
        <cfset variables.pagedesc = "">
        <cfset variables.Errormessage="">
        <cfset variables.Successmessage="">--->
        <cfargument  name="pageid" type="numeric">
        <cfargument  name="pagename" type="string">
        <cfargument  name="pagedesc" type="string">
        <cfset variables.Errormessage=''>
        <cfset local.validData = "^[a-zA-Z]\s+$">
        <cfset local.validateData = "^(?=.*[a-zA-Z])[a-zA-Z\d]\s+$">

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
        
    <cfif isValid("regex", #arguments.pagename#, local.validData) or isValid("regex", #arguments.pagedesc#, local.validateData)>
        <cfreturn true>
    <cfelse>
        <cfreturn false>
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


    </cffunction>
</cfcomponent>--->


<!---<cfcomponent>
    <cffunction name="editPageFunction" access="public" returntype="boolean">
        <cfargument name="pageid" type="numeric" required="true">
        <cfargument name="pagename" type="string" required="true">
        <cfargument name="pagedesc" type="string" required="true">
        
        <cfset var Errormessage = "">
        <!---<cfset arguments.pagename=form.pagename>
        <cfset arguments.pagedesc=form.pagedesc>--->
        
        <cfset var validData = "^[a-zA-Z]+$">
        <cfset var validateData = "^(?=.*[a-zA-Z])[\w\s]+$">
        
        
        <cfset var combinedErrorMessage = "">
        
        <cfif NOT isValid("regex", arguments.pagename, validData)>
            <cfset Errormessage = "Page name should contain only alphabetic characters!">
            <cfset combinedErrorMessage &= Errormessage & "<br>"> 
        </cfif>
        
        <cfif NOT isValid("regex", arguments.pagedesc, validateData)>
            <cfset Errormessage = "Page description should not contain numbers only!">
            <cfset combinedErrorMessage &= Errormessage & "<br>"> 
        </cfif>
        
        <cfif len(combinedErrorMessage)>
            <cfset this.Errormessage = combinedErrorMessage>
            <cfreturn false>
        <cfelse>
            <cfset local.components = createObject("component","admin.page")>
            <cfset local.result = local.components.savePage(arguments.pageid, arguments.pagename, arguments.pagedesc)>
            <cfif local.result>
                <cflocation  url="../view/list.cfm">
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>--->


<cfcomponent>
    <cffunction name="validateInputs" access="remote" returnformat="json" returntype="struct">
        <cfargument name="pagename" type="string" required="true">
        <cfargument name="pagedesc" type="string" required="true">
        
        <cfset var response = {
            isValid = true,
            errorMessage = ""
        }>
        <cfset var validData = "^[a-zA-Z]+$">
        <cfset var validateData = "^(?=.*[a-zA-Z])[\w\s]+$">
        <cfif len(trim(arguments.pagename)) eq 0 OR len(trim(arguments.pagedesc)) eq 0>
            <cfset response.isValid = false>
            <cfset response.errorMessage &= "Both page name and page description are required.<br>">
        </cfif>

        <cfif NOT isValid("regex", arguments.pagename, validData)>
            <cfset response.isValid = false>
            <cfset response.errorMessage &= "Page name should contain only alphabetic characters.<br>">
        </cfif>

        <cfif NOT isValid("regex", arguments.pagedesc, validateData)>
            <cfset response.isValid = false>
            <cfset response.errorMessage &= "Page description should not contain numbers only.<br>">
        </cfif>
        <cfreturn response>
    </cffunction>
</cfcomponent>
