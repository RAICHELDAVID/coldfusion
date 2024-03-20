function box() {
    var check = parseInt(document.getElementById('inputNumber').value);
  
    if (check < 1 || check > 5) {
      alert("Please enter a number in the range between 1 to 5");
      return false; 
    }
  
    return true; 
}
