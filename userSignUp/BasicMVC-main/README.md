This custom MVC framework is designed simply to understand the concept of Model-View-Controller.

You can access pages via ?action={actionname}
            
#Adding new action
    Creating a new action or view page, let's say 'contacts'.
    So our url will be http://127.0.0.1:8500/project/index.cfm?action=contacts
    Register new action 'contacts' in index.cfm. See below:

    case "contacts":
        include "/controllers/contactsAction.cfm";
        include "/views/contacts.cfm";
    break;
           
