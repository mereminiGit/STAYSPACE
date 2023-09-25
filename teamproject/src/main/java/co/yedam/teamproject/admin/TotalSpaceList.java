package co.yedam.teamproject.admin;

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

@WebServlet("/totalspacelist.do")
public class TotalSpaceList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TotalSpaceList() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SpaceService dao = new SpaceServiceImpl();
		List<SpaceVO> spaces = new ArrayList<SpaceVO>();
		

		spaces = dao.totalSpaceSelectList();

		request.setAttribute("spaces", spaces);
		
		String page = "admin/admin/totalspacelist";
		ViewResolve.forward(request, response, page);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
