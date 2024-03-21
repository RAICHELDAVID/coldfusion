<cfcomponent>
    <cffunction  name="matrix" access="public">
        <cfset array=[1,4,7,2,5,8,3,6,9]/>
        <cfset row=[]/>
        <cfset newArray=[]/>
        <cfloop array="#array#" index="index">
            <cfif #index#%3 eq 0>
                <cfset row.append[#index#]/>
                <cfset newArray.append[row]/>
                <cfset row=[]/>
                <cfset #index#=1/>
            <cfelse>
                <cfset row.append[#index#]/>
                <cfset #index#=#index#+1/>
            </cfif>
        </cfloop>
    </cffunction>
</cfcomponent>