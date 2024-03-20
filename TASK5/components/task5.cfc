<cfcomponent>
    <cffunction  name="ageFunction" access="remote">
        <cfargument  name="userAge">
        <cfargument  name="motherAge">

        <cfset yourAge = dateDiff("yyyy", #arguments.userAge#, now())>
        <cfoutput>you are #yourAge# years old</cfoutput><br>
        <cfset motherAgeAtMyBirth=dateDiff("yyyy", #arguments.motherAge#, #arguments.userAge#)>
        <cfoutput>your mother was #motherAgeAtMyBirth# years old at the time of your birth</cfoutput><br>
        <cfset remainingDaysForBirthday = dateDiff("d", #arguments.motherAge#, #arguments.userAge#)>
        <cfset userMonth=dateFormat(#arguments.userAge#,'mm')>
        <cfset userDay=dateFormat(#arguments.userAge#,'dd')>
        <cfset motherMonth=dateFormat(#arguments.motherAge#,'mm')>
        <cfset motherDay=dateFormat(#arguments.motherAge#,'dd')>
        <cfset CreatedDateUser=CreateDate(2024,#userMonth#,#userDay#)>
        <cfset CreatedDateMother=CreateDate(2024,#motherMonth#,#motherDay#)>
        <cfif userMonth gt motherMonth>
            <cfset difference=dateDiff('d', CreatedDateMother,CreatedDateUser )>
        <cfelse>
            <cfset difference=dateDiff('d',CreatedDateUser,CreatedDateMother )>
        </cfif>
        <cfoutput> The difference between birthday of me and my mother is  #difference# days</cfoutput>
    </cffunction>
</cfcomponent>
