
<cfif structKeyExists(FORM, "strName")>
    <cfset result=createObject("component", "controllers.signUp.signUp").validateFormFields(strName=form.strName,strUsername=form.strUsername,strPassword=form.strPassword,strConfirmPassword=form.strConfirmPassword)>
    <cfset errorMessage=''>
        <cfif isArray(result)>
            <cfloop array="#result#" index="error">
                <cfset errorMessage&=error & "<br>">
            </cfloop>
        <cfelse>
        
        <cfset result=createObject("component", "models.signUp").saveUser(strUsername=form.strUsername,strPassword=form.strPassword,intRole=form.intRole,strName=form.strName)>
        <cfif result eq true>
            <cfset message="Form submitted successfully!">
        <cfelse>
            <cfset message="Form is not submitted!">
        </cfif>
    </cfif>
</cfif>
