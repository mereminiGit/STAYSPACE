package co.yedam.teamproject.cartList;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.space.service.SpaceService;
import co.yedam.teamproject.space.service.SpaceVO;
import co.yedam.teamproject.space.serviceImpl.SpaceServiceImpl;

@WebServlet("/CartSpaceDetail")
public class CartSpaceDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CartSpaceDetail() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SpaceService dao = new SpaceServiceImpl();
		SpaceVO vo = new SpaceVO();
		vo.setSpaceId(Integer.parseInt("spaceId"));
		request.setAttribute("s", vo);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
