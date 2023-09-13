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


	<header class="header_main" id="header_main">
		<a class="logo" href="/"><img
			src="../../assets/images/index_images/logo_main.png" alt="logo"></a>
		<nav>
			<ul class="nav__links">
				<li><a href="./index.jsp">Home</a></li>
				<li><a href="#">About</a></li>
				<li>
				<li><a href="./FundraiserServlet">Fundraiser List</a></li>



			</ul>
		</nav>
		
	</header>


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
							class="las la-home"></span> <small>PROFILE</small>
					</a></li>
					<li><a href="#" class="active"> <span
							class="las la-user-alt"></span> <small>RAISE FUND</small>
					</a></li>
					<li><a href="#"> <span class="las la-envelope"></span> <small>DONATIONS</small>
					</a></li>
					<li><a href="../profile/your_fundraiser_page.html"> <span
							class="las la-clipboard-list"></span> <small>FUNDRAISERS</small>
					</a></li>

					<li><a href="#"> <span class="las la-tasks"></span> <small>ABOUT</small>
					</a></li>

				</ul>
			</div>
		</div>
	</div>

	<!-- form creation -->




	<div form_creation_fundraiser class="container"
		id="form_creation_fundraiser">



		<form  method="post" id="raise_fund">

			<h3 class="text-center">Raise your funds for future players</h3>

			<div class="form-group">

				<label for=""></label> <input type="text" class="form-control"
					id="minimum_amount" name="minimum_amount"
					placeholder="How much do you want to raise fund ?..."
					title="You can raise minimum Rs.2000"> <small id=""
					class="form-text text-muted" required>You have to raise
					minimum Rs.2000.</small>

			</div>

			<div class="form-group center">

				<label for=""></label>

				<div class="input-group">
					<div class="input-group-append">
						<select name="" id="selected_option">
							<option value="myself">Myself</option>
							<option value="student">Student</option>
							<option value="Professional">Professional</option>
							<option value="Others">others</option>

						</select>

					</div>

				</div>
				<small id="" class="form-text text-muted">Tell about who
					needs this fund.</small>

			</div>


			<div class="input-group">
				<div class="input-group-append">
					<select name="" id="selected_option1">
						<option value="tenth">10th</option>
						<option value="twelth">12th</option>
						<option value="degree">degree</option>

					</select>

				</div>

			</div>
			<small id="" class="form-text text-muted">Enter your
				Educational qualification</small>




			<div class="form-group">

				<label for=""></label> <input type="text" class="form-control"
					id="sports_type" placeholder=" Sports Type..."> <small
					id="" class="form-text text-muted" required>Enter your
					sports type</small>

			</div>

			<!-- --------------------------------------------------PLAYER DETAILS------------------------------------------------------------- -->






			<div class="form-group">

				<label for=""></label> <input type="url" class="form-control"
					id="player_image_url" name="player_image_url"> <small id=""
					class="form-text text-muted" required>Enter player image
					url</small>

			</div>
			<div class="form-group">

				<label for=""></label> <input type="text" class="form-control"
					id="player_title" name="player_title"> <small id=""
					class="form-text text-muted" required>Enter player title</small>

			</div>
			<div class="form-group">

				<label for=""></label> <input type="date" class="form-control"
					id="days_left" name="days_left"> <small id=""
					class="form-text text-muted" required>Minimum days to get
					the amount you need.</small>

			</div>

			<div class="form-group">

				<label for=""></label> <input type="text" class="form-control"
					id="Add_bio" name="add_description"> <small id=""
					class="form-text text-muted" required>Description</small>

			</div>

			<p class="btn btn-primary text-center" id="Add_certificates">+
				Certificates</p>

			<p class="btn btn-primary text-center" id="Add_videos">+ Videos</p>

			<div class="display_cer_list"></div>
			<div class="display_video_list"></div>

			<button class="add_fundraiser_btn " id="next_button" type="submit"
				value="submit">submit</button>
	</div>



	<!-- --------------------------------------------------------certificate div------------------------------------------------------- -->



	<div form_creation_fundraiser class="container certificate_whole_div"
		id="certificate_whole_div">



		<div class="certificate_heading_div">
			<h3 class="text-center">Certificate Details</h3>
			<span id="cross_mark"> &#10060;</span>
		</div>



		<div class="form-group  ">

			<label for=""></label> <input type="url" class="form-control"
				id="certificate_image_url" name="certificate_img_url"
				title="please enter valid ceritifcate image url"> <small
				id="certificate_image_url" class="form-text text-muted">certificate_image_url...</small>


		</div>

		<div class="form-group ">

			<label for=""></label> <input type="text" class="form-control"
				id="certificate_number" name="certificate_number"
				title="please enter valid certificate number" maxlength="16"
				minlength="8"> <small id="" class="form-text text-muted">Certificate_number</small>

		</div>

		<input type="submit" class="add_fundraiser_btn " id="add_button"
			value="Add">

	</div>
	
	<div form_creation_fundraiser class="container video_whole_div"
		id="video_whole_div">



		<div class="certificate_heading_div">
			<h3 class="text-center">Video Details</h3>
			<span id="cross_mark"> &#10060;</span>
		</div>



		<div class="form-group" >

			<label for=""></label> <input type="url" class="form-control"
				id="videos_url" name="video_url"
				title="please enter valid ceritifcate image url"> <small
				id="certificate_image_url" class="form-text text-muted">Video url's...</small>


		</div>

		<input type="submit" class="add_fundraiser_btn " id="add_video_button"
			value="Add">

	</div>
	</form>

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