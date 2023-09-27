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
		vo.setReserveId(reserveId);
		
		CartListService dao= new CartListServiceImpl();
		Map<String, Object> resultMap= new HashMap<>();
		
		ObjectMapper objectMapper = new ObjectMapper();
	    response.setCharacterEncoding("utf-8");
	    
		if(dao.cartListDelete(vo)!=0) {
			resultMap.put("retCode", "Success");
		} else {
			resultMap.put("retCode", "Fail");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
