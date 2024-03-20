<cfcomponent>
    <cffunction name="dateFunction" access="remote">
        <cfoutput>TODAYS DATE IS = #dateFormat(now())#</cfoutput><br><br>
        <cfoutput>CURRENT MONTH IN NUMERIC = #month(now())#</cfoutput><br><br>
        <cfoutput>CURRENT MONTH IN WORD = #monthAsString(month(now()))#</cfoutput><br><br>
        <cfset currentDate = dateFormat(now()) /> 
        <cfset todaydayOfWeek = dayOfWeek(currentDate)>
        <cfset fridayOffset = (6-todaydayOfWeek)-7>
        <cfset mostRecentFriday = dateAdd("d", fridayOffset, currentDate)>
        <cfoutput>LAST FRIDAY = #mostRecentFriday#</cfoutput><br><br>
        <cfset d=#DaysInMonth(now())#>
        <cfoutput>LAST DAY IN MONTH = #D#-</cfoutput>
        <cfset m= #Month(now())#>
        <cfoutput>#M#-</cfoutput>
        <cfset yr=#Year(now())#>
        <cfoutput>#YR#</cfoutput><br><br>
 
        <cfset yesterday = DateFormat(DateAdd('d',-1,Now()), 'mm/dd/yyyy')>

        <cfset fromDate = yesterday>
        <cfset lastDay = DateFormat(DateAdd('d',-5,Now()), 'mm/dd/yyyy')>
        <cfset toDate = lastDay> 

        <cfloop from="#fromDate#" to="#toDate#" index="i" step=-1> 
            <cfset dateinLoop =dateFormat(i,"mm/dd/yyyy")/>
            <cfset dayWeek = dayOfWeek(dateinLoop)/>
            <cfif dayWeek eq 1>
                <cfoutput><p style="color:red">#dateinLoop#-Sunday</p></cfoutput>
            <cfelseif dayWeek eq 2>
                <cfoutput><p style="color:green">#dateinLoop#-Monday</p></cfoutput>
            <cfelseif dayWeek eq 3>
                <cfoutput><p style="color:orange">#dateinLoop#-Tuesday</p></cfoutput>
            <cfelseif dayWeek eq 4>
                <cfoutput><p style="color:yellow">#dateinLoop#-Wednesday</p></cfoutput>
            <cfelseif dayWeek eq 5>
                <cfoutput><p style="color:black">#dateinLoop#-Thursday</p></cfoutput>
            <cfelseif dayWeek eq 6>
                <cfoutput><p style="color:blue">#dateinLoop#-Friday</p></cfoutput>
            <cfelse>
                <cfoutput><p style="color:darkblack">#dateinLoop#-Saturday</p></cfoutput>
            </cfif>
        </cfloop>


    </cffunction>
</cfcomponent>