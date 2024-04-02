
<cfcomponent>

    <cffunction name="retrieveFunction" access="public" returntype="string">
        <cfquery name="getWords" datasource="demo">
            SELECT word
            FROM task25
        </cfquery>
        
        <cfset myArray = [] />
        <cfloop query="getWords">
            <cfset arrayAppend(myArray, getWords.word) />
        </cfloop>
        
        <cfset wordCounts = {} />
        <cfloop array="#myArray#" item="item">
            <cfif !isNumeric(item) AND len(item) GTE 3>
                <cfif structKeyExists(wordCounts, item)>
                    <cfset wordCounts[item]++>
                <cfelse>
                    <cfset wordCounts[item] = 1>
                </cfif>
            </cfif>
        </cfloop>
        
        <cfset structArray = [] />
        <cfloop collection="#wordCounts#" item="key">
            <cfset arrayAppend(structArray, {key=key, value=wordCounts[key]}) />
        </cfloop>
        
        <cfset arraySort(structArray, function(a, b) {
            var compareValue = compare(b.value, a.value);
        
            if (compareValue == 0) {
                return compare(len(b.key), len(a.key));
            } else {
                return compareValue;
            }
        })>
        
        <cfset tableHTML = "" />
        
        <cfloop array="#structArray#" index="item">
            <cfset bgColor = "" />
            <cfset fontSize = "" />
        
            <cfif item.value eq 5>
                <cfset bgColor = "red" />
                <cfset fontSize = "30px" />
            <cfelseif item.value eq 4>
                <cfset bgColor = "green" />
                <cfset fontSize = "25px" />
            <cfelseif item.value eq 3>
                <cfset bgColor = "yellow" />
                <cfset fontSize = "20px" />
            <cfelseif item.value eq 2>
                <cfset bgColor = "pink" />
                <cfset fontSize = "15px" />
            <cfelse>
                <cfset bgColor = "violet" />
                <cfset fontSize = "10px" />
            </cfif>
        
            <cfset tableHTML &= "<tr style='background-color:#bgColor#;font-size:#fontSize#'><td>#item.key#</td><td>#item.value#</td></tr>" />
        </cfloop>
        
        <cfreturn tableHTML />
    </cffunction>

</cfcomponent>








