package xin.whitenight.interceptor;

import java.util.Map;

import xin.whitenight.model.Usertable;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class LoginInterceptor extends MethodFilterInterceptor {

	@Override
	protected String doIntercept(ActionInvocation arg0) throws Exception {
		Map session = ActionContext.getContext().getSession();
		Usertable user = (Usertable) session.get("user");
		if (user != null) {
			return arg0.invoke();
		} else {
			return "login";
		}
	}

}
