
function changeColor(elementID) {
    const box = document.getElementById(elementID);
    box.addEventListener('click', function() {
        const allBoxes = document.querySelectorAll('.box');
        allBoxes.forEach(function(item) {
            if (item === box) {
                item.style.backgroundColor = '#FFF7C0';
            } else {
                item.style.backgroundColor = ''; 
            }
        });
    });
}

function moveCursor(input, nextFieldID) {
    if (input.value.length >= input.maxLength) {
        document.getElementById(nextFieldID).focus();
    }
}


document.addEventListener("DOMContentLoaded", function() {
    const form = document.getElementById("myForm");
    const inputField = document.getElementById("inputField");
    const inputLabel = document.getElementById("inputLabel");
    const inputContainer = document.getElementById("inputContainer");
    const errorContainer = document.getElementById("errorContainer");
    const inputContainerTwo=document.getElementById("inputContainerTwo");
    const title20=document.getElementById("title20");
    const errorContainerTwo=document.getElementById("errorContainerTwo");
    const inputFieldTwo=document.getElementById("inputFieldTwo");
    const inputContainerThree=document.getElementById("inputContainerThree");
    const inputLabelThree=document.getElementById("inputLabelThree");
    const field14=document.getElementById("field14");
    const inputContainerFour=document.getElementById("inputContainerFour");
    const inputLabelFour=document.getElementById("inputLabelFour");
    const Field22=document.getElementById("Field22");
    const Field23=document.getElementById("Field23");
    const inputContainerFive=document.getElementById("inputContainerFive");
    const inputLabelFive=document.getElementById("inputLabelFive");
    const field13=document.getElementById("field13");
    const errorContainerFive=document.getElementById("errorContainerFive");
    const errorContainerThree=document.getElementById("errorContainerThree");
    const inputContainerSix=document.getElementById("inputContainerSix");
    const inputLabelSix=document.getElementById("inputLabelSix");
    const Field25=document.getElementById("Field25");
    const errorContainerSix=document.getElementById("errorContainerSix");
    const errorLi=document.getElementById("errorLi");








    form.addEventListener("submit", function(event) {
        event.preventDefault(); // Prevent form submission

        if (inputField.value.trim() === ""||inputFieldTwo.value.trim() ===""||field14.value.trim() ===""||Field22.value.trim()===""||Field23.value.trim()===""||field13.value.trim()===""||Field25.value.trim()==="") {
            showError();
            showerrorLi();

             
        } else {
            hideError();
            hideerrorLi();

            // Proceed with form submission if validation passes
             form.submit(); 
        }
    });
    function showerrorLi() {
        errorLi.classList.remove("hidden"); // Remove the 'hidden' class to display the container


    }

    function hideerrorLi() {
        errorLi.classList.add("hidden"); // Add the 'hidden' class to hide the container

    }


    function showError() {
        inputLabel.classList.add("error");
        inputContainer.classList.add("error");
        errorContainer.classList.remove("hidden");
        title20.classList.add("error");
        inputContainerTwo.classList.add("error");
        errorContainerTwo.classList.remove("hidden");
        inputLabelThree.classList.add("error");
        inputContainerThree.classList.add("error");
        errorContainerThree.classList.remove("hidden");
        inputContainerFour.classList.add("error");
        inputContainerFive.classList.add("error");
        inputLabelFive.classList.add("error");
        errorContainerFive.classList.remove("hidden");
        inputContainerSix.classList.add("error");
        inputLabelSix.classList.add("error");
        errorContainerSix.classList.remove("hidden");
        const errorFields = document.querySelectorAll('.error');
        errorFields.forEach(function(field) {
            field.classList.add("error");
        });
        const errorContainers = document.querySelectorAll('.errorContainer');
        errorContainers.forEach(function(container) {
            container.classList.remove("hidden");
        });
    }

    function hideError() {
        inputLabel.classList.remove("error");
        inputContainer.classList.remove("error");
        errorContainer.classList.add("hidden");
        title20.classList.remove("error");
        inputContainerTwo.classList.remove("error");
        errorContainerTwo.classList.add("hidden");
        inputLabelThree.classList.remove("error");
        inputContainerThree.classList.remove("error");
        errorContainerThree.classList.add("hidden");
        inputContainerFour.classList.remove("error");
        inputContainerFive.classList.remove("error");
        inputLabelFive.classList.remove("error");
        errorContainerFive.classList.add("hidden");
        inputContainerSix.classList.remove("error");
        inputLabelSix.classList.remove("error");
        errorContainerSix.classList.add("hidden");
        const errorFields = document.querySelectorAll('.error');
        errorFields.forEach(function(field) {
            field.classList.remove("error");
        });
        const errorContainers = document.querySelectorAll('.errorContainer');
        errorContainers.forEach(function(container) {
            container.classList.add("hidden");
        });
    }
});
