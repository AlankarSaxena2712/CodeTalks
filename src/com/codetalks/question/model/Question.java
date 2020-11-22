package com.codetalks.question.model;

public class Question {
	private int id;
	private String question_topic;
	private String question_type;
	private String question_data;
	private String created_by;
	private String timestamp;
	
	public Question(int id, String question_topic, String question_type, String question_data, String created_by, String timestamp) {
		// TODO Auto-generated constructor stub
		this.id = id;
		this.question_topic = question_topic;
		this.question_type = question_type;
		this.question_data = question_data;
		this.created_by = created_by;
		this.timestamp = timestamp;
	}

	public Question() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getQuestion_topic() {
		return question_topic;
	}

	public void setQuestion_topic(String question_topic) {
		this.question_topic = question_topic;
	}

	public String getQuestion_type() {
		return question_type;
	}

	public void setQuestion_type(String question_type) {
		this.question_type = question_type;
	}

	public String getQuestion_data() {
		return question_data;
	}

	public void setQuestion_data(String question_data) {
		this.question_data = question_data;
	}

	public String getCreated_by() {
		return created_by;
	}

	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}

	public String getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}

	
	
}
