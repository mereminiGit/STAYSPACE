package co.yedam.teamproject;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.common.ViewResolve;


@WebServlet("/menu.do")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public HomeController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String path = "layouts/membermenu.jsp";
		String path = "management/memberhome2.jsp";
		//String path = "management/membermodify.jsp";
		ViewResolve.forward(request, response, path);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
