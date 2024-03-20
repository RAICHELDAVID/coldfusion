<!DOCTYPE html>
<html>
   <head>
      <title>Feedback System</title>
   </head>
   <body>

<cfoutput>
         <form action="#CGI.SCRIPT_NAME#" method="post">
            <label for="key">Enter the key:</label>
            <input type="text" id="key" name="key"><br>
            <label for="value">Enter the value:</label>
            <input type="text" id="value" name="value"><br>
            <input type="submit" value="Submit">
         </form>
</cfoutput>

         <cfinclude  template="components/task6.cfc">
         <cfset structure = createObject("component", "components.task6")>
         <cfset structure.structureFunction(form.key,form.value)/>
<cfdump var="#session.form#">

      
   </body>
</html>
