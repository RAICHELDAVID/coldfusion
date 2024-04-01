<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Visits Counter</title>
</head>
<body>

<cfinclude template="components/task19.cfc">

<cfset VisitsCounterService = new components.task19()>

<cfset VisitsCounterService.incrementVisitsCounter("VisitsCounter")>

<form method="post">
    <input type="submit" name="submitButton" value="Increment Visits Counter">
</form>

<p>Visits Counter: <cfoutput>#VisitsCounterService.incrementVisitsCounter("task19")#</cfoutput></p>

</body>
</html>
