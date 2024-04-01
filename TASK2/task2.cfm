<!DOCTYPE html>
<html>
<head>
    <title>task2</title>
</head>

<body>
    <form action="task2.cfm" method="post" onsubmit="return box()">
        <label>enter a digit from 1 to 5</label>
        <input type="number" name="inputNumber" id="inputNumber"><br>
        <input type="submit">
    </form>
    <cfif structKeyExists(form,"inputNumber")>
        <cfset task2 = createObject("component","components/task2")>
        <cfoutput>
            #task2.ratingUsingCFCASE(form.inputNumber)#
        </cfoutput>
    </cfif>
    <script src="script/script.js"></script>
</body>
</html>
