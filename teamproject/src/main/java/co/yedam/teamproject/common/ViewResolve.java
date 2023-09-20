package co.yedam.teamproject.common;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ViewResolve {
	public static void forward(HttpServletRequest request, HttpServletResponse response, String path)
			throws ServletException, IOException {
		String prefix = "WEB-INF/views/";
		String subfix = ".tiles";
		String page = path + subfix;

		if (path.endsWith(".jsp")) { // .jsp 붙이면 테일즈 안 탐
			page = prefix + path;
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(page);
		dispatcher.forward(request, response);
	}
}
