package com.codetalks.contact.model;

public class Contact {
	private static String email;
	private static String message;
	
	
	public static String getEmail() {
		return email;
	}
	public static void setEmail(String email) {
		Contact.email = email;
	}
	public static String getMessage() {
		return message;
	}
	public static void setMessage(String message) {
		Contact.message = message;
	}
}
