<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Birthday Wishes</title>
</head>
<body>

    <h1>Birthday Wishes</h1>

    <cfparam name="form.babyName" default="">
    <cfparam name="form.email" default="">
    <cfparam name="form.wishes" default="">
    <cfparam name="form.greetingImage" default="">

    <cfif IsDefined("form.submit")>
        <cfif form.babyName EQ "" OR form.email EQ "" OR form.wishes EQ "" OR form.greetingImage EQ "">
            <p>Please fill in all fields.</p>
        <cfelse>
            <cfset task21 = createObject("component", "components.task21")>
            <cfset task21.sendBirthdayGreeting(form.babyName, form.email, form.wishes, form.greetingImage)>

            <p>Greeting email sent successfully!</p>
        </cfif>
    </cfif>

    <form method="post" enctype="multipart/form-data">
        <label for="babyName">Birthday Baby Name:</label><br>
        <input type="text" id="babyName" name="babyName" required><br><br>
        
        <label for="email">His Email Id:</label><br>
        <input type="email" id="email" name="email" required><br><br>
        
        <label for="wishes">Birthday Wishes:</label><br>
        <textarea id="wishes" name="wishes" rows="4" required></textarea><br><br>
        
        <label for="greetingImage">Greeting Image:</label><br>
        <input type="file" id="greetingImage" name="greetingImage"><br><br>
        
        <input type="submit" name="submit" value="Send Greeting">
    </form>

</body>
</html>