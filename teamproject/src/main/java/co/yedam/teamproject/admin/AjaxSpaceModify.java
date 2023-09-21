package co.yedam.teamproject.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import co.yedam.teamproject.space.service.SpaceService;
import co.yedam.teamproject.space.service.SpaceVO;
import co.yedam.teamproject.space.serviceImpl.SpaceServiceImpl;

@WebServlet("/AjaxSpaceModify.do")
public class AjaxSpaceModify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjaxSpaceModify() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid = request.getParameter("sid");
		String sname = request.getParameter("sname");
		String saddress = request.getParameter("saddress");
		String sprice = request.getParameter("sprice");
		//
		String simg = request.getParameter("simg");
		
		SpaceVO vo = new SpaceVO();
		SpaceService dao = new SpaceServiceImpl();
		Map<String, Object> resultMap = new HashMap<>();
		
		vo.setSpaceId(Integer.parseInt(sid));
		vo.setSpaceName(sname);
		vo.setSpaceAddress(saddress);
		vo.setSpacePrice(Integer.parseInt(sprice));
		
		//
		vo.setSpaceImageMain(simg);
		
		
		if(dao.spaceUpdate(vo) != 0) {
			vo = dao.spaceSelect(vo);
			resultMap.put("retCode","Success");
			resultMap.put("data", vo);
		}else {
			resultMap.put("retCode", "Fail");
		}
		
		ObjectMapper objectMapper = new ObjectMapper();
		String json = objectMapper.writeValueAsString(resultMap);
		
		response.setContentType("text/json; charset=UTF-8");
		response.getWriter().append(json);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
