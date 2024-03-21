<!DOCTYPE html>
<html>
<head>
    <title>task12</title>
</head>

<body>
    <cfoutput>
        <form action="components/task12.cfc?method=retrieveData" method="post">
            <label>enter a digit from 1 to 10</label>
            <input type="number" name="number">
            <input type="submit">
        </form> 
    </cfoutput>


</body>
</html>