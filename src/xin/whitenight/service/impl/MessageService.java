package xin.whitenight.service.impl;

import xin.whitenight.dao.IMessageDAO;
import xin.whitenight.service.IMessageService;

public class MessageService implements IMessageService {

	private IMessageDAO messageDAO;

	public void setMessageDAO(IMessageDAO messageDAO) {
		this.messageDAO = messageDAO;
	}

}
