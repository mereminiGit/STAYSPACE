package co.yedam.teamproject.business;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.teamproject.common.ViewResolve;
import co.yedam.teamproject.member.service.MemberService;
import co.yedam.teamproject.member.service.MemberVO;
import co.yedam.teamproject.member.serviceImpl.MemberServiceImpl;
import co.yedam.teamproject.space.service.SpaceService;
import co.yedam.teamproject.space.service.SpaceVO;
import co.yedam.teamproject.space.serviceImpl.SpaceServiceImpl;

@WebServlet("/BusinessSpaceList.do")
public class BusinessSpaceList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BusinessSpaceList() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		SpaceService sdao = new SpaceServiceImpl();
		List<SpaceVO> spaces = new ArrayList<>();
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		String memberId = (String) session.getAttribute("memberId");

		vo.setMemberId(memberId);
		vo = dao.memberSelect(vo);
		spaces = sdao.spaceSelectListMember(memberId);
		int n = sdao.spaceSelectCountMember(memberId);
		// System.out.println(vo.getMemberCheck());
		
		request.setAttribute("spaces", spaces);
		request.setAttribute("count", n);
		System.out.println(spaces+"  "+n);
		
		//페이징
		int pages=(int) Math.ceil(spaces.size()/9.0); //페이지 수 
		request.setAttribute("results", spaces.size()); //공간 수
		request.setAttribute("pages", pages); //페이지 수
		
		String currentPage = request.getParameter("page"); //현재페이지
		if(currentPage == null||currentPage.equals("0")) {
			currentPage="1";
		}
		
		request.setAttribute("currentPage", currentPage); //현재페이지
		int page = Integer.parseInt(currentPage);
		List<SpaceVO> list = new ArrayList<SpaceVO>();
		for(int i=(page-1)*9; i<page*9 && i<spaces.size(); i++) {
			list.add(spaces.get(i)); // 페이지만큼 출력
		}
		request.setAttribute("spaces", list);
		//
		String path = "business/business/spacelist";
		ViewResolve.forward(request, response, path);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
