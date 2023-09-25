package co.yedam.teamproject.reply.service;

import java.util.List;

public interface ReplyService {
	List<ReplyVO> replySelectListMember(String m); //memberId로 reply 리스트 가져옴
	List<ReplyVO> replySelectListId(String spaceId);
	List<ReplyVO> replySelectList(String s);
	ReplyVO replySelect(ReplyVO vo);
	int replyInsert(ReplyVO vo);
	int replyUpdate(ReplyVO vo);
	int replyDelete(ReplyVO vo);
	int replyDeleteId(int id); //id로 reply 삭제
}
