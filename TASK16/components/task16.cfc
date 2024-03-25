<cfcomponent>
    <cffunction name="matrix" access="public">
        <cfset initialArray = [1, 4, 7, 2, 5, 8, 3, 6, 9]>
        <cfset row = []>
        <cfset myMatrix2DArray = []>
        <cfset arrayIndex = 1>
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

        <cfoutput>
            <table>
                <cfloop array="#myMatrix2DArray#" index="row">
                    <tr>
                        <cfloop array="#row#" index="element">
                            <td>#element#</td>
                        </cfloop>
                    </tr>
                </cfloop>
            </table>
        </cfoutput>

    </cffunction>
</cfcomponent>