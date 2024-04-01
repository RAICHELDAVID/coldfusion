<cfcomponent>
    <cffunction name="dateFunction" access="public" returntype="string">
        <cfset result = "">
        <cfset currentDate = dateFormat(now()) /> 
        <cfset todaydayOfWeek = dayOfWeek(currentDate)>
        <cfset fridayOffset = (6 - todaydayOfWeek) - 7>
        <cfset mostRecentFriday = dateAdd("d", fridayOffset, currentDate)>
        <cfset d = DaysInMonth(now())>
        <cfset m = Month(now())>
        <cfset yr = Year(now())>
        <cfset yesterday = DateFormat(DateAdd('d', -1, Now()), 'mm/dd/yyyy')>
        <cfset fromDate = yesterday>
        <cfset lastDay = DateFormat(DateAdd('d', -5, Now()), 'mm/dd/yyyy')>
        <cfset toDate = lastDay>
        
        <cfloop from="#fromDate#" to="#toDate#" index="i" step="-1"> 
            <cfset dateinLoop = dateFormat(i, "mm/dd/yyyy")/>
            <cfset dayWeek = dayOfWeek(dateinLoop)/>
            <cfswitch expression="#dayWeek#">
                <cfcase value="1"><cfset result &= "#dateinLoop#-Sunday<br>"></cfcase>
                <cfcase value="2"><cfset result &= "#dateinLoop#-Monday<br>"></cfcase>
                <cfcase value="3"><cfset result &= "#dateinLoop#-Tuesday<br>"></cfcase>
                <cfcase value="4"><cfset result &= "#dateinLoop#-Wednesday<br>"></cfcase>
                <cfcase value="5"><cfset result &= "#dateinLoop#-Thursday<br>"></cfcase>
                <cfcase value="6"><cfset result &= "#dateinLoop#-Friday<br>"></cfcase>
                <cfdefaultcase><cfset result &= "#dateinLoop#-Saturday<br>"></cfdefaultcase>
            </cfswitch>
        </cfloop>
        
        <cfset result &= "TODAYS DATE IS = #dateFormat(now())#<br><br>">
        <cfset result &= "CURRENT MONTH IN NUMERIC = #month(now())#<br><br>">
        <cfset result &= "CURRENT MONTH IN WORD = #monthAsString(month(now()))#<br><br>">
        <cfset result &= "LAST FRIDAY = #mostRecentFriday#<br><br>">
        <cfset result &= "LAST DAY IN MONTH = #d#-#m#-#yr#<br><br>">
        
        <cfreturn result>
    </cffunction>
</cfcomponent>

