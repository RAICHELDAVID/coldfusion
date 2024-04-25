
component {
    remote function validateFormFields(strName, strUsername, strPassword,strConfirmPassword) returnformat="json"{
        var errors = [];
        var regexName = '^[a-zA-Z]+$';
        var regexPassword = '^(?=.*[a-zA-Z])(?=.*[0-9])[A-Za-z0-9]+$';
        var result=createObject("component", "models.common").isUsernameExist(strUsername);
        if (len(trim(strName)) == 0 or (len(trim(strUsername)) == 0) or (len(trim(strPassword)) == 0) or (len(trim(strConfirmPassword)) == 0)) {
            arrayAppend(errors, "All fields required.");
                return {
                "success": false,
                "message": errors
            };
        }   
        if (!reFind(regexName, strName)) {
            arrayAppend(errors, "Name should contain only alphabets.");
        }
        if(result.recordCount==0){
            if (!reFind(regexName, strUsername)) {
                arrayAppend(errors, "Username should contain only alphabets.");
            }
        }
        else{
            arrayAppend(errors, "Username already exist!!");
        }
        if (!reFind(regexPassword, strPassword)) {
            arrayAppend(errors, "Password should contain at least one letter and one digit.");
        }
        if (strConfirmPassword!=strPassword){
            arrayAppend(errors, "Password is not matching.");
        }

        if (arrayLen(errors) > 0) {
            return {
                "success": false,
                "message": errors
            };
        } else {
            return {
                "success": true,
                "message": "Successful registration!"
            };
        }
    }
}
