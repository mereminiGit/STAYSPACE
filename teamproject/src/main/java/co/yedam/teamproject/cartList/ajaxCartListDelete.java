package co.yedam.teamproject.cartList;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import co.yedam.teamproject.cartList.service.CartListService;
import co.yedam.teamproject.cartList.service.CartListVO;
import co.yedam.teamproject.cartList.serviceImpl.CartListServiceImpl;

@WebServlet("/ajaxCartListDelete.do")
public class ajaxCartListDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ajaxCartListDelete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memberId = request.getParameter("memberId");
		String spaceName = request.getParameter("spaceName");
		CartListVO vo = new CartListVO();
		CartListService dao = new CartListServiceImpl();
		
		vo.setMemberId(memberId);
		vo.setSpaceName(spaceName);
		
		System.out.println(memberId+spaceName);
		if(dao.cartListDelete(vo)!=0) {
			response.getWriter().print("{\"retCode\": \"Success\"}");
		}else {
			response.getWriter().print("{\"retCode\": \"Fail\"}");
		}
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
