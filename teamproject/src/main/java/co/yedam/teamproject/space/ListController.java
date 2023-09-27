package co.yedam.teamproject.space;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.common.ViewResolve;
import co.yedam.teamproject.reservation.service.ReservationVO;
import co.yedam.teamproject.space.service.SpaceService;
import co.yedam.teamproject.space.service.SpaceVO;
import co.yedam.teamproject.space.serviceImpl.SpaceServiceImpl;

//여기는 공간 목록페이지입니다.
@WebServlet("/shoplist.do")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ListController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SpaceService dao= new SpaceServiceImpl();
		List<SpaceVO> spaces = new ArrayList<SpaceVO>();
		SpaceVO vo=new SpaceVO();
		ReservationVO rvo=new ReservationVO();
		String date=request.getParameter("spaceStartDate");
		if(date != null) { //날짜검색
			rvo.setReserveStartDate(Date.valueOf(date));
			spaces=dao.spaceSelectDate(rvo);
		} else { 
			vo.setSpaceCity(request.getParameter("spaceCity")); //도시검색
			vo.setSpaceType(request.getParameter("spaceType")); //타입검색
			vo.setSpaceName(request.getParameter("spaceName")); //이름검색
			spaces=dao.spaceSelectList(vo);
		} 
		
		int pages=(int) Math.ceil(spaces.size()/9.0); //페이지 수
		request.setAttribute("results", spaces.size()); //공간 수
		request.setAttribute("pages",pages); //페이지 수
		
		String currentPage=request.getParameter("page");//현재페이지
		if(currentPage==null||currentPage.equals("0")) {
			currentPage="1";
		}
		request.setAttribute("currentPage", currentPage); //현재페이지
		int page=Integer.parseInt(currentPage);
		List<SpaceVO> list=new ArrayList<SpaceVO>();
		for(int i=(page-1)*9; i<page*9&&i<spaces.size(); i++) {
			list.add(spaces.get(i)); //페이지만큼 출력
		}
		request.setAttribute("spaces",list);
		String path = "space/shoplist";
		ViewResolve.forward(request, response, path);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
