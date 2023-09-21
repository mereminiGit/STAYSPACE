package co.yedam.teamproject.space.service;
import java.time.LocalDate;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class SpaceVO {
	private int spaceId;
	private String spaceName;
	private int spacePrice;
	private String spaceCity;
	private String spaceAddress;
	private String spaceImageMain;
	private String spaceContent;
	private String memberId;
	private int spaceStar;
	private String spaceImageSub1;
	private String spaceImageSub2;
	private String spaceHit;
	private String spaceLat;
	private String spaceLng;
}