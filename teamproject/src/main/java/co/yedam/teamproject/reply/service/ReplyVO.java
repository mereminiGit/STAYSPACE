package co.yedam.teamproject.reply.service;

import java.time.LocalDate;

import lombok.Data;

@Data
public class ReplyVO {
	private String memberId;
	private String spaceName;
	private String replyContent;
	private LocalDate replyDate;
	private LocalDate replyUpdateDate;
	private int replyStar;
}
