component {

    remote function savePage(pageid, pagename, pagedesc) {
        var response = {
            "isSuccess" : true,
            "message" : ""
        };
        
        if (len(trim(arguments.pagename)) > 40) {
            response.isSuccess = false;
            response.message = "Page name cannot exceed 40 characters.<br>";
        } else {
            var local = {};
            local.pageComponent = createObject("component", "CFC_models.page");
            local.result = local.pageComponent.savePage(pageid, pagename, pagedesc);
            response.isSuccess = local.result.success;
            response.message = local.result.message;
        }
        return (response);
    }

}
