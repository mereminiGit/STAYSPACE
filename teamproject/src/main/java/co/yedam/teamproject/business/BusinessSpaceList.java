package co.yedam.teamproject.business;

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

@WebServlet("/BusinessSpaceList.do")
public class BusinessSpaceList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BusinessSpaceList() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SpaceService dao = new SpaceServiceImpl();
		List<SpaceVO> spaces = new ArrayList<>();
		
		String memberId = "min";
		spaces = dao.spaceSelectListMember(memberId);
		int n = dao.spaceSelectCountMember(memberId);
		
		request.setAttribute("spaces", spaces);
		request.setAttribute("count", n);
		System.out.println(spaces+"  "+n);
		
		String page = "business/business/spacelist";
		ViewResolve.forward(request, response, page);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
