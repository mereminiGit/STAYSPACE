package co.yedam.teamproject.member;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.teamproject.common.ThumbNail;
import co.yedam.teamproject.common.ViewResolve;
import co.yedam.teamproject.member.service.MemberService;
import co.yedam.teamproject.member.service.MemberVO;
import co.yedam.teamproject.member.serviceImpl.MemberServiceImpl;

@WebServlet("/ajaxMemberImgUpload.do")
public class ajaxMemberImgUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ajaxMemberImgUpload() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ThumbNail thumbNail = new ThumbNail(); // 썸네일 Class
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		Map<String, Object> resultMap = new HashMap<>();

		String saveDir = getServletContext().getRealPath("attech/notice"); // getServletContext() : prjdb /
																			// getRealPath() : 실제 경로 / 운영서버에 올릴때는 안쓴다..
		int maxSize = 1024 * 1024 * 100; // 100M byte
		MultipartRequest multi = new MultipartRequest( // multipart/form-data로 오는 것은 전부 MultipartRequest로 받아야함.
				request, saveDir, maxSize, "utf-8", new DefaultFileRenamePolicy() // 파일명이 동일할때 자동으로 (1),(2) 넘버링 붙여서 저장하는
																					// 기능.
		);
		String memberId = multi.getParameter("memberId");
		vo.setMemberId(memberId);
		
		String imgFileName = multi.getOriginalFileName("imgfile"); // 원본파일명
		String realImg = multi.getFilesystemName("imgfile"); // 저장되는 파일명

		
		if(imgFileName != null) {
			vo.setMemberImage(realImg); // 이미지 파일 명을 저장한다.
			
			System.out.println(imgFileName);
			
			String fileExt = imgFileName.substring(imgFileName.lastIndexOf(".") + 1); // 확장자 명
			String thumb = thumbNail.makeThumbnail(saveDir + File.separator + imgFileName, imgFileName, fileExt,
					saveDir + File.separator);
			thumb = thumb.substring(thumb.lastIndexOf("\\") + 1); // 넘어온 결과에서 파일경로를 잘라내고 파일명만 얻음
			vo.setMemberThumb(thumb);
			
			String attech = multi.getOriginalFileName("attechfile");
			if (attech != null) {
				String attechFile = multi.getFilesystemName("attechfile");
				vo.setMemberAttech(attechFile);
			}
		}
//		vo.setNoticeThumb(thumbNail.makeThumbnail(saveDir + File.separator + imgFileName, imgFileName, fileExt,
//				saveDir + File.separator)); // 썸네일 생성 후 vo set

		// vo 객체에 넘어온 데이터 set

		//vo.setMemberImage(multi.getParameter("memberImage"));

		// db에 insert
		int n = dao.memberUpdate(vo);

		// update 결과 반환
		if (n != 0) {
			vo = dao.memberSelect(vo);
			resultMap.put("retCode", "Success");
			resultMap.put("data", vo);
			response.sendRedirect("memberedit.do"); // 성공했을 때는 게시글 리스트로 sendRedirect(위임)
		} else {
			resultMap.put("retCode", "Fail");
		}

		ObjectMapper objectMapper = new ObjectMapper();
		String json = objectMapper.writeValueAsString(resultMap);

		response.setContentType("text/json; charset=UTF-8");
		response.getWriter().append(json);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
