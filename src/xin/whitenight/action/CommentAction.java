package xin.whitenight.action;

import java.util.List;
import java.util.Map;
import xin.whitenight.model.Commenttable;
import xin.whitenight.service.ICommentService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CommentAction extends ActionSupport {

	protected Commenttable comment;
	protected ICommentService commentService;
	private int articleID;

	public void getCommentByArticle() {

		List list = commentService.getCommentByArticleID(articleID);
		Map session = ActionContext.getContext().getSession();
		session.put("comment", list);
//		return SUCCESS;

	}

	public Commenttable getComment() {
		return comment;
	}

	public void setComment(Commenttable comment) {
		this.comment = comment;
	}

	public void setCommentService(ICommentService commentService) {
		this.commentService = commentService;
	}

	public int getArticleID() {
		return articleID;
	}

	public void setArticleID(int articleID) {
		this.articleID = articleID;
	}

}
