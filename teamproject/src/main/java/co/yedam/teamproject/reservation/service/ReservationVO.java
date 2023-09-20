package co.yedam.teamproject.reservation.service;

import java.time.LocalDate;

import lombok.Data;

@Data
public class ReservationVO {
	private String memberId;
	private String spaceName;
	private LocalDate reserveStartDate;
	private LocalDate reserveEndDate;
	private int reservePrice;
	private String reserveCheck;
	private int reserveId;
}
