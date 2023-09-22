package co.yedam.teamproject.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.space.service.SpaceService;
import co.yedam.teamproject.space.serviceImpl.SpaceServiceImpl;

@WebServlet("/AjaxSpaceDelete.do")
public class AjaxSpaceDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjaxSpaceDelete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sname = request.getParameter("sname");
		SpaceService dao = new SpaceServiceImpl();
		
		if(dao.spaceDelete(sname) != 0) {
			response.getWriter().print("{\"retCode\": \"Success\"}");
		}else {
			response.getWriter().print("{\"retCode\": \"Fail\"}");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
