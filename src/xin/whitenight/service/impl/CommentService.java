package xin.whitenight.service.impl;

import java.util.List;
import xin.whitenight.dao.ICommentDAO;
import xin.whitenight.model.Commenttable;
import xin.whitenight.service.ICommentService;

public class CommentService implements ICommentService {

	private ICommentDAO commentDAO;

	public List getCommentByArticleID(Integer id) {

		return commentDAO.getCommentByArticleID(id);

	}

	public boolean newcomment(Commenttable comment) {

		return commentDAO.newcomment(comment);

	}

	public void setCommentDAO(ICommentDAO commentDAO) {
		this.commentDAO = commentDAO;
	}

}
