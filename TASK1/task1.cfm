<!DOCTYPE html>
<html>
<head>
    <title>task1</title>
</head>

<body>
    <form action="components/task1.cfc?method=ratingUsingCFIF" method="post" onsubmit="return box()">
        <label>enter a digit from 1 to 5</label>
        <input type="number" name="inputNumber" id="inputNumber"><br>
        <input type="submit">
    </form>
    <script src="script/script.js"></script>
</body>
</html>
