package co.yedam.teamproject.member.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.common.SendMail;
import co.yedam.teamproject.common.ViewResolve;
import co.yedam.teamproject.member.service.MemberService;
import co.yedam.teamproject.member.service.MemberVO;
import co.yedam.teamproject.member.serviceImpl.MemberServiceImpl;

@WebServlet("/findpassword.do")
public class FindPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public FindPassword() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		vo.setMemberId(request.getParameter("findPwId"));
		vo.setMemberEmail(request.getParameter("findPwEmail"));
		vo = dao.memberSelectEmail(vo);
		
		String str = "";
		if (vo != null) {
			str = "findPwSuccess";	
			
			request.setAttribute("findPwmessage", str);
			
			String page = "main/account";
			ViewResolve.forward(request, response, page);
			
			MemberVO voUpdate = new MemberVO();
			voUpdate.setMemberId(vo.getMemberId());
			voUpdate.setMemberPassword(str);
			
			SendMail sendMail = new SendMail();
			String to = "workroom_km@naver.com";
			//vo.getMemberEmail();

			String title = "[스테이스페이스] 비밀번호 초기화";
			String content = "<!DOCTYPE html>\r\n"
				+ "<html lang=\"en\" xmlns=\"http://www.w3.org/1999/xhtml\" xmlns:v=\"urn:schemas-microsoft-com:vml\"\r\n"
				+ "  xmlns:o=\"urn:schemas-microsoft-com:office:office\">\r\n"
				+ "\r\n"
				+ "<head>\r\n"
				+ "  <title> Welcome to [Coded Mails] </title>\r\n"
				+ "\r\n"
				+ "  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\r\n"
				+ "  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n"
				+ "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\r\n"
				+ "  <style type=\"text/css\">\r\n"
				+ "    #outlook a {\r\n"
				+ "      padding: 0;\r\n"
				+ "    }\r\n"
				+ "\r\n"
				+ "    body {\r\n"
				+ "      margin: 0;\r\n"
				+ "      padding: 0;\r\n"
				+ "      -webkit-text-size-adjust: 100%;\r\n"
				+ "      -ms-text-size-adjust: 100%;\r\n"
				+ "    }\r\n"
				+ "\r\n"
				+ "    table,\r\n"
				+ "    td {\r\n"
				+ "      border-collapse: collapse;\r\n"
				+ "      mso-table-lspace: 0pt;\r\n"
				+ "      mso-table-rspace: 0pt;\r\n"
				+ "    }\r\n"
				+ "\r\n"
				+ "    img {\r\n"
				+ "      border: 0;\r\n"
				+ "      height: auto;\r\n"
				+ "      line-height: 100%;\r\n"
				+ "      outline: none;\r\n"
				+ "      text-decoration: none;\r\n"
				+ "      -ms-interpolation-mode: bicubic;\r\n"
				+ "    }\r\n"
				+ "\r\n"
				+ "    p {\r\n"
				+ "      display: block;\r\n"
				+ "      margin: 13px 0;\r\n"
				+ "    }\r\n"
				+ "  </style>\r\n"
				+ "\r\n"
				+ "  <link href=\"https://fonts.googleapis.com/css?family=Nunito:100,400,700\" rel=\"stylesheet\" type=\"text/css\" />\r\n"
				+ "  <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n"
				+ "  <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n"
				+ "  <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n"
				+ "  <link href=\"https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;200;300;400;500;600;700;800;900&display=swap\" rel=\"stylesheet\">\r\n"
				+ "  <style type=\"text/css\">\r\n"
				+ "    @import url(https://fonts.googleapis.com/css?family=Nunito:100,400,700);\r\n"
				+ "  </style>\r\n"
				+ "  <!--<![endif]-->\r\n"
				+ "  <style type=\"text/css\">\r\n"
				+ "    @media only screen and (min-width:480px) {\r\n"
				+ "      .mj-column-per-100 {\r\n"
				+ "        width: 100% !important;\r\n"
				+ "        max-width: 100%;\r\n"
				+ "      }\r\n"
				+ "    }\r\n"
				+ "  </style>\r\n"
				+ "  <style type=\"text/css\">\r\n"
				+ "    @media only screen and (max-width:480px) {\r\n"
				+ "      table.mj-full-width-mobile {\r\n"
				+ "        width: 100% !important;\r\n"
				+ "      }\r\n"
				+ "\r\n"
				+ "      td.mj-full-width-mobile {\r\n"
				+ "        width: auto !important;\r\n"
				+ "      }\r\n"
				+ "    }\r\n"
				+ "  </style>\r\n"
				+ "  <style type=\"text/css\">\r\n"
				+ "    a,\r\n"
				+ "    span,\r\n"
				+ "    td,\r\n"
				+ "    th {\r\n"
				+ "      -webkit-font-smoothing: antialiased !important;\r\n"
				+ "      -moz-osx-font-smoothing: grayscale !important;\r\n"
				+ "    }\r\n"
				+ "  </style>\r\n"
				+ "</head>\r\n"
				+ "\r\n"
				+ "<body style=\"background-color:#F7F7F7;\">\r\n"
				+ "  <div\r\n"
				+ "    style=\"display:none;font-size:1px;color:#ffffff;line-height:1px;max-height:0px;max-width:0px;opacity:0;overflow:hidden;\">\r\n"
				+ "    Preview - Welcome to Coded Mails </div>\r\n"
				+ "  <div style=\"background-color:#F7F7F7;\">\r\n"
				+ "\r\n"
				+ "    <div style=\"margin:0px auto;max-width:600px;\">\r\n"
				+ "      <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"width:100%;\">\r\n"
				+ "        <tbody>\r\n"
				+ "          <tr>\r\n"
				+ "            <td style=\"direction:ltr;font-size:0px;padding:20px 0;text-align:center;\">\r\n"
				+ "\r\n"
				+ "              <div class=\"mj-column-per-100 mj-outlook-group-fix\"\r\n"
				+ "                style=\"font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%;\">\r\n"
				+ "                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"vertical-align:top;\"\r\n"
				+ "                  width=\"100%\">\r\n"
				+ "                  <tbody>\r\n"
				+ "                    <tr>\r\n"
				+ "                      <td style=\"font-size:0px;word-break:break-word;\">\r\n"
				+ "\r\n"
				+ "                        <div style=\"height:20px;\"></div>\r\n"
				+ "\r\n"
				+ "                      </td>\r\n"
				+ "                    </tr>\r\n"
				+ "                  </tbody>\r\n"
				+ "                </table>\r\n"
				+ "              </div>\r\n"
				+ "\r\n"
				+ "            </td>\r\n"
				+ "          </tr>\r\n"
				+ "        </tbody>\r\n"
				+ "      </table>\r\n"
				+ "    </div>\r\n"
				+ "\r\n"
				+ "    <div\r\n"
				+ "      style=\"background:url(https://images.stayfolio.com/system/pictures/images/000/134/499/original/9e8966d3309b8f0c04b34bba148cbd0af91ba1c5.jpg?1659602554) top center / cover no-repeat;margin:0px auto;border-radius:20px 20px 0 0;max-width:600px;\">\r\n"
				+ "      <div style=\"line-height:0;font-size:0;\">\r\n"
				+ "        <table align=\"center\" background=\"https://images.stayfolio.com/system/pictures/images/000/134/499/original/9e8966d3309b8f0c04b34bba148cbd0af91ba1c5.jpg?1659602554\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\r\n"
				+ "          role=\"presentation\"\r\n"
				+ "          style=\"background:url(https://images.stayfolio.com/system/pictures/images/000/134/499/original/9e8966d3309b8f0c04b34bba148cbd0af91ba1c5.jpg?1659602554) top center / cover no-repeat;width:100%;border-radius:20px 20px 0 0;\">\r\n"
				+ "          <tbody>\r\n"
				+ "            <tr>\r\n"
				+ "              <td style=\"direction:ltr;font-size:0px;padding:20px 0;text-align:center;\">\r\n"
				+ "\r\n"
				+ "                <div class=\"mj-column-per-100 mj-outlook-group-fix\"\r\n"
				+ "                  style=\"font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%;\">\r\n"
				+ "                  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"vertical-align:top;\"\r\n"
				+ "                    width=\"100%\">\r\n"
				+ "                    <tbody>\r\n"
				+ "                      <tr>\r\n"
				+ "                        <td style=\"font-size:0px;word-break:break-word;\">\r\n"
				+ "\r\n"
				+ "                          <div style=\"height:250px;\"></div>\r\n"
				+ "\r\n"
				+ "                        </td>\r\n"
				+ "                      </tr>\r\n"
				+ "                    </tbody>\r\n"
				+ "                  </table>\r\n"
				+ "                </div>\r\n"
				+ "\r\n"
				+ "              </td>\r\n"
				+ "            </tr>\r\n"
				+ "          </tbody>\r\n"
				+ "        </table>\r\n"
				+ "      </div>\r\n"
				+ "    </div>\r\n"
				+ "\r\n"
				+ "    <div\r\n"
				+ "      style=\"background:#ffffff;background-color:#ffffff;margin:0px auto;border-radius:0 0 20px 20px;max-width:600px;\">\r\n"
				+ "      <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\"\r\n"
				+ "        style=\"background:#ffffff;background-color:#ffffff;width:100%;border-radius:0 0 20px 20px;\">\r\n"
				+ "        <tbody>\r\n"
				+ "          <tr>\r\n"
				+ "            <td style=\"direction:ltr;font-size:0px;padding:20px 0;text-align:center;\">\r\n"
				+ "\r\n"
				+ "              <div class=\"mj-column-per-100 mj-outlook-group-fix\"\r\n"
				+ "                style=\"font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%;\">\r\n"
				+ "                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"vertical-align:top;\"\r\n"
				+ "                  width=\"100%\">\r\n"
				+ "                  <tbody>\r\n"
				+ "                    <tr>\r\n"
				+ "                      <td align=\"left\" style=\"font-size:0px;padding:10px 25px;word-break:break-word;\">\r\n"
				+ "                        <div\r\n"
				+ "                          style=\"font-family:Nunito, Helvetica, Arial, sans-serif;font-size:18px;font-weight:400;line-height:30px;text-align:left;color:#54595f;\">\r\n"
				+ "                          <h2 style=\"margin: 0; line-height: normal; font-weight: bold; font-size: 20px;\">\r\n"
				+ "                            Hi " + vo.getMemberName() + ",</h2>\r\n"
				+ "                            <!-- ====================================================================== -->\r\n"
				+ "                        </div>\r\n"
				+ "                      </td>\r\n"
				+ "                    </tr>\r\n"
				+ "                    <tr>\r\n"
				+ "                      <td align=\"left\" style=\"font-size:0px;padding:10px 25px;word-break:break-word;\">\r\n"
				+ "                        <div\r\n"
				+ "                          style=\"font-family:Nunito, Helvetica, Arial, sans-serif;font-size:16px;font-weight:400;line-height:22px;text-align:left;color:#54595f;\">\r\n"
				+ "                          <h1 style=\"margin: 0; font-size: 24px; line-height: normal; font-weight: bold;\">\r\n"
				+ "                            Forgot your user Password?</h1>\r\n"
				+ "                        </div>\r\n"
				+ "                      </td>\r\n"
				+ "                    </tr>\r\n"
				+ "                    <tr>\r\n"
				+ "                      <td align=\"left\" style=\"font-size:0px;padding:10px 25px;word-break:break-word;\">\r\n"
				+ "                        <div\r\n"
				+ "                          style=\"font-family:Nunito, Helvetica, Arial, sans-serif;font-size:16px;font-weight:400;line-height:22px;text-align:left;color:#54595f;\">\r\n"
				+ "                          <p style=\"margin: 0; font-family: 'Noto Sans KR', sans-serif;\">\r\n"
				+ "                            <strong> </strong> \r\n"
				+ "                            안녕하세요. 회원님의 임시 비밀번호는 다음과 같습니다. <br>\r\n"
				+ "                            아래의 비밀번호로 로그인을 진행하세요.\r\n"
				+ "                          </p>\r\n"
				+ "                        </div>\r\n"
				+ "                      </td>\r\n"
				+ "                    </tr>\r\n"
				+ "                    <tr>\r\n"
				+ "                      <td align=\"center\" vertical-align=\"middle\"\r\n"
				+ "                        style=\"font-size:0px;padding:10px 25px;word-break:break-word;\">\r\n"
				+ "                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\"\r\n"
				+ "                          style=\"border-collapse:separate;line-height:100%;\">\r\n"
				+ "                          <tbody>\r\n"
				+ "                            <tr>\r\n"
				+ "                              <td align=\"center\" bgcolor=\"#54595f\" role=\"presentation\"\r\n"
				+ "                                style=\"border:none;border-radius:30px;cursor:auto;mso-padding-alt:10px 25px;background:#54595f;\"\r\n"
				+ "                                valign=\"middle\">\r\n"
				+ "                                <a href=\"https://google.com\"\r\n"
				+ "                                  style=\"display: inline-block; background: #212529; color: white; font-family: Nunito, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: normal; line-height: 30px; margin: 0; text-decoration: none; text-transform: none; padding: 10px 25px; mso-padding-alt: 0px; border-radius: 30px;\"\r\n"
				+ "                                  target=\"_blank\">\r\n"
				+ "                                  " + vo.getMemberId() + "</a>\r\n"
				+ "                                  <!-- ====================================================================== -->\r\n"
				+ "                              </td>\r\n"
				+ "                            </tr>\r\n"
				+ "                          </tbody>\r\n"
				+ "                        </table>\r\n"
				+ "                      </td>\r\n"
				+ "                    </tr>\r\n"
				+ "                    <tr>\r\n"
				+ "                      <td align=\"left\" style=\"font-size:0px;padding:10px 25px;word-break:break-word;\">\r\n"
				+ "                        <div\r\n"
				+ "                          style=\"font-family:Nunito, Helvetica, Arial, sans-serif;font-size:16px;font-weight:400;line-height:22px;text-align:left;color:#54595f;\">\r\n"
				+ "                          If you have any questions simply reply to this email and we would be more than happy to reply.\r\n"
				+ "                          :)</div>\r\n"
				+ "                      </td>\r\n"
				+ "                    </tr>\r\n"
				+ "                  </tbody>\r\n"
				+ "                </table>\r\n"
				+ "              </div>\r\n"
				+ "            </td>\r\n"
				+ "          </tr>\r\n"
				+ "        </tbody>\r\n"
				+ "      </table>\r\n"
				+ "    </div>\r\n"
				+ "\r\n"
				+ "    <div style=\"margin:0px auto;max-width:600px;\">\r\n"
				+ "      <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"width:100%;\">\r\n"
				+ "        <tbody>\r\n"
				+ "          <tr>\r\n"
				+ "            <td style=\"direction:ltr;font-size:0px;padding:20px 0;padding-top:0px;text-align:center;\">\r\n"
				+ "              <div class=\"mj-column-per-100 mj-outlook-group-fix\"\r\n"
				+ "                style=\"font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%;\">\r\n"
				+ "                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"vertical-align:top;\"\r\n"
				+ "                  width=\"100%\">\r\n"
				+ "                  <tbody>\r\n"
				+ "                    <tr>\r\n"
				+ "                      <td align=\"center\" style=\"font-size:0px;padding:10px 25px;word-break:break-word;\">\r\n"
				+ "                        <div\r\n"
				+ "                          style=\"font-family:Nunito, Helvetica, Arial, sans-serif;font-size:14px;font-weight:400;line-height:18px;text-align:center;color:#54595f;\">\r\n"
				+ "                          403, Jungang-daero, Jung-gu, Daegu, Republic of Korea<br /> © Copyright 2023 StaySpace.</div>\r\n"
				+ "                      </td>\r\n"
				+ "                    </tr>\r\n"
				+ "                  </tbody>\r\n"
				+ "                </table>\r\n"
				+ "              </div>\r\n"
				+ "            </td>\r\n"
				+ "          </tr>\r\n"
				+ "        </tbody>\r\n"
				+ "      </table>\r\n"
				+ "    </div>\r\n"
				+ "  </div>\r\n"
				+ "\r\n"
				+ "</body>\r\n"
				+ "</html>";
	
			sendMail.sendMail(to, title, content);
			
		} else {
			str = "findPwFail";
			
			request.setAttribute("findPwmessage", str);
			
			String page = "main/account";
			ViewResolve.forward(request, response, page);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
