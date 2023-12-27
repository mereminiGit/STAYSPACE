package co.yedam.teamproject.wishList;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import co.yedam.teamproject.common.ViewResolve;
import co.yedam.teamproject.wishList.service.WishListService;
import co.yedam.teamproject.wishList.service.WishListVO;
import co.yedam.teamproject.wishList.serviceImpl.WishListServiceImpl;

@WebServlet("/wishListhome.do")
public class WishListhome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public WishListhome() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		WishListService dao = new WishListServiceImpl();
		List<WishListVO> wishList = new ArrayList<WishListVO>();
		WishListVO vo = new WishListVO();
		
		vo.setMemberId(request.getParameter("memberId"));
		System.out.println(request.getParameter("memberId"));
		
		wishList = dao.wishListSelectList(vo);
		request.setAttribute("wishList", wishList);
		System.out.println("wishList>>>"+wishList);
		
		ObjectMapper objectMapper = new ObjectMapper();
		String path = "member/member/membercart";
		ViewResolve.forward(request, response, path);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
