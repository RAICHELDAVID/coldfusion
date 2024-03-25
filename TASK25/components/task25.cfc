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
    <cffunction  name="retrieveFunction" access="public">
            <cfset wordCounts = {}>
    
    <cfquery name="getWords" datasource="demo">
        SELECT word
        FROM task25
    </cfquery>
    
    <cfloop query="getWords">
        <cfset word = trim(getWords.word)>
        
        <cfif len(word) >= 3 and not isNumeric(word)>
            <cfset wordCounts[word] = wordCounts[word] + 1>
        </cfif>
    </cfloop>
    
    <cfset wordArray = []>
    <cfloop collection="#wordCounts#" item="word">
        <cfset arrayAppend(wordArray, {word=word, count=wordCounts[word]})>
    </cfloop>
    
    <cfset sortedWordArray = arraySort(wordArray, "numeric desc, len(word) desc, word")>
    
    <table border="1">
        <tr>
            <th>Word</th>
            <th>Count</th>
        </tr>
        <cfloop array="#sortedWordArray#" index="word">
            <tr>
                <td>#word.word#</td>
                <td>#word.count#</td>
            </tr>
        </cfloop>
    </table>
    </cffunction>
</cfcomponent>


