package xin.whitenight.action;

import xin.whitenight.model.Messagetable;
import xin.whitenight.service.IMessageService;

import com.opensymphony.xwork2.ActionSupport;

public class MessageAction extends ActionSupport {

	protected Messagetable message;
	protected IMessageService messageService;

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
