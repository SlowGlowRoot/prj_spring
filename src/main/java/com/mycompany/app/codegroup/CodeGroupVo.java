package com.mycompany.app.codegroup;

public class CodeGroupVo {
	
//	query WHERE 구문에 들어가야 할 내용들
	private Integer shOption;
	private String shKeyword;
	// seq는 Integer 대신 String 형으로
	private String seq;
	private String name;
	
//	------------------------------
	
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public String getShKeyword() {
		return shKeyword;
	}
	public void setShKeyword(String shKeyword) {
		this.shKeyword = shKeyword;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
