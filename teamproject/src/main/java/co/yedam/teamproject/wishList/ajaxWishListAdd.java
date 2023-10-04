package co.yedam.teamproject.wishList;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.teamproject.space.service.SpaceService;
import co.yedam.teamproject.space.service.SpaceVO;
import co.yedam.teamproject.space.serviceImpl.SpaceServiceImpl;
import co.yedam.teamproject.wishList.service.WishListService;
import co.yedam.teamproject.wishList.service.WishListVO;
import co.yedam.teamproject.wishList.serviceImpl.WishListServiceImpl;

//상세페이지 wishlist 버튼 누르면 wishlist 등록
@WebServlet("/ajaxWishListAdd.do")
public class ajaxWishListAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ajaxWishListAdd() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		WishListService dao = new WishListServiceImpl();
		WishListVO vo = new WishListVO();
		List<WishListVO> list = new ArrayList<>();
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("memberId");
		System.out.println("wishList add id찍어본다>>" + id);

		if (id != null) {
			if (request.getParameter("spaceId") != null) {
				SpaceService sdao = new SpaceServiceImpl();
				SpaceVO svo = new SpaceVO();
				svo.setSpaceId(Integer.valueOf(request.getParameter("spaceId")));
				svo = sdao.spaceSelect(svo);
				System.out.println("위시svo>> " + svo);
				vo.setMemberId(id);
				vo.setSpaceName(svo.getSpaceName());
				vo.setSpacePrice(svo.getSpacePrice());
				vo.setSpaceImage(svo.getSpaceImageMain());
				vo.setSpaceId(Integer.valueOf(svo.getSpaceId()));
				vo.setWishListStartDate(Date.valueOf(request.getParameter("date")));
				int result = dao.wishListInsert(vo);
				System.out.println("위시add result>> " + result);
				System.out.println(request.getParameter("spaceId"));

				if (result == 1) {
					response.getWriter().print("{\"retCode\": \"Success\"}");
				} else {
					response.getWriter().print("{\"retCode\": \"Fail\"}");
				}

				list = dao.wishListSelectList(vo);
			} else {
				vo.setMemberId(id);// 세션에담긴아이디불러오기
				list = dao.wishListSelectList(vo);
			}

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
