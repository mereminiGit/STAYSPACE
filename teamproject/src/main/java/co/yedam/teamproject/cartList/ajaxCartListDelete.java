package co.yedam.teamproject.cartList;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.cartList.service.CartListService;
import co.yedam.teamproject.cartList.serviceImpl.CartListServiceImpl;

@WebServlet("/ajaxCartListDelete")
public class ajaxCartListDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ajaxCartListDelete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CartListService svc = new CartListServiceImpl();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
