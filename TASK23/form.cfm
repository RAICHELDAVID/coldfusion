<!---<!DOCTYPE html>
<html>
	<head>
		<title>Form</title>
		<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="style/style.css">
	</head>
	<body>
		<div class="formBody">
			<div id="logo">
				<img src="./assets/logoimage.png"></img>
			</div>
			<form class="wufoo" id="myForm" action="components/FormHandler.cfc?method=saveFormData" onsubmit="return validateForm()" method="post">
				<header id="header">
					<h2>Employment Application</h2>
					<div>Infinity Box Inc.</div>
				</header>
				<ul>
				<li id="errorLi" class="hidden">
					<h3 id="errorMsgLbl">There was a problem with your submission.</h3>
					<p id="errorMsg">Errors have been <b>highlighted</b> below.</p>
				</li>
					<li class="box" id="box1">
						<div id="inputContainer">
							<label class=" box1ErrorMessage" id="inputLabel">
							Which position are you applying for?
							<span id="req_17" class="req">*</span>
							</label>
							<div>
								<select id="inputField" name="PositionAppliedFor" class="field select medium">
									<option value="" selected="selected">
									</option>
									<option value="Interface Designer">
										Interface Designer
									</option>
									<option value="Software Engineer">
										Software Engineer
									</option>
									<option value="System Administrator">
										System Administrator
									</option>
									<option value="Office Manager">
										Office Manager
									</option>
								</select>
							</div>
							<div id="errorContainer" class="hidden">
								<div id="errorMessage">This field is required. Please enter a value.</div>
							</div>
						</div>
					</li>
					<li class="box" id="box2">
						<fieldset>
							<legend id="title19" class="desc notranslate">
								Are you willing to relocate?
								<span id="req_19" class="req">*</span>
							</legend>
							<div class="radioDivision">
								<input id="radioDefault_19" name="Field19" type="hidden" value="">
								<span>
								<input id="Field19_0" name="Field19" type="radio" class="field radio" value="Yes" tabindex="0"  checked="checked" required="">
								<label class="choice">
								<span class="choice__text notranslate">Yes</span>
								<span class="choice__qty"></span>
								</label>
								</span>
								<span>
								<input id="Field19_1" name="Field19" type="radio" class="field radio" value="No" tabindex="0" required="">
								<label class="choice">
								<span class="choice__text notranslate">No</span>
								<span class="choice__qty"></span>
								</label>
								</span>
							</div>
						</fieldset>
					</li>
					<li id="box3" class="box">
						<div id="inputContainerTwo">
							<label  id="title20">
							When can you start?
							<span id="req_20" class="req">*</span>
							</label>
							<div class="dateContainer">
								<div>
									<input type="text" class="field text dateInputOne" id="inputFieldTwo"   data-max="2" tabindex="0"  oninput="skipIfMax(this)">
									<span class="symbol">/</span>
								</div>
								<div>
									<input type="text" class="field text dateInputOne"  data-max="2" tabindex="0">
									<span class="symbol">/</span>
								</div>
								<div>
									<input type="text" id="datepicker" class="field text dateInputTwo"  data-max="4" tabindex="0">
								</div>
							</div>
							<div class="dateContent">
								<div id="month">MM</div>
								<div id="day">DD</div>
								<div id="year">YYYY</div>
							</div>
							<div id="errorContainerTwo" class="hidden">
								<div id="errorMessageTwo">This field is required. Please enter a value.</div>
							</div>
						</div>
					</li>
					<li id="box4" class="box">
						<div id="inputContainerThree">
							<label id="inputLabelThree">
							Portfolio Web Site
							</label>
							<div>
								<input id="field14" name="Field14" class="field text large" value="http://">
							</div>
							<div id="errorContainerThree" class="hidden">
								<div id="errorMessageThree">Please enter a valid url in http://website.com format.</div>
							</div>
						</div>
					</li>
					<li id="box5" class="box">
						<label class="desc">
						Attach a Copy of Your Resume
						</label>
						<div>
							<input id="Field12" name="Field12" type="file" class="field file" size="12" data-file-max-size="10" tabindex="0" data-wufoo-field="file-upload">
						</div>
						<p class="instruct">
							<small>Word or PDF Documents Only</small>
						</p>
					</li>
					<li id="box6" class="box">
						<label class="desc">
						Salary Requirements
						</label>
						<div class="salaryContainer">
							<span class="symbol">$</span>
							<input id="Field16" name="Field16" type="text" class="field text currency nospin" value="" size="10" tabindex="0">
							<span class="symbol radix">.</span>
							<input id="field16-2" name="Field16-1" type="text" class="field text nospin" value="" size="2" maxlength="2" tabindex="0">
						</div>
						<div>
							<label id="field16">Dollars</label>
							<label id="field16-1">Cents</label>
						</div>
					</li>
					<section>
						<p id="title24">
							Your Contact Information
						</p>
					</section>
					<li id="box7" class="box">
						<div id="inputContainerFour">
							<label id="inputLabelFour">
							Name
							<span id="req_22" class="req">*</span>
							</label>
							<div>
								<span>
								<input id="Field22" name="Field22" type="text" class="field text fn" value="" size="8" tabindex="0">
								</span>
								<span>
								<input id="Field23" name="Field23" type="text" class="field text ln" value="" size="14" tabindex="0">
								</span>
							</div>
							<div>
								<label id="field22">First</label>
								<label id="field23">Last</label>
							</div>
							<div id="errorContainerFour" class="hidden">
								<div id="errorMessageFour">This field is required. Please enter a value.</div>
							</div>
						</div>
					</li>
					<li id="box8" class="box">
					<div id="inputContainerFive">
						<label id="inputLabelFive">
						Email Address
						<span id="req_13" class="req">*</span>
						</label>
						<div>
							<input id="field13" name="Field13" type="email" class="field text large" maxlength="255" tabindex="0">
						</div>
							<div id="errorContainerFive" class="hidden">
								<div id="errorMessageFive">This field is required. Please enter a value.</div>
							</div>
						</div>
					</li>
					<li id="box7" class="box">
					<div id="inputContainerSix">
						<label id="inputLabelSix">
						Phone
						<span id="req_25" class="req">*</span>
						</label>
						<div>
							<span>
							<input id="Field25" name="Field25" type="tel" class="field text inputThreeField" value="" size="3" maxlength="3" tabindex="0" onkeyup="moveCursor(this, 'Field25-1')">
							<span class="symbol">-</span>
							</span>
							<span>
							<input id="Field25-1" name="Field25-1" type="tel" class="field text inputThreeField" value="" size="3" maxlength="3" tabindex="0" onkeyup="moveCursor(this, 'Field25-2')">
							<span class="symbol">-</span>
							</span>
							<span>
							<input id="Field25-2" name="Field25-2" type="tel" class="field text inputFourField" value="" size="4" maxlength="4" tabindex="0" onkeyup="moveCursor(this, 'Field25-3')">
							</span>
						</div>
						<div>
							<label id="field25">###</label>
							<label id="field25-1">###</label>
							<label id="field25-2">####</label>
						</div>
							<div id="errorContainerSix" class="hidden">
								<div id="errorMessageSix">This field is required. Please enter a value.</div>
							</div>
						</div>
					</li>
				</ul>
				<input type="submit" value="Submit">
			</form>
<!---<cfset formData = {
    "PositionAppliedFor" = form.PositionAppliedFor,
    "WillingToRelocate" = form.WillingToRelocate,
    "StartDate" = form.StartDate,
    "PortfolioWebsite" = form.PortfolioWebsite,
    "ResumeAttachment" = form.ResumeAttachment,
    "SalaryRequirements" = form.SalaryRequirements,
    "FirstName" = form.FirstName,
    "LastName" = form.LastName,
    "EmailAddress" = form.EmailAddress,
    "Phone" = form.Phone
}>

<cfset cfcInstance = createObject("component", "components.FormHandler")>
<cfset cfcInstance.saveFormData(formData)>--->


			<div class="footerDivision">This site is protected by reCAPTCHA Enterprise and the Google 
				<a href="#privacy">Privacy Policy</a> 
				and 
				<a href="#teams">Terms of Service</a>
				apply.
			</div>
		</div>
		<script src="script/jquery.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
		<script src="script/new_script.js"></script>
		<script>
			// Initialize datepicker
			$(function() {
				$("#datepicker").datepicker({
					dateFormat: "yy-mm-dd", // Set date format
					showOn: "button", // Show calendar icon only
					buttonText: "<img src='assets/calendar.png' alt='Pick a date.' class='calendar-icon'>", // Use calendar icon as button
					buttonImageOnly: true, // Show only the calendar icon
					buttonImage: "assets/calendar.png", // Set the calendar icon image
					onSelect: function(dateText, inst) {
						var selectedDate = $(this).datepicker('getDate');
						if (selectedDate != null) {
							var month = selectedDate.getMonth() + 1;
							var day = selectedDate.getDate();
							var year = selectedDate.getFullYear();
							$('.dateInputOne').eq(0).val(month);
							$('.dateInputOne').eq(1).val(day);
							$('.dateInputTwo').val(year);
						}
					}
				});
			});
			
			// Update box colors
			changeColor('box1');
			changeColor('box2');
			changeColor('box3');
			changeColor('box4');
			changeColor('box5');
			changeColor('box6');
			changeColor('box7');
			changeColor('box8');
			//moveCursor(input, nextFieldID);
			
			
			
			
			
			
			// Prevent default behavior of input box click
			$('.dateInputTwo').click(function(event) {
				event.preventDefault();
			});
			
			// Add click event listener to calendar icon
			$('.calendar-icon').click(function() {
				$("#datepicker").datepicker("show");
			});
			
			
				
		</script>
	</body>
</html>--->
<!DOCTYPE html>
<html>
	<head>
		<title>Form</title>
		<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="style/style.css">
	</head>
	<body>
		<div class="formBody">
			<div id="logo">
				<img src="./assets/logoimage.png"></img>
			</div>
			<form class="wufoo" id="myForm" action="components/FormHandler.cfc?method=saveFormData" onsubmit="return validateForm()" method="post">
				<header id="header">
					<h2>Employment Application</h2>
					<div>Infinity Box Inc.</div>
				</header>
				<ul>
				<li id="errorLi" class="hidden">
					<h3 id="errorMsgLbl">There was a problem with your submission.</h3>
					<p id="errorMsg">Errors have been <b>highlighted</b> below.</p>
				</li>
					<li class="box" id="box1">
						<div id="inputContainer">
							<label class=" box1ErrorMessage" id="inputLabel">
							Which position are you applying for?
							<span id="req_17" class="req">*</span>
							</label>
							<div>
								<select id="inputField" name="PositionAppliedFor" class="field select medium">
									<option value="" selected="selected">
									</option>
									<option value="Interface Designer">
										Interface Designer
									</option>
									<option value="Software Engineer">
										Software Engineer
									</option>
									<option value="System Administrator">
										System Administrator
									</option>
									<option value="Office Manager">
										Office Manager
									</option>
								</select>
							</div>
							<div id="errorContainer" class="hidden">
								<div id="errorMessage">This field is required. Please enter a value.</div>
							</div>
						</div>
					</li>
					<li class="box" id="box2">
						<fieldset>
							<legend id="title19" class="desc notranslate">
								Are you willing to relocate?
								<span id="req_19" class="req">*</span>
							</legend>
							<div class="radioDivision">
								<input id="radioDefault_19" name="Field19" type="hidden" value="">
								<span>
								<input id="Field19_0" name="Field19" type="radio" class="field radio" value="Yes" tabindex="0"  checked="checked" required="">
								<label class="choice">
								<span class="choice__text notranslate">Yes</span>
								<span class="choice__qty"></span>
								</label>
								</span>
								<span>
								<input id="Field19_1" name="Field19" type="radio" class="field radio" value="No" tabindex="0" required="">
								<label class="choice">
								<span class="choice__text notranslate">No</span>
								<span class="choice__qty"></span>
								</label>
								</span>
							</div>
						</fieldset>
					</li>
					<li id="box3" class="box">
						<div id="inputContainerTwo">
							<label  id="title20">
							When can you start?
							<span id="req_20" class="req">*</span>
							</label>
							<div class="dateContainer">
								<div>
									<input type="text" class="field text dateInputOne" id="inputFieldTwo" name="month"   data-max="2" tabindex="0"  oninput="skipIfMax(this)">
									<span class="symbol">/</span>
								</div>
								<div>
									<input type="text" class="field text dateInputOne" name="day"  data-max="2" tabindex="0">
									<span class="symbol">/</span>
								</div>
								<div>
									<input type="text" id="datepicker" class="field text dateInputTwo" name="year" data-max="4" tabindex="0">
								</div>
							</div>
							<div class="dateContent">
								<div id="month">MM</div>
								<div id="day">DD</div>
								<div id="year">YYYY</div>
							</div>
							<div id="errorContainerTwo" class="hidden">
								<div id="errorMessageTwo">This field is required. Please enter a value.</div>
							</div>
						</div>
					</li>
					<li id="box4" class="box">
						<div id="inputContainerThree">
							<label id="inputLabelThree">
							Portfolio Web Site
							</label>
							<div>
								<input id="field14" name="Field14" class="field text large" value="http://">
							</div>
							<div id="errorContainerThree" class="hidden">
								<div id="errorMessageThree">Please enter a valid url in http://website.com format.</div>
							</div>
						</div>
					</li>
					<li id="box5" class="box">
						<label class="desc">
						Attach a Copy of Your Resume
						</label>
						<div>
							<input id="Field12" name="Field12" type="file" class="field file" size="12" data-file-max-size="10" tabindex="0" data-wufoo-field="file-upload">
						</div>
						<p class="instruct">
							<small>Word or PDF Documents Only</small>
						</p>
					</li>
					<li id="box6" class="box">
						<label class="desc">
						Salary Requirements
						</label>
						<div class="salaryContainer">
							<span class="symbol">$</span>
							<input id="Field16" name="Field16" type="text" class="field text currency nospin" value="" size="10" tabindex="0">
							<span class="symbol radix">.</span>
							<input id="field16-2" name="Field161" type="text" class="field text nospin" value="" size="2" maxlength="2" tabindex="0">
						</div>
						<div>
							<label id="field16">Dollars</label>
							<label id="field16-1">Cents</label>
						</div>
					</li>
					<section>
						<p id="title24">
							Your Contact Information
						</p>
					</section>
					<li id="box7" class="box">
						<div id="inputContainerFour">
							<label id="inputLabelFour">
							Name
							<span id="req_22" class="req">*</span>
							</label>
							<div>
								<span>
								<input id="Field22" name="Field22" type="text" class="field text fn" value="" size="8" tabindex="0">
								</span>
								<span>
								<input id="Field23" name="Field23" type="text" class="field text ln" value="" size="14" tabindex="0">
								</span>
							</div>
							<div>
								<label id="field22">First</label>
								<label id="field23">Last</label>
							</div>
							<div id="errorContainerFour" class="hidden">
								<div id="errorMessageFour">This field is required. Please enter a value.</div>
							</div>
						</div>
					</li>
					<li id="box8" class="box">
					<div id="inputContainerFive">
						<label id="inputLabelFive">
						Email Address
						<span id="req_13" class="req">*</span>
						</label>
						<div>
							<input id="field13" name="Field13" type="email" class="field text large" maxlength="255" tabindex="0">
						</div>
							<div id="errorContainerFive" class="hidden">
								<div id="errorMessageFive">This field is required. Please enter a value.</div>
							</div>
						</div>
					</li>
					<li id="box7" class="box">
					<div id="inputContainerSix">
						<label id="inputLabelSix">
						Phone
						<span id="req_25" class="req">*</span>
						</label>
						<div>
							<span>
							<input id="Field25" name="Field25" type="tel" class="field text inputThreeField" value="" size="3" maxlength="3" tabindex="0" onkeyup="moveCursor(this, 'Field25-1')">
							<span class="symbol">-</span>
							</span>
							<span>
							<input id="Field25-1" name="Field251" type="tel" class="field text inputThreeField" value="" size="3" maxlength="3" tabindex="0" onkeyup="moveCursor(this, 'Field25-2')">
							<span class="symbol">-</span>
							</span>
							<span>
							<input id="Field25-2" name="Field252" type="tel" class="field text inputFourField" value="" size="4" maxlength="4" tabindex="0" onkeyup="moveCursor(this, 'Field25-3')">
							</span>
						</div>
						<div>
							<label id="field25">###</label>
							<label id="field25-1">###</label>
							<label id="field25-2">####</label>
						</div>
							<div id="errorContainerSix" class="hidden">
								<div id="errorMessageSix">This field is required. Please enter a value.</div>
							</div>
						</div>
					</li>
				</ul>
				<input type="submit" value="Submit">
			</form>



			<div class="footerDivision">This site is protected by reCAPTCHA Enterprise and the Google 
				<a href="#privacy">Privacy Policy</a> 
				and 
				<a href="#teams">Terms of Service</a>
				apply.
			</div>
		</div>
		<script src="script/jquery.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
		<script src="script/new_script.js"></script>
		<script>
			$(function() {
				$("#datepicker").datepicker({
					dateFormat: "yy-mm-dd",
					showOn: "button", 
					buttonText: "<img src='assets/calendar.png' alt='Pick a date.' class='calendar-icon'>", 
					buttonImageOnly: true, 
					buttonImage: "assets/calendar.png",
					onSelect: function(dateText, inst) {
						var selectedDate = $(this).datepicker('getDate');
						if (selectedDate != null) {
							var month = selectedDate.getMonth() + 1;
							var day = selectedDate.getDate();
							var year = selectedDate.getFullYear();
							$('.dateInputOne').eq(0).val(month);
							$('.dateInputOne').eq(1).val(day);
							$('.dateInputTwo').val(year);
						}
					}
				});
			});
			
			changeColor('box1');
			changeColor('box2');
			changeColor('box3');
			changeColor('box4');
			changeColor('box5');
			changeColor('box6');
			changeColor('box7');
			changeColor('box8');
			
			$('.dateInputTwo').click(function(event) {
				event.preventDefault();
			});
			
			$('.calendar-icon').click(function() {
				$("#datepicker").datepicker("show");
			});
			
			
				
		</script>
	</body>
</html>