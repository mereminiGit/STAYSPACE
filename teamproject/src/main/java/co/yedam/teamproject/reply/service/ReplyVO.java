package co.yedam.teamproject.reply.service;

import java.time.LocalDate;

import lombok.Data;

@Data
public class ReplyVO {
	private String memberId;
	private int spaceId;
	private String spaceName;
	private String replyContent;
	private LocalDate replyDate;
	private int replyStar;
	private String replyImage;
	private int replyId;
}
