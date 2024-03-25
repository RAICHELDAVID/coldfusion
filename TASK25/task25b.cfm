


<!DOCTYPE html>
<html>
<head>
    <title>Word Count</title>
</head>
<body>
    <h1>Word Count</h1>
    
    <cfset wordCounts = {}>
    
    <cfquery name="getWords" datasource="demo">
        SELECT word
        FROM task25
    </cfquery>

    <cfloop query="getWords">
        <cfset word = trim(getWords.word)>
        
        <cfif len(lcase(word)) >= 3 and not isNumeric(word)>
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
</body>
</html>
