package co.yedam.teamproject.cartList.service;



import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
@Setter
@Getter
public class CartListVO {
	private String memberId;
	private String spaceName;
	private int spacePrice;
	private String spaceCity;
	private String spaceImageMain;
	private Date spaceStartDate;
	private int spaceId;

	private int reserveId;
}
