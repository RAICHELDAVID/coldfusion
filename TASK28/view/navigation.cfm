<!---welcomeHome.cfm--->
<!---<cfset pathWelcome="C:\ColdFusion2023\cfusion\wwwroot\coldfusion-branch8\coldfusion\TASK28\view\welcomeHome.cfm">
<cfset pathLogin="C:\ColdFusion2023\cfusion\wwwroot\coldfusion-branch8\coldfusion\TASK28\view\login.cfm">
<cfset pathHome="C:\ColdFusion2023\cfusion\wwwroot\coldfusion-branch8\coldfusion\TASK28\view\homePage.cfm">
<cfset pathList="C:\ColdFusion2023\cfusion\wwwroot\coldfusion-branch8\coldfusion\TASK28\view\list.cfm">
<cfset pathEdit="C:\ColdFusion2023\cfusion\wwwroot\coldfusion-branch8\coldfusion\TASK28\view\editPage.cfm">
<cfif pathWelcome eq cfm>
<nav class="navbar bg-body-tertiary">
    <div class="container-fluid d-flex">
        <div class="d-flex">
        <a class="navbar-brand d-flex">
            <img src="../assets/images/logo.png" alt="Logo" width="53" height="50" class="d-inline-block align-text-top">
            <p class="mt-2 bodytitle">DigifyCMS</p>
        </a>
        <a href="welcomeHome.cfm" class="pt-3">HOME</a>
        </div>
        <a href="login.cfm">LOGIN</a>    
    </div>
</nav>
<cfelseif pathLogin eq cfm>                           
<!---login.cfm--->
<nav class="navbar bg-body-tertiary">
  <div class="container-fluid d-flex">
    <a class="navbar-brand d-flex" href="login.cfm">
      <img src="../assets/images/logo.png" alt="Logo" width="53" height="50" class="d-inline-block align-text-top">
      <p class="mt-2 bodytitle">DigifyCMS</p>
    </a>
    <a href="welcomeHome.cfm">HOME</a>
  </div>
</nav>
<cfelseif pathHome eq cfm>
<!---homePage.cfm--->
<nav class="navbar bg-body-tertiary mb-3">
    <div class="container-fluid d-flex">
        <a class="navbar-brand d-flex" href="homePage.cfm">
            <img src="../assets/images/logo.png" alt="Logo" width="53" height="50" class="d-inline-block align-text-top">
            <p class="mt-2 bodytitle">DigifyCMS</p>
        </a>
        <div>
            <a href="list.cfm">view list</a>
            <a href="../modals/page.cfc?method=logout" class="p-2">logout</a>
        </div>
    </div>
</nav>
<cfelseif pathList eq cfm>
<!---list.cfm--->
<nav class="navbar bg-body-tertiary">
    <div class="container-fluid d-flex">
        <a class="navbar-brand d-flex" href="list.cfm">
            <img src="../assets/images/logo.png" alt="Logo" width="53" height="50" class="d-inline-block align-text-top">
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
            <img src="../assets/images/logo.png" alt="Logo" width="53" height="50" class="d-inline-block align-text-top">
            <p class="mt-2 bodytitle">DigifyCMS</p>
        </a>
        <div>
        <a href="list.cfm" class="p-2">Home</a>
        <a href="../modals/page.cfc?method=logout" class="p-2">logout</a></div>
    </div>
</nav>
</cfif>--->
<nav class="navbar bg-body-tertiary mb-3">
    <div class="container-fluid d-flex">
        <a class="navbar-brand d-flex">
            <img src="../assets/images/logo.png" alt="Logo" width="53" height="50" class="d-inline-block align-text-top">
            <p class="mt-2 bodytitle">DigifyCMS</p>
        </a>
        <div>
            <a href="homePage.cfm" class="pe-2">Home</a>
            <a href="list.cfm">Pages</a>
            <a href="../models/page.cfc?method=logout" class="p-2">logout</a>
        </div>
    </div>
</nav>