<cfcomponent>
    <cffunction name="insertIntoTable" access="public">
        <cfargument name="paragraph" type="string" required="true">

        <cfset words = listToArray(arguments.paragraph, " ")>

        <cfloop array="#words#" index="word">
            <cfquery name="insertQuery" datasource="demo">
                INSERT INTO task25 (word) VALUES (<cfqueryparam value="#word#" cfsqltype="CF_SQL_VARCHAR">)
            </cfquery>
        </cfloop>
    </cffunction>

    <cffunction name="retrieveFunction" access="public">
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
        <cfoutput>
            <table>
                <thead>
                    <tr>
                        <th>Word</th>
                        <th>Count</th>
                    </tr>
                </thead>
                <tbody>
                    <cfloop array="#structArray#" index="item">
                        <cfif item.value eq 5>
                            <tr style="background-color: red;font-size:30px">
                        <cfelseif item.value eq 4>
                            <tr style="background-color: green;font-size:25px">
                        <cfelseif item.value eq 3>
                            <tr style="background-color: yellow;font-size:20px">
                        <cfelseif item.value eq 2>
                            <tr style="background-color: pink;font-size:15px">
                        <cfelse>
                            <tr style="background-color: violet ;font-size:10px">
                        </cfif>
                            <td>#item.key#</td>
                            <td>#item.value#</td>
                        </tr>
                    </cfloop>
                </tbody>
            </table>

</cfoutput>
    </cffunction>
</cfcomponent>






