package co.yedam.teamproject.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.request.SingleMessageSendingRequest;
import net.nurigo.sdk.message.response.SingleMessageSentResponse;
import net.nurigo.sdk.message.service.DefaultMessageService;

@Controller
public class Sendsms {
	 final DefaultMessageService messageService;

	    public Sendsms() {
	        // 반드시 계정 내 등록된 유효한 API 키, API Secret Key를 입력해주셔야 합니다!
	        this.messageService = NurigoApp.INSTANCE.initialize("NCSYC7VELBDGCUEA", "L9F9QDGCTG4KZKT9VE1AVZ33PJ8AF7GB", "https://api.coolsms.co.kr");
	    }
	    
	    @RequestMapping("/send-one")
	    public SingleMessageSentResponse sendOne(String sent, String reception, String content) {
	        Message message = new Message();
	        // 발신번호 및 수신번호는 반드시 01012345678 형태로 입력되어야 합니다.
	        message.setFrom(sent);			// 발신번호 입력(보내는 번호) - Sent
	        message.setTo(reception);		// 수신번호 입력(받는 번호) - reception
	        message.setText(content);		// 내용

	        SingleMessageSentResponse response = this.messageService.sendOne(new SingleMessageSendingRequest(message));
	        System.out.println(response);

	        return response;
	    }
}
