package co.yedam.teamproject.wishList.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class WishListVO {
	private String spaceName;
	private int spacePrice;
	private String spaceImage;
	private String memberId;
	private Date wishListStartDate;
	private int wishListId;
	private int spaceId;
}
