package co.yedam.teamproject.space.service;
import java.util.Date;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class SpaceVO {
	private String spaceName;
	private int spacePrice;
	private String spaceCity;
	private String spaceAddress;
	private String spaceImageMain;
	private String spaceContent;
	private Date spaceStartDate;
	private Date spaceEndDate;
	private String memberId;
	private int spaceStar;
	private String spaceImageSub1;
	private String spaceImageSub2;
	private int spaceHit;
	private int spaceLat;
	private int spaceLng;
	private String spaceType;
}