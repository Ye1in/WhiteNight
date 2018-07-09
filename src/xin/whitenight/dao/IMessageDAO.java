package xin.whitenight.dao;

import java.util.List;

import xin.whitenight.model.Messagetable;

public interface IMessageDAO {

	public List getMessageAll();

	public boolean setMessage(Messagetable message);

}
