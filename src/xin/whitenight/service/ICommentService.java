package xin.whitenight.service;

import java.util.List;

import xin.whitenight.model.Commenttable;

public interface ICommentService {

	public List getCommentByArticleID(Integer id);

	public boolean newcomment(Commenttable comment);

}
