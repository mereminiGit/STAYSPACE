package co.yedam.teamproject.reservation.service;

import java.util.Date;

import lombok.Data;

@Data
public class ReservationVO {
	private String memberId;
	private String spaceName;
	private Date reserveStartDate;
	private Date reserveEndDate;
	private int reservePrice;
	private String reserveCheck;
	private int reserveId;
}
