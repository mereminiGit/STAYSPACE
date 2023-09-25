package co.yedam.teamproject.reservation.service;


import java.sql.Date;


import lombok.Data;

@Data
public class ReservationVO {
	private String memberId;
	private int spaceId;
	private String spaceName;
	private Date reserveStartDate;
	private Date reserveEndDate;
	private int reservePrice;
	private int reserveCheck;
	private int reserveId;
	private String reserveImg;
	private Date reserveCheckoutDate;
	private String hostId;
}
