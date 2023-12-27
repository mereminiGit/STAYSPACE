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

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SpaceService dao = new SpaceServiceImpl();
		List<SpaceVO> spaces = new ArrayList<SpaceVO>();

		spaces = dao.totalSpaceSelectList();

		int n = dao.spaceSelectCount();

		request.setAttribute("spaces", spaces);
		request.setAttribute("count", n);

		// 페이징
		int pages = (int) Math.ceil(spaces.size() / 7.0); // 페이지 수
		request.setAttribute("results", spaces.size()); // 공간 수
		request.setAttribute("pages", pages); // 페이지 수

		String currentPage = request.getParameter("page"); // 현재페이지
		if (currentPage == null || currentPage.equals("0")) {
			currentPage = "1";
		}

		request.setAttribute("currentPage", currentPage); // 현재페이지
		int page = Integer.parseInt(currentPage);
		List<SpaceVO> list = new ArrayList<SpaceVO>();
		for (int i = (page - 1) * 7; i < page * 7 && i < spaces.size(); i++) {
			list.add(spaces.get(i)); // 페이지만큼 출력
		}
		request.setAttribute("spaces", list);
		//

		String path = "admin/admin/totalspacelist";
		ViewResolve.forward(request, response, path);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
