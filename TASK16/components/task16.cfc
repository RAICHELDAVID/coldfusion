<cfcomponent>
    <cffunction name="matrix" access="public">
        <cfset local.initialArray = [1, 4, 7, 2, 5, 8, 3, 6, 9]>
        <cfset local.row = []>
        <cfset local.myMatrix2DArray = []>
        <cfset local.arrayIndex = 1>
        <cfloop array="#initialArray#" index="element">
            <cfset arrayAppend(row, element)>
            <cfif arrayIndex mod 3 eq 0>
                <cfset arrayAppend(myMatrix2DArray, row)>
                <cfset row = []>
                <cfset arrayIndex = 1>
            <cfelse>
                <cfset arrayIndex = arrayIndex + 1>
            </cfif>
        </cfloop>
        <cfreturn myMatrix2DArray>

    </cffunction>
</cfcomponent>


