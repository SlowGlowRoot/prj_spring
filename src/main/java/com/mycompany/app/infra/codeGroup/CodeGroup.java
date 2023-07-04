package com.mycompany.app.infra.codeGroup;

public class CodeGroup {

//  DTO 생성
//	seq의 경우에는 DB에선 int값으로 설정해줬지만 자바에서 쓰면 캐스팅 오지게 걸려서 귀찮기 떄문에 String으로 써준다.
//	모든 DTO는 private으로 만들어 주어야 한다.
//	디비컬렴명 첫글자는 무조건 소문자, 주로 DB의 Table의 Column명과 일치

	private String seq;
	private String name;
	private int delNy;
	
	private String userEmail;
	private String userPassword;
	private String userNickname;
	private int userCountry;
	private String userFirstName;
	private String userMiddleName;
	private String userLastName;
	private String userDobYear;
	private String userDobMonth;
	private String userDobDate;
	private int userGender;
	private String userCodeName;

//	-----

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

	public int getDelNy() {
		return delNy;
	}

	public void setDelNy(int delNy) {
		this.delNy = delNy;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public int getUserCountry() {
		return userCountry;
	}

	public void setUserCountry(int userCountry) {
		this.userCountry = userCountry;
	}

	public String getUserFirstName() {
		return userFirstName;
	}

	public void setUserFirstName(String userFirstName) {
		this.userFirstName = userFirstName;
	}

	public String getUserMiddleName() {
		return userMiddleName;
	}

	public void setUserMiddleName(String userMiddleName) {
		this.userMiddleName = userMiddleName;
	}

	public String getUserLastName() {
		return userLastName;
	}

	public void setUserLastName(String userLastName) {
		this.userLastName = userLastName;
	}

	public String getUserDobYear() {
		return userDobYear;
	}

	public void setUserDobYear(String userDobYear) {
		this.userDobYear = userDobYear;
	}

	public String getUserDobMonth() {
		return userDobMonth;
	}

	public void setUserDobMonth(String userDobMonth) {
		this.userDobMonth = userDobMonth;
	}

	public String getUserDobDate() {
		return userDobDate;
	}

	public void setUserDobDate(String userDobDate) {
		this.userDobDate = userDobDate;
	}

	public int getUserGender() {
		return userGender;
	}

	public void setUserGender(int userGender) {
		this.userGender = userGender;
	}

	public String getUserCodeName() {
		return userCodeName;
	}

	public void setUserCodeName(String userCodeName) {
		this.userCodeName = userCodeName;
	}
	
	
	
	

}
