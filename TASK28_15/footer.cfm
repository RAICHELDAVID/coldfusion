
<cfset pathWelcome="C:\ColdFusion2023\cfusion\wwwroot\coldfusion-branch8\coldfusion\TASK28_15\welcomeHome.cfm">
<cfset pathHome="C:\ColdFusion2023\cfusion\wwwroot\coldfusion-branch8\coldfusion\TASK28_15\homePage.cfm">
<cfset pathList="C:\ColdFusion2023\cfusion\wwwroot\coldfusion-branch8\coldfusion\TASK28_15\list.cfm">
<cfset pathEdit="C:\ColdFusion2023\cfusion\wwwroot\coldfusion-branch8\coldfusion\TASK28_15\editPage.cfm">
<!---welcomeHome.cfm--->
<cfif pathWelcome eq cfm>
    <div class="welcomeFooter d-flex justify-content-center mb-2">
        <button type="button" class="btn btn-link loginbtn" onclick="window.location.href='welcomeHome.cfm';">HOME</button>
        <button type="button" class="btn btn-link loginbtn" onclick="window.location.href='login.cfm';">LOGIN</button>
    </div>
<!---homePage.cfm--->
<cfelseif pathHome eq cfm>
    <div class="welcomeFooter d-flex justify-content-center mb-2">
        <a href="homePage.cfm" class="p-2">Home</a>
        <a href="list.cfm" class="p-2">view list</a>
        <a href="components/page.cfc?method=logout" class="p-2">logout</a>
    </div>
<!---list.cfm--->
<cfelseif pathList eq cfm>
    <div class="welcomeFooter d-flex justify-content-center mb-2">
        <a href="homePage.cfm" class="p-2">Home</a>
        <a href="components/page.cfc?method=logout" class="p-2">logout</a>
    </div>
<!---editPage.cfm--->
<cfelseif pathEdit eq cfm>
    <div class="welcomeFooter d-flex justify-content-center mb-2">
        <a href="list.cfm" class="p-2">Back</a>
        <a href="components/page.cfc?method=logout" class="p-2">logout</a>
    </div>
    <script src="assets/script/jquery.js"></script>
    <script src="assets/script/script.js"></script>
</cfif>