package xin.whitenight.action;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import xin.whitenight.model.Articletable;
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
		// return SUCCESS;

	}

	public String setCommentByComment() {

		comment.setTime(new Timestamp(System.currentTimeMillis()));
		Map session = ActionContext.getContext().getSession();
		comment.setArticletable((Articletable) session.get("article"));
		if (commentService.newcomment(comment))
			return SUCCESS;
		else {
			session.put("newcomment", comment.getComment().toString());
			return ERROR;
		}

	}

	public Commenttable getComment() {
		return comment;
	}

	public void setComment(Commenttable comment) {
		this.comment = comment;
	}

	public int getArticleID() {
		return articleID;
	}

	public void setArticleID(int articleID) {
		this.articleID = articleID;
	}

	public void setCommentService(ICommentService commentService) {
		this.commentService = commentService;
	}

}
