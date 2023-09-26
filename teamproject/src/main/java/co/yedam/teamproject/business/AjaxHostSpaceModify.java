package co.yedam.teamproject.business;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.teamproject.common.ThumbNail;
import co.yedam.teamproject.space.service.SpaceService;
import co.yedam.teamproject.space.service.SpaceVO;
import co.yedam.teamproject.space.serviceImpl.SpaceServiceImpl;

@WebServlet("/AjaxHostSpaceModify.do")
public class AjaxHostSpaceModify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjaxHostSpaceModify() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MultipartRequest multi = null;
		ThumbNail thumbNail = new ThumbNail();
		SpaceVO vo = new SpaceVO();
		SpaceService dao = new SpaceServiceImpl();
		Map<String, Object> resultMap = new HashMap<>();

		String saveDir = getServletContext().getRealPath("image/space");
		int maxSize = 1024 * 1024 * 100;
		multi = new MultipartRequest(request, saveDir, maxSize, "utf-8", new DefaultFileRenamePolicy());

		String sid = multi.getParameter("sid");
		String sname = multi.getParameter("sname");
		System.out.println(sid + sname);
		String saddress = multi.getParameter("saddress");
		String sprice = multi.getParameter("sprice");
		String stype = multi.getParameter("stype");

		vo.setSpaceId(Integer.parseInt(sid));
		vo.setSpaceName(sname);
		vo.setSpaceAddress(saddress);
		vo.setSpacePrice(Integer.parseInt(sprice));
		vo.setSpaceType(stype);

		String imgFileName = multi.getOriginalFileName("imgfile");
		String realImg = multi.getFilesystemName("imgfile");

		if (imgFileName != null) {

			vo.setSpaceImageMain(realImg);

			System.out.println(imgFileName);
			
			String fileExt = imgFileName.substring(imgFileName.indexOf(".") + 1);
			String thumb = thumbNail.makeThumbnail(saveDir + File.separator + imgFileName, imgFileName, fileExt,
					saveDir + File.separator);
			thumb = thumb.substring(thumb.lastIndexOf("\\") + 1);
			vo.setSpaceThumb(thumb);

			String attech = multi.getOriginalFileName("attechfile");
			if (attech != null) {
				String attechFile = multi.getFilesystemName("attechfile");
				vo.setSpaceAttech(attechFile);
			}
		}
		
		String retCode = "";
		if (dao.spaceUpdate(vo) != 0) {
			vo = dao.spaceSelect(vo);
			resultMap.put("retCode", "Success");
			resultMap.put("data", vo);
			
			retCode = "Success";
			request.getSession().setAttribute("retCode", retCode);
			response.sendRedirect("BusinessSpaceList.do");
		} else {
			resultMap.put("retCode", "Fail");
			
			retCode = "Fail";
			request.getSession().setAttribute("retCode", retCode);
			response.sendRedirect("BusinessSpaceList.do");
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
