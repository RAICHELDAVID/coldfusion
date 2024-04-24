component {

    remote function savePage(pageid, pagename, pagedesc) returnFormat="JSON"{
        var response = {
            "success" : true,
            "message" : ""
        };
        var validData = "/^[a-zA-Z\s]+$/";
        var validateData = "/^(?=.*[a-zA-Z])[a-zA-Z\d\s]+$/";
        var strPageName=(len(trim(arguments.pagename)));
        var strPageDesc=(len(trim(arguments.pagedesc)));
        if (strPageName>40) {
            response.success = false;
            response.message = "Page name cannot exceed 40 characters.<br>";
        }
        else if NOT (isValid("regex", validData,strPageName)){
            response.success = false;
            response.message = "Page Name should contain only alphabets!";
        }
        else if !(isValid("regex", validateData,strPageDesc)){
            response.success = false;
            response.message = "Page Description should not contain digits only!";
        }
         else {
            var local = {};
            local.pageComponent = createObject("component", "CFC_models.page");
            local.result = local.pageComponent.savePage(pageid, pagename, pagedesc);
            response.success = local.result.success;
            response.message = local.result.message;
        }
        return serializeJSON(response);
    }

    remote  function doLogin(username, password) returnFormat="JSON" {
        var userLogin = new CFC_models.page();
        var getUserQuery = userLogin.doLoginAuthenticate(username,password);

        if (getUserQuery.recordCount eq 1) {
            session.userRole = getUserQuery.rolename;
            session.loggedIn = true;
            return { "message": true };
        } else {
            return { "message": false };
        }
    }

    remote void function logout(){
        structDelete(session,"loggedIn");
        session.loggedIn=false;
        cflocation(url="../views/login.cfm");
    }

    remote void function checkLogin(){
        if(session.loggedIn){
            cflocation(url="../views/homePage.cfm");
        }
    }

}





