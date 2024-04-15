<cfset path = GetTemplatePath()>
<cfset cfm=path>

<cfinclude  template="header.cfm">
    <div class="container-fluid">
        <!---<nav class="navbar bg-body-tertiary">
            <div class="container-fluid d-flex">
                <a class="navbar-brand d-flex" href="welcomeHome.cfm">
                    <img src="./assets/images/logo.png" alt="Logo" width="53" height="50" class="d-inline-block align-text-top">
                    <p class="mt-2 bodytitle">DigifyCMS</p>
                </a>
                <a href="login.cfm">LOGIN</a>    
            </div>
        </nav>--->
        <cfinclude template="navigation.cfm" >
        <div class="d-flex container-fluid justify-content-between contentDiv">
            <div class="d-flex flex-column">
                <p class="mt-5 ps-4 bodytitle">DigifyCMS</p>
                <p class="ps-4 ">Welcome to Digifycms, it a Content Management System (CMS)that allows users to create, manage, and modify digital content such as text without needing advanced technical skills.Authorised user can view the pages and the page details and admin have the privilege to add or update or even delete the page details.Digifycms is developed in such a way that everyone can login to the didgifycms website and use even if they dont have any prior technical knowledge... </p>
            </div>
            <img src="./assets/images/welcomePicture.jpg" class="img-fluid" alt="welcomeimage"  width="700" height="500">
        </div>
        <cfinclude template="footer.cfm" >
        <!---<div class="welcomeFooter d-flex justify-content-center mb-2">
            <button type="button" class="btn btn-link loginbtn" onclick="window.location.href='welcomeHome.cfm';">HOME</button>
            <button type="button" class="btn btn-link loginbtn" onclick="window.location.href='login.cfm';">LOGIN</button>
        </div>--->
    </div>
</body>
</html>
