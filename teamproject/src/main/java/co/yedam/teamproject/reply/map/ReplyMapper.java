package co.yedam.teamproject.reply.map;

import java.util.List;

import co.yedam.teamproject.reply.service.ReplyVO;

public interface ReplyMapper {
	List<ReplyVO> replySelectListRecent();
	List<ReplyVO> replySelectListMember(String m); //memberId로 reply 리스트 가져옴
	List<ReplyVO> replySelectListId(int spaceId); //spaceId로 
	List<ReplyVO> replySelectList(String spaceName); //spaceName 으로 
	ReplyVO replySelect(ReplyVO vo);
	ReplyVO replySelectbyReplyId(ReplyVO vo);
	int replyInsert(ReplyVO vo);
	int replyUpdate(ReplyVO vo);
	int replyDelete(ReplyVO vo);
	int replyDeleteId(int id);
}
