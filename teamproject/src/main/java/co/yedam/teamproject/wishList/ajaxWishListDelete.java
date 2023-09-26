package co.yedam.teamproject.wishList;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import co.yedam.teamproject.wishList.service.WishListService;
import co.yedam.teamproject.wishList.service.WishListVO;
import co.yedam.teamproject.wishList.serviceImpl.WishListServiceImpl;

@WebServlet("/ajaxWishListDelete.do")
public class ajaxWishListDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ajaxWishListDelete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String wishListId=request.getParameter("wishListId");
		String memberId = request.getParameter("memberId");
		System.out.println(memberId+"::w,m:::"+wishListId);
		WishListVO vo = new WishListVO();
		WishListService dao = new WishListServiceImpl();
		
		vo.setMemberId(memberId);
		vo.setWishListId(Integer.valueOf(wishListId));
		
		int result = dao.wishListDelete(vo);
		
		System.out.println("위시리스트result"+result);
		
		ObjectMapper objectMapper = new ObjectMapper();
	    response.setCharacterEncoding("utf-8");

	    if(dao.wishListDelete(vo)!=0) {
			response.getWriter().print("{\"retCode\": \"Success\"}");
		}else {
			response.getWriter().print("{\"retCode\": \"Fail\"}");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
