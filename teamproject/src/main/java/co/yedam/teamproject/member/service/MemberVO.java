package co.yedam.teamproject.member.service;

import lombok.Data;

@Data
public class MemberVO {
	private String memberId;
	private String memberPassword;
	private String memberName;
	private String memberEmail;
	private String memberTel;
	private String memberCheck;
	private String memberImage;
	private String memberAttech;
	private String memberThumb;
}
