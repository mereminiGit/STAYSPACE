package co.yedam.teamproject.reply.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.teamproject.common.DataSource;
import co.yedam.teamproject.reply.map.ReplyMapper;
import co.yedam.teamproject.reply.service.ReplyService;
import co.yedam.teamproject.reply.service.ReplyVO;

public class ReplyServiceImpl implements ReplyService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ReplyMapper map = sqlSession.getMapper(ReplyMapper.class);

	@Override
	public List<ReplyVO> replySelectList(String s) {
		return map.replySelectList(s);
	}

	@Override
	public ReplyVO replySelect(ReplyVO vo) {
		return map.replySelect(vo);
	}

	@Override
	public int replyInsert(ReplyVO vo) {
		return map.replyInsert(vo);
	}

	@Override
	public int replyUpdate(ReplyVO vo) {
		return map.replyUpdate(vo);
	}

	@Override
	public int replyDelete(ReplyVO vo) {
		return map.replyDelete(vo);
	}

	@Override
	public List<ReplyVO> replySelectListMember(String m) {
		return map.replySelectListMember(m);
	}

	@Override
	public int replyDeleteId(int id) {
		return map.replyDeleteId(id);
	}

	@Override
	public List<ReplyVO> replySelectListId(int spaceId) {
		return map.replySelectListId(spaceId);
	}

	@Override
	public List<ReplyVO> replySelectListRecent() {
		return map.replySelectListRecent();
	}

}
