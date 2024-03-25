function box() {
    var numbers = /^[0-9]+$/;
    var input = document.getElementById('input').value;
    if (input.match(numbers)) {
        return true; 
    } else {
        alert("Please enter only numeric values.");
        return false;
    }
}
