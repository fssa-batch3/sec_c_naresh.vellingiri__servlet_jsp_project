<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/index.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/Profile/profile_all_style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/FundraiserPage/form_creation_fundraiser.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
<title>Insert title here</title>
</head>
<body>
	<!-- Header -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- Sidebar -->
	<div class="sidebar">
		<div class="side-header">
			<h3>
				S<span>2R</span>
			</h3>
		</div>
		<div class="side-content">
			<div class="side-menu">
				<ul>
					<li><a href="../profile/profile_detail.html"> <span
							class="las la-home"></span> <small>PROFILE</small></a></li>
					<li><a href="#" class="active"> <span
							class="las la-user-alt"></span> <small>RAISE FUND</small></a></li>
					<li><a href="#"> <span class="las la-envelope"></span> <small>DONATIONS</small></a></li>
					<li><a href="../profile/your_fundraiser_page.html"> <span
							class="las la-clipboard-list"></span> <small>FUNDRAISERS</small></a></li>
					<li><a href="#"> <span class="las la-tasks"></span> <small>ABOUT</small></a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- Form Creation -->
	<div form_creation_fundraiser class="container"
		id="form_creation_fundraiser">
		<form method="post"
			action="<%=request.getContextPath()%>/AddFundraiserServlet"
			id="raise_fund">
			<h3 class="text-center">Raise your funds for future players</h3>
			<!-- Fundraising Details -->
			<div class="form-group">
				<label for="minimum_amount">How much do you want to raise
					fund?</label> <input type="text" class="form-control" id="minimum_amount"
					name="minimum_amount" placeholder="Minimum Rs.2000"
					title="You can raise minimum Rs.2000" tooltip="minimum" required
					oninvalid="this.setCustomValidity('Please enter a valid amount (minimum Rs.2000).')"
					oninput="this.setCustomValidity('')"> <small
					class="form-text text-muted">You have to raise minimum
					Rs.2000.</small>
			</div>
			<div class="form-group center">
				<label for="selected_option">Tell about who needs this fund.</label>
				<div class="input-group">
					<div class="input-group-append">
						<select name="selected_option" id="selected_option">
							<option value="myself">Myself</option>
							<option value="student">Student</option>
							<option value="Professional">Professional</option>
							<option value="Others">Others</option>
						</select>
					</div>
				</div>
				<small class="form-text text-muted">Tell about who needs
					this fund.</small>
			</div>
			<div class="input-group">
				<div class="input-group-append">
					<select name="selected_option1" id="selected_option1">
						<option value="tenth">10th</option>
						<option value="twelfth">12th</option>
						<option value="degree">Degree</option>
					</select>
				</div>
			</div>
			<small class="form-text text-muted">Enter your Educational
				qualification</small>
			<div class="form-group">
				<label for="sports_type">Sports Type</label> <input type="text"
					class="form-control" id="sports_type" name="sports_type"
					placeholder="Sports Type..." required> <small
					class="form-text text-muted">Enter your sports type</small>
			</div>
			<!-- Player Details -->
			<div class="form-group">
				<label for="player_image_url">Player Image URL</label> <input
					type="url" class="form-control" id="player_image_url"
					name="player_image_url" required
					oninvalid="this.setCustomValidity('Please enter a valid Player Image URL.')"
					oninput="this.setCustomValidity('')"> <small
					class="form-text text-muted">Enter player image URL</small>
			</div>
			<div class="form-group">
				<label for="player_title">Player Title</label> <input type="text"
					class="form-control" id="player_title" name="player_title" required
					oninvalid="this.setCustomValidity('Title character length should be 10-30 characters.')"
					oninput="this.setCustomValidity('')"> <small
					class="form-text text-muted">Enter player title</small>
			</div>
			<div class="form-group">
				<label for="days_left">Minimum Days to Get the Amount</label> <input
					type="date" class="form-control" id="days_left" name="days_left"
					required
					oninvalid="this.setCustomValidity('Please enter a valid date for Minimum Days.')"
					oninput="this.setCustomValidity('')"> <small
					class="form-text text-muted">Minimum days to get the amount
					you need.</small>
			</div>
			<div class="form-group">
				<label for="Add_bio">Description</label> <input type="text"
					class="form-control" id="Add_bio" name="add_description" required
					oninvalid="this.setCustomValidity('Please enter a description with above 50 characters.')"
					oninput="this.setCustomValidity('')"> <small
					class="form-text text-muted">Description</small>
			</div>

			<p class="btn btn-primary text-center" id="Add_certificates">+
				Certificates</p>
			<p class="btn btn-primary text-center" id="Add_videos">+ Videos</p>
			<!-- Certificate and Video Lists -->
			<div class="display_cer_list"></div>
			<div class="display_video_list"></div>
			<button class="add_fundraiser_btn" id="next_button" type="submit"
				value="submit">Submit</button>
		</form>
	</div>

	<!-- Certificate Details Popup -->
	<div form_creation_fundraiser class="container certificate_whole_div"
		id="certificate_whole_div">
		<div class="certificate_heading_div">
			<h3 class="text-center">Certificate Details</h3>
			<span id="cross_mark"> &#10060;</span>
		</div>
		<div class="form-group">
			<label for="certificate_image_url">Certificate Image URL</label> <input
				type="url" class="form-control" id="certificate_image_url"
				name="certificate_img_url"
				title="Please enter valid certificate image URL" required
				oninvalid="this.setCustomValidity('Please enter a proper certificate image url')"
				oninput="this.setCustomValidity('')"> <small
				class="form-text text-muted">Certificate image URL</small>
		</div>
		<div class="form-group">
			<label for="certificate_number">Certificate Number</label> <input
				type="text" class="form-control" id="certificate_number"
				name="certificate_number"
				title="Please enter valid certificate number" maxlength="16"
				minlength="8" required
				oninvalid="this.setCustomValidity('Please enter a unique certificate number.')"
				oninput="this.setCustomValidity('')"> <small
				class="form-text text-muted">Certificate number</small>
		</div>
		<input type="submit" class="add_fundraiser_btn" id="add_button"
			value="Add">
	</div>

	<!-- Video Details Popup -->
	<div form_creation_fundraiser class="container video_whole_div"
		id="video_whole_div">
		<div class="certificate_heading_div">
			<h3 class="text-center">Video Details</h3>
			<span id="cross_mark"> &#10060;</span>
		</div>
		<div class="form-group">
			<label for="videos_url">Video URL</label> <input type="url"
				class="form-control" id="videos_url" name="video_url"
				title="Please enter valid video URL" required> <small
				class="form-text text-muted">Video URL's</small>
		</div>
		<input type="submit" class="add_fundraiser_btn" id="add_video_button"
			value="Add">
	</div>


	<script>


window.onload = removeitems();

function removeitems() {

    localStorage.removeItem("certificate_list");
    localStorage.removeItem("videos_list");
}
let certificate_list = JSON.parse(localStorage.getItem("certificate_list")) ?? []

let videos_list = JSON.parse(localStorage.getItem("videos_list")) ?? []

//--------------------------------- function for add certificate button----------------------------------------

let certificate_button = document.getElementById("Add_certificates")
let certificate_whole_div = document.getElementById("certificate_whole_div")

//--------------------------------- function for add certificate button----------------------------------------

let video_button = document.getElementById("Add_videos")
let video_whole_div = document.getElementById("video_whole_div")

video_button.addEventListener("click", e => {
	video_whole_div.style.display = "block"
    var formElement = document.getElementById("form_creation_fundraiser");
	formElement.classList.add("background_blur");
    })

certificate_button.addEventListener("click", e => {
    certificate_whole_div.style.display = "block"
    var formElement = document.getElementById("form_creation_fundraiser");
    formElement.classList.add("background_blur");
    })

//--------------------------------- function for cross mark----------------------------------------

let cross_mark = document.getElementById("cross_mark")

cross_mark.addEventListener("click", e => {
    certificate_whole_div.style.display = "none"
    	 var formElement = document.getElementById("form_creation_fundraiser");
    formElement.classList.remove("background_blur");
    })
//--------------------------------- function for cross mark----------------------------------------

let certificate_image_url = document.getElementById("certificate_image_url")
let cerficate_number = document.getElementById("certificate_number")




let cer_form = document.getElementById("add_button");

let cer_append_div = document.querySelector(".display_cer_list");

let cer_output = "";


cer_form.addEventListener("click", e => {

    e.preventDefault();

    let cer_img_url = certificate_image_url.value.trim();
    let cer_num = cerficate_number.value.trim();

    if ((cer_img_url != "") && (cer_num != "")) {

        let cer_obj = {
            "cerUrl": cer_img_url,
            "cerNum": cer_num,
        }

        certificate_list.push(cer_obj);
        

        localStorage.setItem("certificate_list", JSON.stringify(certificate_list));
       
        certificate_whole_div.style.display = "none";
        
        var formCerElement = document.getElementById("form_creation_fundraiser");
        formCerElement.classList.remove("background_blur");
        console.log(JSON.stringify(certificate_list))
        console.log(encodeURIComponent(JSON.stringify(certificate_list)))

        displaycer();

    }

    else {

        alert("Please enter valid detials");

    }

});

let video_url = document.getElementById("videos_url")
let video_form = document.getElementById("add_video_button");

let video_append_div = document.querySelector(".display_video_list");

let video_output = "";


video_form.addEventListener("click", e => {

    e.preventDefault();

    let vide_url = video_url.value.trim();

    if ((videos_url != "")) {

        let video_obj = {
            "videoUrl": vide_url
        }

        videos_list.push(video_obj);

        localStorage.setItem("videos_list", JSON.stringify(videos_list));

        video_whole_div.style.display = "none";
        
        var formCerElement = document.getElementById("form_creation_fundraiser");
        formCerElement.classList.remove("background_blur");
        
        console.log(JSON.stringify(videos_list))
        console.log(encodeURIComponent(JSON.stringify(videos_list)))

        displaycer_videos();

    }

    else {

        alert("Please enter valid detials");

    }

});
let raise_fund_div=document.getElementById("raise_fund")

function displaycer_videos() {

    video_output = "";

    let count = 0;

    videos_list.forEach((item, index) => {

        ++count;

        video_output += `<p>${item.videoUrl}</p>`
        	raise_fund_div.setAttribute("action","AddFundraiserServlet?certificate_img_urls="+encodeURIComponent(JSON.stringify(certificate_list))+"&video_urls="+encodeURIComponent(JSON.stringify(videos_list)))
    video_append_div.innerHTML = video_output
    });

}
function displaycer() {

    cer_output = "";

    let count = 0;

    certificate_list.forEach((item, index) => {

        ++count;

        cer_output += ` <div class="cer_item">
        <div class="items_cert"><p>Certificate ${count}<p> <span onclick="deletecer(${index})">&#128465</span></div>
        <img src="${item.cerUrl}" alt="Certificate number"${item.cerNum}>
    </div>`
    
    raise_fund_div.setAttribute("action","AddFundraiserServlet?certificate_img_urls="+encodeURIComponent(JSON.stringify(certificate_list))+"&video_urls="+encodeURIComponent(JSON.stringify(videos_list)))

        cer_append_div.innerHTML = cer_output
    });

}



function deletecer(index) {

    certificate_list.splice(index, 1);

    localStorage.setItem("certificate_list", JSON.stringify(certificate_list));

    alert("deleted succes");

    displaycer();



}

</script>

</body>
</html>