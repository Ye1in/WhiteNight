package xin.whitenight.service.impl;

import xin.whitenight.dao.IUserDAO;
import xin.whitenight.model.Usertable;
import xin.whitenight.service.IUserService;

public class UserService implements IUserService {

	private IUserDAO userDAO;

	public Usertable select(String username, String password) {

		return userDAO.select(username, password);

	}

	public void setUserDAO(IUserDAO userDAO) {
		this.userDAO = userDAO;
	}

}
