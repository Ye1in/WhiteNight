package xin.whitenight.action;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import xin.whitenight.model.Messagetable;
import xin.whitenight.service.IMessageService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class MessageAction extends ActionSupport {

	protected Messagetable message;
	protected IMessageService messageService;

	public String getMessageList() {

		List list = messageService.getMessageAll();
		Map session = ActionContext.getContext().getSession();
		session.put("message", list);
		return SUCCESS;

	}

	public String setMessage() {

		message.setTime(new Timestamp(System.currentTimeMillis()));
		if (messageService.setMessage(message))
			return SUCCESS;
		return ERROR;

	}

	public Messagetable getMessage() {
		return message;
	}

	public void setMessage(Messagetable message) {
		this.message = message;
	}

	public void setMessageService(IMessageService messageService) {
		this.messageService = messageService;
	}

}
