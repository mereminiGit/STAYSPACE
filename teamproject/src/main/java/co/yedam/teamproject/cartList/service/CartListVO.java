package co.yedam.teamproject.cartList.service;

import java.time.LocalDate;

import lombok.Data;
@Data
public class CartListVO {
	private String memberId;
	private String spaceName;
	private int spacePrice;
	private String spaceCity;
	private String spaceImageMain;
	private LocalDate spaceStartDate;
	private LocalDate spaceEndDate;
	private int reserveId;
}
