<!DOCTYPE html>
<html>
<head>
    <title>task1</title>
</head>

<body>
    <form action="task1.cfm" method="post" onsubmit="return box()">
        <label>enter a digit from 1 to 5</label>
        <input type="number" name="inputNumber" id="inputNumber"><br>
        <input type="submit">
    </form>
    <cfif structKeyExists(form,"inputNumber")>
        <cfset task1 = createObject("component","components/task1")>
        <cfoutput>
            #task1.ratingUsingCFIF(form.inputNumber)#
        </cfoutput>
    </cfif>
    <script src="script/script.js"></script>
</body>
</html>
