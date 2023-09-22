package co.yedam.teamproject.cartList;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;

import co.yedam.teamproject.cartList.service.CartListService;
import co.yedam.teamproject.cartList.service.CartListVO;
import co.yedam.teamproject.cartList.serviceImpl.CartListServiceImpl;
import co.yedam.teamproject.common.ViewResolve;


@WebServlet("/membercartlist.do")
public class MemberCartList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MemberCartList() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartListService dao = new CartListServiceImpl();
		List<CartListVO> cartList = new ArrayList<CartListVO>();
		CartListVO vo = new CartListVO();
		vo.setMemberId(request.getParameter("memberId"));
		ObjectMapper objectMapper = new ObjectMapper().registerModule(new JavaTimeModule()); // json 형태의 데이터로 변환하고 날짜형 jsr310규정을 충족시키기 위해서

		cartList = dao.cartListSelectList(vo);
		request.setAttribute("cartList", cartList);
		System.out.println("cartList.do찍어봄");
		System.out.println(cartList);
		
		String path = "member/member/membercart";
		ViewResolve.forward(request, response, path);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
