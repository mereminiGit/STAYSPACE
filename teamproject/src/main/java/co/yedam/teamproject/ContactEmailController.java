package co.yedam.teamproject;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.common.SendMail;
import co.yedam.teamproject.common.ViewResolve;

@WebServlet("/contactemailcontroller.do")
public class ContactEmailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ContactEmailController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String str = "emailSuccess";
		request.setAttribute("messageContact", str);
		
		String name = request.getParameter("contactName");
		String email = request.getParameter("contactEmail");
		String number = request.getParameter("contactNumber");
		String message = request.getParameter("contactMessage");
		
		SendMail sendMail = new SendMail();
		String to = "workroom_km@naver.com";
		
		String title = "[스테이스페이스] 문의사항";
		String content = "<!DOCTYPE html><html lang=\"en\" xmlns=\"http://www.w3.org/1999/xhtml\" xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:o=\"urn:schemas-microsoft-com:office:office\"><head>\r\n"
				+ "    <title> Welcome to Coded Mails </title>\r\n"
				+ "    <!--[if !mso]><!-- -->\r\n"
				+ "    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\r\n"
				+ "    <!--<![endif]-->\r\n"
				+ "    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n"
				+ "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\r\n"
				+ "    <style type=\"text/css\">\r\n"
				+ "      #outlook a {\r\n"
				+ "        padding: 0;\r\n"
				+ "      }\r\n"
				+ "  \r\n"
				+ "      body {\r\n"
				+ "        margin: 0;\r\n"
				+ "        padding: 0;\r\n"
				+ "        -webkit-text-size-adjust: 100%;\r\n"
				+ "        -ms-text-size-adjust: 100%;\r\n"
				+ "      }\r\n"
				+ "  \r\n"
				+ "      table,\r\n"
				+ "      td {\r\n"
				+ "        border-collapse: collapse;\r\n"
				+ "        mso-table-lspace: 0pt;\r\n"
				+ "        mso-table-rspace: 0pt;\r\n"
				+ "      }\r\n"
				+ "  \r\n"
				+ "      img {\r\n"
				+ "        border: 0;\r\n"
				+ "        height: auto;\r\n"
				+ "        line-height: 100%;\r\n"
				+ "        outline: none;\r\n"
				+ "        text-decoration: none;\r\n"
				+ "        -ms-interpolation-mode: bicubic;\r\n"
				+ "      }\r\n"
				+ "  \r\n"
				+ "      p {\r\n"
				+ "        display: block;\r\n"
				+ "        margin: 13px 0;\r\n"
				+ "      }\r\n"
				+ "    </style>\r\n"
				+ "    <style type=\"text/css\">\r\n"
				+ "      @media only screen and (min-width:480px) {\r\n"
				+ "        .mj-column-per-100 {\r\n"
				+ "          width: 100% !important;\r\n"
				+ "          max-width: 100%;\r\n"
				+ "        }\r\n"
				+ "      }\r\n"
				+ "    </style>\r\n"
				+ "    <style type=\"text/css\">\r\n"
				+ "      @media only screen and (max-width:480px) {\r\n"
				+ "        table.mj-full-width-mobile {\r\n"
				+ "          width: 100% !important;\r\n"
				+ "        }\r\n"
				+ "  \r\n"
				+ "        td.mj-full-width-mobile {\r\n"
				+ "          width: auto !important;\r\n"
				+ "        }\r\n"
				+ "      }\r\n"
				+ "    </style>\r\n"
				+ "    <style type=\"text/css\">\r\n"
				+ "      a,\r\n"
				+ "      span,\r\n"
				+ "      td,\r\n"
				+ "      th {\r\n"
				+ "        -webkit-font-smoothing: antialiased !important;\r\n"
				+ "        -moz-osx-font-smoothing: grayscale !important;\r\n"
				+ "      }\r\n"
				+ "    </style>\r\n"
				+ "  </head>\r\n"
				+ "  \r\n"
				+ "  <body style=\"background-color:#ffffff;\">\r\n"
				+ "    <div style=\"display:none;font-size:1px;color:#ffffff;line-height:1px;max-height:0px;max-width:0px;opacity:0;overflow:hidden;\"> Preview - Welcome to Coded Mails </div>\r\n"
				+ "    <div style=\"background-color:#ffffff;\">\r\n"
				+ "      <div style=\"margin:0px auto;max-width:600px;\">\r\n"
				+ "        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"width:100%;\">\r\n"
				+ "          <tbody>\r\n"
				+ "            <tr>\r\n"
				+ "              <td style=\"direction:ltr;font-size:0px;padding:20px 0;padding-bottom:0px;text-align:center;\">\r\n"
				+ "                <div class=\"mj-column-per-100 mj-outlook-group-fix\" style=\"font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%;\">\r\n"
				+ "                  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"vertical-align:top;\" width=\"100%\">\r\n"
				+ "                    <tbody>\r\n"
				+ "                    <tr>\r\n"
				+ "                      <td align=\"left\" style=\"font-size:0px;padding:10px 25px;word-break:break-word;\">\r\n"
				+ "                        <div style=\"font-family:Helvetica, Arial, sans-serif;font-size:18px;font-weight:400;line-height:24px;text-align:left;color:#434245;\">\r\n"
				+ "                          <h1 style=\"margin: 0; font-size: 24px; line-height: normal; font-weight: bold;\"> STAYSPACE <br /> Received an inquiry from a customer. </h1>\r\n"
				+ "                        </div>\r\n"
				+ "                      </td>\r\n"
				+ "                    </tr>\r\n"
				+ "                  </tbody></table>\r\n"
				+ "                </div>\r\n"
				+ "              </td>\r\n"
				+ "            </tr>\r\n"
				+ "          </tbody>\r\n"
				+ "        </table>\r\n"
				+ "      </div>\r\n"
				+ "      <div style=\"margin:0px auto;max-width:600px;\">\r\n"
				+ "        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"width:100%;\">\r\n"
				+ "          <tbody>\r\n"
				+ "            <tr>\r\n"
				+ "              <td style=\"direction:ltr;font-size:0px;padding:20px 0;padding-bottom:0px;text-align:center;\">\r\n"
				+ "                <div class=\"mj-column-per-100 mj-outlook-group-fix\" style=\"font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%;\">\r\n"
				+ "                  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"vertical-align:top;\" width=\"100%\">\r\n"
				+ "                    <tbody><tr>\r\n"
				+ "                      <td align=\"left\" style=\"font-size:0px;padding:10px 25px;word-break:break-word;\">\r\n"
				+ "                        <div style=\"font-family:Helvetica, Arial, sans-serif;font-size:18px;font-weight:400;line-height:24px;text-align:left;color:#434245;\">\r\n"
				+ "                          <p style=\"margin: 0;\"><strong>Message</strong></p>\r\n"
				+ "                        </div>\r\n"
				+ "                      </td>\r\n"
				+ "                    </tr>\r\n"
				+ "                    <tr>\r\n"
				+ "                      <td align=\"left\" style=\"font-size:0px;padding:10px 25px;word-break:break-word;\">\r\n"
				+ "                        <div style=\"font-family:Helvetica, Arial, sans-serif;font-size:18px;font-weight:400;line-height:24px;text-align:left;color:#434245;\">\r\n"
				+ "                            <!-- 여기에 메세지 넘겨주기 -->\r\n"
				+ "                            <p style=\"margin: 0;\">" + message + "</p>\r\n"
				+ "                        </div>\r\n"
				+ "                      </td>\r\n"
				+ "                    </tr>\r\n"
				+ "                  </tbody></table>\r\n"
				+ "                </div>\r\n"
				+ "              </td>\r\n"
				+ "            </tr>\r\n"
				+ "          </tbody>\r\n"
				+ "        </table>\r\n"
				+ "      </div>\r\n"
				+ "      <div style=\"margin:0px auto;max-width:600px;\">\r\n"
				+ "        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"width:100%;\">\r\n"
				+ "          <tbody>\r\n"
				+ "            <tr>\r\n"
				+ "              <td style=\"direction:ltr;font-size:0px;padding:20px 0;text-align:center;\">\r\n"
				+ "\r\n"
				+ "                <div class=\"mj-column-per-100 mj-outlook-group-fix\" style=\"font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%;\">\r\n"
				+ "                  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"vertical-align:top;\" width=\"100%\">\r\n"
				+ "                    <tbody><tr>\r\n"
				+ "                      <td align=\"left\" style=\"font-size:0px;padding:10px 25px;word-break:break-word;\">\r\n"
				+ "                        <div style=\"font-family:Helvetica, Arial, sans-serif;font-size:18px;font-weight:400;line-height:24px;text-align:left;color:#434245;\">\r\n"
				+ "                            <!-- 여기에 이메일 준 사용자 이름 -->\r\n"
				+ "                          <p style=\"margin: 0;\"><strong style=\"font-size: 14px; color: #999; line-height: 18px\">Name:</strong><br />" + name + "</p>\r\n"
				+ "                        </div>\r\n"
				+ "                      </td>\r\n"
				+ "                    </tr>\r\n"
				+ "                    <tr>\r\n"
				+ "                      <td align=\"left\" style=\"font-size:0px;padding:10px 25px;word-break:break-word;\">\r\n"
				+ "                        <div style=\"font-family:Helvetica, Arial, sans-serif;font-size:18px;font-weight:400;line-height:24px;text-align:left;color:#434245;\">\r\n"
				+ "                            <!-- 여기에 이메일 준 사용자 이메일 -->\r\n"
				+ "                          <p style=\"margin: 0;\"><strong style=\"font-size: 14px; color: #999; line-height: 18px\">Email:</strong><br />" + email + "</p>\r\n"
				+ "                        </div>\r\n"
				+ "                      </td>\r\n"
				+ "                    </tr>\r\n"
				+ "                    <tr>\r\n"
				+ "                      <td align=\"left\" style=\"font-size:0px;padding:10px 25px;word-break:break-word;\">\r\n"
				+ "                        <div style=\"font-family:Helvetica, Arial, sans-serif;font-size:18px;font-weight:400;line-height:24px;text-align:left;color:#434245;\">\r\n"
				+ "                            <!-- 여기에 이메일 준 사용자 전화번호 -->\r\n"
				+ "                          <p style=\"margin: 0;\"><strong style=\"font-size: 14px; color: #999; line-height: 18px\">Number:</strong><br />" + number + "</p>\r\n"
				+ "                        </div>\r\n"
				+ "                      </td>\r\n"
				+ "                    </tr>\r\n"
				+ "                    <tr>\r\n"
				+ "                      <td align=\"left\" vertical-align=\"middle\" style=\"font-size:0px;padding:10px 25px;word-break:break-word;\">\r\n"
				+ "                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"border-collapse:separate;line-height:100%;\">\r\n"
				+ "                          <tbody><tr>\r\n"
				+ "                            <td align=\"center\" bgcolor=\"#2e58ff\" role=\"presentation\" style=\"border:none;border-radius:30px;cursor:auto;mso-padding-alt:10px 25px;background:#2e58ff;\" valign=\"middle\">\r\n"
				+ "                              <!-- 여기에 사용자 이메일 -->\r\n"
				+ "                              <a href=\"mailto:" + email + "?subject=안녕하세요! STAYSPACE 관리자 입니다.\" style=\"display: inline-block; background: #2e58ff; color: #ffffff; font-family: Helvetica, Arial, sans-serif; font-size: 14px; font-weight: bold; line-height: 30px; margin: 0; text-decoration: none; text-transform: uppercase; padding: 10px 25px; mso-padding-alt: 0px; border-radius: 30px;\" target=\"_blank\">\r\n"
				+ "                                <strong>Send Email</strong></a>\r\n"
				+ "                            </td>\r\n"
				+ "                          </tr>\r\n"
				+ "                        </tbody></table>\r\n"
				+ "                      </td>\r\n"
				+ "                    </tr>\r\n"
				+ "                  </tbody></table>\r\n"
				+ "                </div>\r\n"
				+ "\r\n"
				+ "              </td>\r\n"
				+ "            </tr>\r\n"
				+ "          </tbody>\r\n"
				+ "        </table>\r\n"
				+ "      </div>\r\n"
				+ "      <div style=\"margin:0px auto;max-width:600px;\">\r\n"
				+ "        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"width:100%;\">\r\n"
				+ "          <tbody>\r\n"
				+ "            <tr>\r\n"
				+ "              <td style=\"direction:ltr;font-size:0px;padding:20px 0;padding-top:0px;text-align:center;\">\r\n"
				+ "\r\n"
				+ "                <div class=\"mj-column-per-100 mj-outlook-group-fix\" style=\"font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%;\">\r\n"
				+ "                  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"vertical-align:top;\" width=\"100%\">\r\n"
				+ "                    <tbody>\r\n"
				+ "                    <tr>\r\n"
				+ "                      <td align=\"left\" style=\"font-size:0px;padding:10px 25px;word-break:break-word;\">\r\n"
				+ "                        <div style=\"font-family:Helvetica, Arial, sans-serif;font-size:18px;font-weight:bold;line-height:24px;text-align:left;color:#434245;\">Team Coded Mails</div>\r\n"
				+ "                      </td>\r\n"
				+ "                    </tr>\r\n"
				+ "                    <tr>\r\n"
				+ "                      <td align=\"left\" style=\"font-size:0px;padding:10px 25px;word-break:break-word;\">\r\n"
				+ "\r\n"
				+ "                        <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"float:none;display:inline-table;\">\r\n"
				+ "                          <tbody><tr>\r\n"
				+ "                            <td style=\"padding:4px;\">\r\n"
				+ "                              <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"border-radius:3px;width:18px;\">\r\n"
				+ "                                <tbody><tr>\r\n"
				+ "                                  <td style=\"font-size:0;height:18px;vertical-align:middle;width:18px;\">\r\n"
				+ "                                    <a href=\"#\" target=\"_blank\" style=\"color: #2e58ff; text-decoration: none;\">\r\n"
				+ "                                      <img alt=\"twitter-logo\" height=\"18\" src=\"https://codedmails.com/images/social/black/twitter-logo-transparent-black.png\" style=\"border-radius:3px;display:block;\" width=\"18\" />\r\n"
				+ "                                    </a>\r\n"
				+ "                                  </td>\r\n"
				+ "                                </tr>\r\n"
				+ "                              </tbody></table>\r\n"
				+ "                            </td>\r\n"
				+ "                          </tr>\r\n"
				+ "                        </tbody></table>\r\n"
				+ "                        <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"float:none;display:inline-table;\">\r\n"
				+ "                          <tbody><tr>\r\n"
				+ "                            <td style=\"padding:4px;\">\r\n"
				+ "                              <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"border-radius:3px;width:18px;\">\r\n"
				+ "                                <tbody><tr>\r\n"
				+ "                                  <td style=\"font-size:0;height:18px;vertical-align:middle;width:18px;\">\r\n"
				+ "                                    <a href=\"#\" target=\"_blank\" style=\"color: #2e58ff; text-decoration: none;\">\r\n"
				+ "                                      <img alt=\"facebook-logo\" height=\"18\" src=\"https://codedmails.com/images/social/black/facebook-logo-transparent-black.png\" style=\"border-radius:3px;display:block;\" width=\"18\" />\r\n"
				+ "                                    </a>\r\n"
				+ "                                  </td>\r\n"
				+ "                                </tr>\r\n"
				+ "                              </tbody></table>\r\n"
				+ "                            </td>\r\n"
				+ "                          </tr>\r\n"
				+ "                        </tbody></table>\r\n"
				+ "                        <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"float:none;display:inline-table;\">\r\n"
				+ "                          <tbody><tr>\r\n"
				+ "                            <td style=\"padding:4px;\">\r\n"
				+ "                              <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"border-radius:3px;width:18px;\">\r\n"
				+ "                                <tbody><tr>\r\n"
				+ "                                  <td style=\"font-size:0;height:18px;vertical-align:middle;width:18px;\">\r\n"
				+ "                                    <a href=\"#\" target=\"_blank\" style=\"color: #2e58ff; text-decoration: none;\">\r\n"
				+ "                                      <img alt=\"instagram-logo\" height=\"18\" src=\"https://codedmails.com/images/social/black/instagram-logo-transparent-black.png\" style=\"border-radius:3px;display:block;\" width=\"18\" />\r\n"
				+ "                                    </a>\r\n"
				+ "                                  </td>\r\n"
				+ "                                </tr>\r\n"
				+ "                              </tbody></table>\r\n"
				+ "                            </td>\r\n"
				+ "                          </tr>\r\n"
				+ "                        </tbody></table>\r\n"
				+ "                      </td>\r\n"
				+ "                    </tr>\r\n"
				+ "                  </tbody></table>\r\n"
				+ "                </div>\r\n"
				+ "              </td>\r\n"
				+ "            </tr>\r\n"
				+ "          </tbody>\r\n"
				+ "        </table>\r\n"
				+ "      </div>\r\n"
				+ "      <div style=\"margin:0px auto;max-width:600px;\">\r\n"
				+ "        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"width:100%;\">\r\n"
				+ "          <tbody>\r\n"
				+ "            <tr>\r\n"
				+ "              <td style=\"direction:ltr;font-size:0px;padding:20px 0;padding-top:0;text-align:center;\">\r\n"
				+ "                <div class=\"mj-column-per-100 mj-outlook-group-fix\" style=\"font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%;\">\r\n"
				+ "                  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"vertical-align:top;\" width=\"100%\">\r\n"
				+ "                    <tbody><tr>\r\n"
				+ "                      <td style=\"font-size:0px;padding:10px 25px;word-break:break-word;\">\r\n"
				+ "                        <p style=\"border-top: dashed 1px lightgrey; font-size: 1px; margin: 0px auto; width: 100%;\">\r\n"
				+ "                        </p>\r\n"
				+ "                      </td>\r\n"
				+ "                    </tr>\r\n"
				+ "                    <tr>\r\n"
				+ "                      <td align=\"left\" style=\"font-size:0px;padding:10px 25px;word-break:break-word; padding-top: 20px;\"\">\r\n"
				+ "                        <div style=\"font-family:Helvetica, Arial, sans-serif;font-size:14px;font-weight:400;line-height:24px;text-align:left;color:#999999;\">403, Jungang-daero, Jung-gu, Daegu, Republic of Korea<br> © Copyright 2023 StaySpace.</div>\r\n"
				+ "                      </td>\r\n"
				+ "                    </tr>\r\n"
				+ "                    <tr>\r\n"
				+ "                  </tbody></table>\r\n"
				+ "                </div>\r\n"
				+ "              </td>\r\n"
				+ "            </tr>\r\n"
				+ "          </tbody>\r\n"
				+ "        </table>\r\n"
				+ "      </div>\r\n"
				+ "\r\n"
				+ "    </div>\r\n"
				+ "  \r\n"
				+ "  \r\n"
				+ "  </body></html>";
		
		sendMail.sendMail(to, title, content);
		
		String page = "main/contact";
		ViewResolve.forward(request, response, page);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
