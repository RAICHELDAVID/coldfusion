<!---welcomeHome.cfm--->
<cfset pathWelcome="C:\ColdFusion2023\cfusion\wwwroot\coldfusion-branch8\coldfusion\TASK28_15\welcomeHome.cfm">
<cfset pathLogin="C:\ColdFusion2023\cfusion\wwwroot\coldfusion-branch8\coldfusion\TASK28_15\login.cfm">
<cfset pathHome="C:\ColdFusion2023\cfusion\wwwroot\coldfusion-branch8\coldfusion\TASK28_15\homePage.cfm">
<cfset pathList="C:\ColdFusion2023\cfusion\wwwroot\coldfusion-branch8\coldfusion\TASK28_15\list.cfm">
<cfset pathEdit="C:\ColdFusion2023\cfusion\wwwroot\coldfusion-branch8\coldfusion\TASK28_15\editPage.cfm">
<cfif pathWelcome eq cfm>
<nav class="navbar bg-body-tertiary">
    <div class="container-fluid d-flex">
        <a class="navbar-brand d-flex" href="welcomeHome.cfm">
            <img src="./assets/images/logo.png" alt="Logo" width="53" height="50" class="d-inline-block align-text-top">
            <p class="mt-2 bodytitle">DigifyCMS</p>
        </a>
        <a href="login.cfm">LOGIN</a>    
    </div>
</nav>
<cfelseif pathLogin eq cfm>                           
<!---login.cfm--->
<nav class="navbar bg-body-tertiary">
  <div class="container-fluid d-flex">
    <a class="navbar-brand d-flex" href="login.cfm">
      <img src="./assets/images/logo.png" alt="Logo" width="53" height="50" class="d-inline-block align-text-top">
      <p class="mt-2 bodytitle">DigifyCMS</p>
    </a>
    <a href="welcomeHome.cfm">Back</a>
  </div>
</nav>
<cfelseif pathHome eq cfm>
<!---homePage.cfm--->
<nav class="navbar bg-body-tertiary">
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
</nav>
<cfelseif pathList eq cfm>
<!---list.cfm--->
<nav class="navbar bg-body-tertiary">
    <div class="container-fluid d-flex">
        <a class="navbar-brand d-flex" href="list.cfm">
            <img src="./assets/images/logo.png" alt="Logo" width="53" height="50" class="d-inline-block align-text-top">
            <p class="mt-2 bodytitle">DigifyCMS</p>
        </a>
        <a href="homePage.cfm">Home</a>
    </div>
</nav>
<cfelseif pathEdit eq cfm>
<!---editPage.cfm--->
<nav class="navbar bg-body-tertiary">
    <div class="container-fluid d-flex">
        <a class="navbar-brand d-flex" href="editPage.cfm">
            <img src="./assets/images/logo.png" alt="Logo" width="53" height="50" class="d-inline-block align-text-top">
            <p class="mt-2 bodytitle">DigifyCMS</p>
        </a>
        <a href="list.cfm">Back</a>
    </div>
</nav>
</cfif>