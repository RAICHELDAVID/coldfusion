<cfset path = GetTemplatePath()>
<cfset cfm=path>
<cfinclude  template="header.cfm">
    <div class="container-fluid">
        <!---<nav class="navbar bg-body-tertiary">
            <div class="container-fluid d-flex">
                <a class="navbar-brand d-flex" href="homePage.cfm">
                    <img src="./assets/images/logo.png" alt="Logo" width="53" height="50" class="d-inline-block align-text-top">
                    <p class="mt-2 bodytitle">DigifyCMS</p>
                </a>
                <a href="list.cfm">view list</a>
                <form action="components/page.cfc?method=logout" method="post">
                    <input type="submit" value="logout" class="btn btn-link">
                </form>
            </div>
        </nav>--->
        <cfinclude template="navigation.cfm" >
        <cfif session.userRole eq "admin" or session.userRole eq "editor">
            <h5 class="homeTitle">Welcome back, Admin</h5>
            <p class="homePara">We're glad to see you here. Our site, DigifyCMS Website, is your hub for managing all aspects of your online presence. From creating engaging content to nurturing your growing community, you have the power to shape your digital space.</p>
        <div class="card-deck d-flex">
            <div class="card">
                <img class="card-img-top" src="./assets/images/add.jpg" alt="Card image cap">
                <div class="card-body">
                    <h6 class="card-title">ADD DATA</h6>
                    <p class="card-text">Admin can handle the data he can add new data to the database</p>
                </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="./assets/images/update.png" alt="Card image cap">
                <div class="card-body">
                    <h6 class="card-title">UPDATA DATA</h6>
                    <p class="card-text">Admin can update the existing data in the database</p>
                </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="./assets/images/delete.png" alt="Card image cap">
                <div class="card-body">
                    <h6 class="card-title">DELETE DATA</h6>
                    <p class="card-text">Admin can delete the unwanted data</p>
                </div>
            </div>
        </div>
        <cfelse>
            <h5 class="homeTitle">Welcome back, User</h5>
            <div class="d-flex align-items-center justify-content-center mb-2">
            <img src="./assets/images/users.jpg">
            </div>
            <p class="ps-4 homePara">Welcome to Digifycms, it a Content Management System (CMS)that allows users to create, manage, and modify digital content such as text without needing advanced technical skills.Authorised user can view the pages and the page details and admin have the privilege to add or update or even delete the page details.Digifycms is developed in such a way that everyone can login to the didgifycms website and use even if they dont have any prior technical knowledge... </p>
        </cfif>
    </div>
    <cfinclude template="footer.cfm" >
    <!---<div class="welcomeFooter d-flex justify-content-center mb-2">
        <a href="homePage.cfm" class="p-2">Home</a>
        <a href="list.cfm" class="p-2">view list</a>
        <a href="components/page.cfc?method=logout" class="p-2">logout</a>
    </div>--->
</body>
</html>