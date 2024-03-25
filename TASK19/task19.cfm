<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div>
        <form action="task19.cfm" method="post">
            <input type="submit" value="count" name="submit">
        </form>
        <cfif StructKeyExists(form,"submit")>
            <cfobject name ="count" component="components/task19">
            <cfoutput>
                <span>#count.cookieCount()#</span>
            </cfoutput>
        </cfif>
    </div>
</body>
</html>