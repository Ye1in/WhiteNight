package xin.whitenight.service;

import java.util.List;

import xin.whitenight.model.Messagetable;

public interface IMessageService {

	public List getMessageAll();

	public boolean setMessage(Messagetable message);

}
