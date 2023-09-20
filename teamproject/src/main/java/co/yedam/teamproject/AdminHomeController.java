package co.yedam.teamproject;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.common.ViewResolve;

@WebServlet("/adminhome.do")
public class AdminHomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminHomeController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "admin/management/totalsale";
		ViewResolve.forward(request, response, path);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
