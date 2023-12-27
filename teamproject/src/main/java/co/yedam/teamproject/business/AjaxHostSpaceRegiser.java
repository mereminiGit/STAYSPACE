package co.yedam.teamproject.business;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.teamproject.common.ThumbNail;
import co.yedam.teamproject.common.ViewResolve;
import co.yedam.teamproject.member.service.MemberService;
import co.yedam.teamproject.member.service.MemberVO;
import co.yedam.teamproject.member.serviceImpl.MemberServiceImpl;
import co.yedam.teamproject.space.service.SpaceService;
import co.yedam.teamproject.space.service.SpaceVO;
import co.yedam.teamproject.space.serviceImpl.SpaceServiceImpl;

@WebServlet("/AjaxHostSpaceRegiser.do")
public class AjaxHostSpaceRegiser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjaxHostSpaceRegiser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String memberId = (String) session.getAttribute("memberId");

		MultipartRequest multi = null;
		ThumbNail thumbNail = new ThumbNail();
		SpaceVO vo = new SpaceVO();
		SpaceService dao = new SpaceServiceImpl();
		Map<String, Object> resultMap = new HashMap<>();

		String saveDir = getServletContext().getRealPath("image/space");
		int maxSize = 1024 * 1024 * 100;
		multi = new MultipartRequest(request, saveDir, maxSize, "utf-8", new DefaultFileRenamePolicy());

		String sname = multi.getParameter("name");
		String sprice = multi.getParameter("price");
		String scity = multi.getParameter("city");
		String saddress = multi.getParameter("address");
		String stype = multi.getParameter("stype");
		String scontent = multi.getParameter("content");
		//String smemberId = multi.getParameter("min");

		vo.setSpaceName(sname);
		vo.setSpacePrice(Integer.parseInt(sprice));
		vo.setSpaceCity(scity);
		vo.setSpaceAddress(saddress);
		vo.setSpaceType(stype);
		System.out.println(stype);
		vo.setSpaceContent(scontent);
		vo.setMemberId(memberId);

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
		
		if (dao.spaceInsert(vo) != 0) {
			vo = dao.spaceSelect(vo);
			
			request.setAttribute("retCode", "Success");
		} else {
			request.getSession().setAttribute("retCode", "Fail");
		}
		String page = "business/business/registerspace";
		ViewResolve.forward(request, response, page);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
