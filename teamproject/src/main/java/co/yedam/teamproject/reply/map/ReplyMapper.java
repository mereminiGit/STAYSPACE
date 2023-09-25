package co.yedam.teamproject.reply.map;

import java.util.List;

import co.yedam.teamproject.reply.service.ReplyVO;

public interface ReplyMapper {
	List<ReplyVO> replySelectListMember(String m); //memberId로 reply 리스트 가져옴
	List<ReplyVO> replySelectListId(String spaceId); //spaceId로 
	List<ReplyVO> replySelectList(String s);
	ReplyVO replySelect(ReplyVO vo);
	int replyInsert(ReplyVO vo);
	int replyUpdate(ReplyVO vo);
	int replyDelete(ReplyVO vo);
	int replyDeleteId(int id);
}
