package xin.whitenight.service;

import xin.whitenight.model.Usertable;

public interface IUserService {

	public Usertable select(String username, String password);

}
