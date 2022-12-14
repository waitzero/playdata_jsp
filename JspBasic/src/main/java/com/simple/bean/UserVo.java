package com.simple.bean;

public class UserVo {

		//자바빈이라고 부르는 클래스는 데이터베이와의 통신을 손쉽게 하기 위해서 사용압니다.
	
	private String id;
	private String pw;
	private String name;
	private String addr;
	
	//생성자는 기본생성자 ctrl + space + enter
	//모든 맴버변수를 초화하는 생성자 alt + shift + s
	public UserVo() {
		}
	
	public UserVo(String id, String pw, String name, String addr) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.addr = addr;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
	
	
}
