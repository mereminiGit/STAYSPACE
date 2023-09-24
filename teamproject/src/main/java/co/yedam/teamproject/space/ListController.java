package co.yedam.teamproject.space;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.common.ViewResolve;
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
		
		System.out.println(request.getParameter("spaceCity"));
		vo.setSpaceCity(request.getParameter("spaceCity"));
		vo.setSpaceType(request.getParameter("spaceType"));
		vo.setSpaceName(request.getParameter("spaceName"));
		
		spaces=dao.spaceSelectList(vo);
		request.setAttribute("spaces",spaces);
//		String city= request.getParameter("city");
//		String type= request.getParameter("type");
//		if(city==null&type==null) {
//		}else {
//			if(city!=null) {
//				vo.setSpaceCity(city);
//			}
//			if(type!=null) {
//				vo.setSpaceType(type);
//			}
//			
//		}
		String path = "space/shoplist";
		ViewResolve.forward(request, response, path);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
