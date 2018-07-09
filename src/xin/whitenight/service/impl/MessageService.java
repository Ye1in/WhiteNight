package xin.whitenight.service.impl;

import java.util.List;

import xin.whitenight.dao.IMessageDAO;
import xin.whitenight.model.Messagetable;
import xin.whitenight.service.IMessageService;

public class MessageService implements IMessageService {

	private IMessageDAO messageDAO;

	public List getMessageAll() {

		return messageDAO.getMessageAll();

	}

	public boolean setMessage(Messagetable message) {

		return messageDAO.setMessage(message);

	}

	public void setMessageDAO(IMessageDAO messageDAO) {
		this.messageDAO = messageDAO;
	}
}
