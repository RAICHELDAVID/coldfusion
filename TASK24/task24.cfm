<!DOCTYPE html>
<html>
<head>
    <title>Subscribe Form</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="script/script.js"></script>
</head>
<body>
    <form id="subscribeForm" method="post">
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" required><br><br>
        <label for="email">Email ID:</label>
        <input type="email" id="email" name="email" required>
        <button type="button" id="checkEmailBtn">Check</button><br><br>
        <button type="submit" id="submitBtn" disabled>Submit</button>
        <div id="errorMessage"></div>
    </form>
</body>
</html>
