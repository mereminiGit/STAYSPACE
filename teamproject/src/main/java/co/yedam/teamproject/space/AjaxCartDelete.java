package co.yedam.teamproject.space;

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

@WebServlet("/cartdelete.do")
public class AjaxCartDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjaxCartDelete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartListVO vo= new CartListVO();
		int reserveId=Integer.parseInt(request.getParameter("reserveId"));
		System.out.println("djfklsadlkfls;kdjf");
		System.out.println(request.getParameter("reserveId")+"ddddddddddddd");
		vo.setReserveId(reserveId);
		
		CartListService dao= new CartListServiceImpl();
		Map<String, Object> resultMap= new HashMap<>();
		
		if(dao.cartListDelete(vo)!=0) {
			resultMap.put("retCode", "Success");
		} else {
			resultMap.put("retCode", "Fail");
		}
		
		ObjectMapper objectMapper = new ObjectMapper();
		String json= objectMapper.writeValueAsString(resultMap);
		
		response.setContentType("text/json; charset=utf-8");
		response.getWriter().print(json);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
