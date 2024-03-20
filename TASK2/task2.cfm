<!DOCTYPE html>
<html>
<head>
    <title>task2</title>
</head>

<body>
    <form action="components/task2.cfc?method=ratingUsingCFCASE" method="post" onsubmit="return box()">
        <label>enter a digit from 1 to 5</label>
        <input type="number" name="inputNumber" id="inputNumber"><br>
        <input type="submit">
    </form>
    <script src="script/script.js"></script>
</body>
</html>
