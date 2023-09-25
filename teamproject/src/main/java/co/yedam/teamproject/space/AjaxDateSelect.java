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

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;

import co.yedam.teamproject.cartList.service.CartListService;
import co.yedam.teamproject.cartList.service.CartListVO;
import co.yedam.teamproject.cartList.serviceImpl.CartListServiceImpl;

/**
 * Servlet implementation class AjaxDateSelect
 */
@WebServlet("/date.do")
public class AjaxDateSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjaxDateSelect() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartListVO vo= new CartListVO();
		Date date = Date.valueOf(request.getParameter("spaceStartDate"));
		ObjectMapper objectMapper = new ObjectMapper().registerModule(new JavaTimeModule()); // json 형태의 데이터로 변환하고 날짜형 jsr310규정을 충족시키기 위해서
		
		vo.setSpaceStartDate(date);
		
		CartListService dao= new CartListServiceImpl();
		List<CartListVO> list= new ArrayList<>();
		list=dao.cartDateSelectList(vo);
		String json = objectMapper.writeValueAsString(list);
		request.setAttribute("date", list);
		response.setContentType("text/html; charset=UTF-8"); // 한글깨짐 방지 text/html 데이터라는 인식
		response.getWriter().append(json); //리스트를 호출하는 곳에 보냄
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
