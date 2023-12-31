<%@page import="com.fssa.sharetorise.logger.Logger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="com.fssa.sharetorise.model.FundRaiser"%>
<%@ page import="com.fssa.sharetorise.model.User"%>
<%@ page import="com.fssa.sharetorise.logger.Logger"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/FundraiserPage/BrowserFundraiser.css">


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/index.css">

</head>
<body>

	<!-- Header Part -->
	<jsp:include page="header.jsp"></jsp:include>


	<!------------------------- Fundraiser Section---------------------------------------->

	<div class="Whole-content">

		<div class="sidebar-categories">
			<div class="sidebar-categories-position">
				<h3>categories</h3>

				<!-- <hr>
                <p>Foot ball</p>
                <p>Hockey</p>
                <p>Cricket</p>
                <p>Volley Ball</p>
                <p>Kabadi</p>
                <p>Hand Ball</p>
                <p>Tennis</p>
                <p>Badmiton</p>
                <p>Athletics</p>
                <p>Others</p>
                <hr> -->

				<div class="filter_by_cat">
					<input type="checkbox" id="football" value="football"
						name="filter_by_cat"> <label for="football">Football</label>
					<br> <input type="checkbox" id="hockey" value="hockey"
						name="filter_by_cat"> <label for="hockey">hockey</label> <br>
					<input type="checkbox" id="cricket" value="cricket"
						name="filter_by_cat"> <label for="cricket">cricket</label>
					<br> <input type="checkbox" id="Volley" value="volley"
						name="filter_by_cat"> <label for="Volley">Volley</label> <br>
					<input type="checkbox" id="Kabadi" value="kabadi"
						name="filter_by_cat"> <label for="Kabadi">Kabadi</label> <br>
					<input type="checkbox" id="Badminton" value="badminton"
						name="filter_by_cat"> <label for="Badminton">Badminton</label>
				</div>


			</div>


			<%
			User obj = (User) session.getAttribute("obj");

			if (obj != null) {
			%>
			<button id="btn">
				<a href="./AddFundraiser.jsp">Start a fund raiser</a>
			</button>
			<%
			} else {
			%>
			<button id="btn">
				<a href="./register.jsp">Register to Start</a>
			</button>
			<%
			}
			%>
		</div>

		<div class="card-fundraisers">

			<div class="seacrh-funraisers">
				<input type="search" id="searchbar"
					placeholder="Search for fundraisers">
				<p>
					<i class="fa-solid fa-magnifying-glass"></i>
				</p>
			</div>
			<div class="options-for-fund">
				<p>
					<span class="showing">Showing fundraisers for</span> <span><select>
							<option>Childrens</option>
					</select></span> under <span><select>
							<option>All types</option>
							<option>Football</option>
							<option>Cricket</option>
							<option>Volley</option>
							<option>Kabadi</option>
							<option>Cricket</option>

					</select></span> From <span><select>
							<option>Sort by</option>
							<option>A to Z</option>
							<option>Date</option>

					</select></span>
				</p>
			</div>

			<div class="details-fund-raiser" id="detail_fund_raisers">



				<%
				PrintWriter outer = response.getWriter();
				List<FundRaiser> allFund = (List<FundRaiser>) request.getAttribute("FundraiserList");

				if (allFund != null) {
					for (FundRaiser raiser : allFund) {
				%>

				<a
					href="<%=request.getContextPath()%>/PlayerDetailsServlet?emer_id=<%=raiser.getFundraiserId()%>">
					<div class="card">

						<div class="image-splayers">
							<img src="<%=raiser.getImageUrl()%>" class="player-img">
						</div>
						<p class="description"><%=raiser.getFundraiserId()%></p>
						<div class="name">
							<div class="publisher-img">
								<img
									src="https://freeimghost.net/images/2023/05/22/kohli_img.jpeg">
							</div>
							<p class="beneficiary_name">Funding Details</p>
						</div>
						<p class="fund-rs">
							<i class="fa-solid fa-indian-rupee-sign"></i> <span
								style="font-size: 20px; margin-right: 10px;"><b
								style="color: #8a8a92;"><span>&#8377</span>0</b></span> <span>raised
								of</span>
						<div style="font-size: 20px; margin-left: 5px;">
							<b style="color: black;"><span>&#8377</span><%=raiser.getFundingGoal()%>
							</b>
						</div>
						</p>
						<div class="range">
							<div class="range_value" style="width: 0.04%;"></div>
						</div>
						<p class="last-date-of-fund">Last Donation 35 days ago</p>
						<div class="supports-last-date-of-fund">
							<p>
								<span>98</span> Days left
							</p>
							<p>
								<span>45</span> Supporters
							</p>
						</div>
					</div>
				</a>


				<%
				}

				} else {
				%>

				<h1>No fundraisers</h1>
				<%
				}
				%>


			</div>
		</div>
</body>
</html>