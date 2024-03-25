<!DOCTYPE html>
<html>
<head>
    <title>task15</title>
</head>

<body>
    <cfinvoke component="components.task15" method="multiply" returnvariable="result">
        <cfinvokeargument name="numbers" value="#[1, 2]#">
    </cfinvoke>
    <cfoutput>THE RESULT OF PRODUCT [1,2] USING cfinvoke</cfoutput><br>
    <cfoutput>#result#</cfoutput><br>
    <cfoutput>THE RESULT OF PRODUCT [1,2] USING cfobject</cfoutput><br>
    <cfobject name="multiply" type="component" component="components.task15">
    <cfoutput>#multiply.multiply([1,2])#</cfoutput><br>
    <cfoutput>THE RESULT OF PRODUCT [1,2] USING create object</cfoutput><br>
    <cfset multiply=createObject("component","components.task15")/>
    <cfoutput>#multiply.multiply([1,2])#</cfoutput><br>

    <cfinvoke component="components.task15" method="multiply" returnvariable="result">
        <cfinvokeargument name="numbers" value="#[1, 2, 3]#">
    </cfinvoke>
    <cfoutput>THE RESULT OF PRODUCT [1,2,3] USING cfinvoke</cfoutput><br>
    <cfoutput>#result#</cfoutput><br>
    <cfoutput>THE RESULT OF PRODUCT [1,2,3] USING cfobject</cfoutput><br>
    <cfobject name="multiply" type="component" component="components.task15">
    <cfoutput>#multiply.multiply([1,2,3])#</cfoutput><br>
    <cfoutput>THE RESULT OF PRODUCT [1,2,3] USING create object</cfoutput><br>
    <cfset multiply=createObject("component","components.task15")/>
    <cfoutput>#multiply.multiply([1,2,3])#</cfoutput><br>

    <cfinvoke component="components.task15" method="multiply" returnvariable="result">
        <cfinvokeargument name="numbers" value="#[1, 2, 3, 4]#">
    </cfinvoke>
    <cfoutput>THE RESULT OF PRODUCT [1,2,3,4] USING cfinvoke</cfoutput><br>
    <cfoutput>#result#</cfoutput><br>
    <cfoutput>THE RESULT OF PRODUCT [1,2,3,4] USING cfobject</cfoutput><br>
    <cfobject name="multiply" type="component" component="components.task15">
    <cfoutput>#multiply.multiply([1,2,3,4])#</cfoutput><br>
    <cfoutput>THE RESULT OF PRODUCT [1,2,3,4] USING create object</cfoutput><br>
    <cfset multiply=createObject("component","components.task15")/>
    <cfoutput>#multiply.multiply([1,2,3,4])#</cfoutput><br>
 </body>
</html>