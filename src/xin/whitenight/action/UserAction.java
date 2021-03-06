package xin.whitenight.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import xin.whitenight.model.Usertable;
import xin.whitenight.service.IUserService;

public class UserAction extends ActionSupport {

	protected Usertable user;
	protected IUserService userService;
	protected String confirmPwd;

	public String login() {

		Usertable user1 = new Usertable();
		user1 = userService.select(user.getUsername(), user.getPassword());
		Map session = ActionContext.getContext().getSession();
		if (user1 == null) {
			return ERROR;
		} else {
			session.put("user", user1);
		}
		return SUCCESS;

	}

	public String regist() {

		user.setName(user.getUsername());
		if (user.getPassword().equals(confirmPwd)) {
			if (!userService.regist(user))
				return ERROR;
			return SUCCESS;
		} else {
			return ERROR;
		}

	}

	public String logout() {
		Map session = ActionContext.getContext().getSession();
		session.remove("user");
		return SUCCESS;
	}

	public Usertable getUser() {
		return user;
	}

	public void setUser(Usertable user) {
		this.user = user;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public String getConfirmPwd() {
		return confirmPwd;
	}

	public void setConfirmPwd(String confirmPwd) {
		this.confirmPwd = confirmPwd;
	}

}
