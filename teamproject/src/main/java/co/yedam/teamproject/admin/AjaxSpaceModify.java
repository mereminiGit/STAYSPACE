package co.yedam.teamproject.admin;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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
import co.yedam.teamproject.common.ViewResolve;
import co.yedam.teamproject.space.service.SpaceService;
import co.yedam.teamproject.space.service.SpaceVO;
import co.yedam.teamproject.space.serviceImpl.SpaceServiceImpl;

@WebServlet("/AjaxSpaceModify.do")
public class AjaxSpaceModify extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AjaxSpaceModify() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
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
		String scontent = multi.getParameter("scontent");

		vo.setSpaceId(Integer.parseInt(sid));
		vo.setSpaceName(sname);
		vo.setSpaceAddress(saddress);
		vo.setSpacePrice(Integer.parseInt(sprice));
		vo.setSpaceType(stype);
		vo.setSpaceContent(scontent);

		String imgFileName1 = multi.getOriginalFileName("imgfile1");
		String realImg1 = multi.getFilesystemName("imgfile1");
		String realImg2 = multi.getFilesystemName("imgfile2");
		String realImg3 = multi.getFilesystemName("imgfile3");
		
		vo.setSpaceImageSub1(realImg2);
		vo.setSpaceImageSub2(realImg3);
		
		if (imgFileName1 != null) {

			vo.setSpaceImageMain(realImg1);

			System.out.println(imgFileName1);
			
			String fileExt = imgFileName1.substring(imgFileName1.indexOf(".") + 1);
			String thumb = thumbNail.makeThumbnail(saveDir + File.separator + imgFileName1, imgFileName1, fileExt,
					saveDir + File.separator);
			thumb = thumb.substring(thumb.lastIndexOf("\\") + 1);
			vo.setSpaceThumb(thumb);

			String attech = multi.getOriginalFileName("attechfile");
			if (attech != null) {
				String attechFile = multi.getFilesystemName("attechfile");
				vo.setSpaceAttech(attechFile);
			}
		}
		
		
		if (dao.spaceUpdate(vo) != 0) {
			vo = dao.spaceSelect(vo);
			
			request.setAttribute("retCode", "Success");
//          response.sendRedirect("totalspacelist.do");
		} else {
			
			request.setAttribute("retCode", "Fail");
//			response.sendRedirect("totalspacelist.do");
		}

//		response.sendRedirect("totalspacelist.do");
		String page = "admin/admin/totalspacelist";
		ViewResolve.forward(request, response, page);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
