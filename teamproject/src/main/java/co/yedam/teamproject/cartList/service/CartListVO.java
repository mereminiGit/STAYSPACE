package co.yedam.teamproject.cartList.service;

import java.util.Date;

import lombok.Data;
@Data
public class CartListVO {
	private String memberId;
	private String spaceName;
	private int spacePrice;
	private String spaceCity;
	private String spaceImageMain;
	private Date spaceStartDate;
	private Date spaceEndDate;
	private int reserveId;
}
