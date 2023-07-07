package com.mycompany.app.infra.codeGroup;

public class CodeGroup {

//  DTO 생성
//	seq의 경우에는 DB에선 int값으로 설정해줬지만 자바에서 쓰면 캐스팅 오지게 걸려서 귀찮기 떄문에 String으로 써준다.
//	모든 DTO는 private으로 만들어 주어야 한다.
//	디비컬렴명 첫글자는 무조건 소문자, 주로 DB의 Table의 Column명과 일치

	private String seq;
	private String name;
	private int delNy;

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

}
