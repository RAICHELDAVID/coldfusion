<!DOCTYPE html>
<html>
   <head>
      <title>Feedback System</title>
   </head>
   <body>

<cfoutput>
         <form action="#CGI.SCRIPT_NAME#" method="post">
            <label for="key">Enter the key:</label>
            <input type="text" name="key"><br>
            <label for="value">Enter the value:</label>
            <input type="text" name="value"><br>
            <input type="submit" value="Submit">
         </form>
</cfoutput>
<cfif structKeyExists(form, "key") and structKeyExists(form, "value")>

<cfset task6 = new components.task6()>
<cfset structData=task6.structureFunction(form.key,form.value)/>
<cfdump var="#structData#">

</cfif>
      
   </body>
</html>
