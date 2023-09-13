package com.fssa.sharetorise.servlet;

import java.io.IOException;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//it maps the keys and the class attributes
import com.fasterxml.jackson.databind.ObjectMapper;


import com.fssa.sharetorise.model.Certificate;
import com.fssa.sharetorise.model.FundRaiser;
import com.fssa.sharetorise.model.Video;
import com.fssa.sharetorise.service.FundraiserService;

/**
 * Servlet implementation class AddFundraiser
 */

@WebServlet("/AddFundraiserServlet")
public class AddFundraiser extends HttpServlet {

	FundraiserServlet readAll = new FundraiserServlet();

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

//		HttpSession session=request.getSession(false);
		// Retrieve form parameters
		int minimumAmount = Integer.parseInt(request.getParameter("minimum_amount"));
		String playerImageUrl = request.getParameter("player_image_url");
		String playerTitle = request.getParameter("player_title");
		LocalDate daysLeft = LocalDate.parse(request.getParameter("days_left"));
		String description = request.getParameter("add_description");
		 
		String certificate_img_arr = request.getParameter("certificate_img_urls");
		String[] video_arr = (String[]) request.getParameterValues("video_urls");
		String[] certificate_num_arr = request.getParameterValues("certificate_number");
		// Perform any necessary processing with the form data
		// ... Your code here ...
		System.out.println(Arrays.toString(video_arr));
		System.out.println(certificate_img_arr);
//		to convert string to array
		ObjectMapper objectMapper = new ObjectMapper();
		Certificate[] objects = objectMapper.readValue(certificate_img_arr, Certificate[].class);

		    // Access and use the array of objects as needed
		List<Certificate> certificateList = new ArrayList<Certificate>();
		    for (Certificate obj : objects) {
		        System.out.println(obj.getCerUrl());
		        System.out.println(obj.getCerNum());
		        certificateList.add(obj);
		    }
//		System.out.println(certificate_num_arr);
//		List<Certificate> certificateList = new ArrayList<Certificate>();
//		int i = 0;
//		for (String s : certificate_img_arr) {
//			Certificate certificate1 = new Certificate();
//			certificate1.setCerNum(certificate_num_arr[i]);
//			certificate1.setCerUrl(certificate_img_arr[i]);
//			certificateList.add(certificate1);
//			i++;
//		}
		    Video[] video_objects = objectMapper.readValue(video_arr[0], Video[].class);
		List<Video> videoList = new ArrayList<Video>();
		for (Video obj : video_objects) {
			System.out.println(obj.getVideoUrl());
			videoList.add(obj);
		}

		FundRaiser fund = new FundRaiser();

		fund.setFundingGoal(minimumAmount);
		fund.setTitle(playerTitle);
		fund.setDescription(description);
		fund.setFundEndingDate(daysLeft);
		fund.setImageUrl(playerImageUrl);
		fund.setCertificate(certificateList);
		fund.setVideo(videoList);

		FundraiserService fundraiserService = new FundraiserService();
		System.out.println(fund);

		try {
			fundraiserService.createFundraiser(fund);
			System.out.println("FundRaiser object created successfully");
			readAll.doGet(request, response);
		} catch (Exception e) {

			System.out.println(e.getMessage());
			e.printStackTrace();
			System.out.println("FundRaiser object creation failed");

		}

	}

}
