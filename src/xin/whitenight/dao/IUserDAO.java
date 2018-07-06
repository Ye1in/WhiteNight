package xin.whitenight.dao;

import xin.whitenight.model.Usertable;

public interface IUserDAO {

	public Usertable select(String username, String password);

	public boolean regist(Usertable user);

}
