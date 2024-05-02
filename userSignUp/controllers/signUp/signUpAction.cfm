<cfset variables.strName="">
<cfset variables.strUsername="">
<cfset variables.intRole=0>

<cfif structKeyExists(FORM, "strName")>
    <cfset result=createObject("component", "controllers.signUp.signUp").validateFormFields(strName=form.strName,strUsername=form.strUsername,strPassword=form.strPassword,strConfirmPassword=form.strConfirmPassword,intRole=form.intRole)>
    <cfset variables.errorMessage=''>
    <cfset variables.strName=form.strName>
    <cfset variables.strUsername=form.strUsername>
    <cfset variables.intRole=form.intRole>
        <cfif isArray(result)>
            <cfloop array="#result#" index="error">
                <cfset variables.errorMessage&=error & "<br>">
            </cfloop>
        <cfelse>
        
        <cfset result=createObject("component", "models.signUp").saveUser(strUsername=form.strUsername,strPassword=form.strPassword,intRole=form.intRole,strName=form.strName)>
        <cfif result eq true>
            <cfset variables.message="Form submitted successfully!">
        <cfelse>
            <cfset variables.message="Form is not submitted!">
        </cfif>
    </cfif>
</cfif>
