<!DOCTYPE html>
<html>
<head>
    <title>task16</title>
</head>
<body>
    <cfset matrixDisplay = createObject("component", "components.task16")>
    <cfset myMatrix2DArray = matrixDisplay.matrix()>
    <cfoutput>
        <table>
            <cfloop array="#myMatrix2DArray#" index="row">
                <tr>
                    <cfloop array="#row#" index="element">
                        <td>#element#</td>
                    </cfloop>
                </tr>
            </cfloop>
        </table>
    </cfoutput>

</body>
</html>




