package com.lithan.bean;

import java.util.ArrayList;

public class User {
	private static String email;
	private static String fullName;
	private static String location;
	private static String password;
	private static String confPass;
	private static String education;
	private static String job;
	private static String phoneNumber;
	
	private static ArrayList<String[]> experiences = new ArrayList<String[]>();
	private static ArrayList<String[]> educations = new ArrayList<String[]>();
	
	
	
	public static ArrayList<String[]> getExperiences() {
		return experiences;
	}

	public static void setExperiences(ArrayList<String[]> experiences) {
		User.experiences = experiences;
	}

	public static ArrayList<String[]> getEducations() {
		return educations;
	}

	public static void setEducations(ArrayList<String[]> educations) {
		User.educations = educations;
	}

	public static String getEmail() {
		return email;
	}

	public static void setEmail(String email) {
		User.email = email;
	}

	public static String getFullName() {
		return fullName;
	}

	public static void setFullName(String fullName) {
		User.fullName = fullName;
	}

	public static String getLocation() {
		return location;
	}

	public static void setLocation(String location) {
		User.location = location;
	}

	public static String getPassword() {
		return password;
	}

	public static void setPassword(String password) {
		User.password = password;
	}

	public static String getConfPass() {
		return confPass;
	}

	public static void setConfPass(String confPass) {
		User.confPass = confPass;
	}

	public static String getEducation() {
		return education;
	}

	public static void setEducation(String education) {
		User.education = education;
	}

	public static String getJob() {
		return job;
	}

	public static void setJob(String job) {
		User.job = job;
	}

	public static String getPhoneNumber() {
		return phoneNumber;
	}

	public static void setPhoneNumber(String phoneNumber) {
		User.phoneNumber = phoneNumber;
	}

	private static boolean _isLogin = false;
	public static void setIsLogin(boolean isLogin) {
		_isLogin = isLogin;
	}
	
	public static boolean isLogin() {
		return _isLogin;
	}
	
	private static boolean _isReset = false;
	public static void setIsReset(boolean isReset) {
		_isReset = isReset;
	}
	
	public static boolean isReset() {
		return _isReset;
	}
	
	
	
}
