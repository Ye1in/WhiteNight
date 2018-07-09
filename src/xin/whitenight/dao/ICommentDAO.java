package xin.whitenight.dao;

import java.util.List;

import xin.whitenight.model.Commenttable;

public interface ICommentDAO {

	public List getCommentByArticleID(Integer id);
	
	public boolean newcomment(Commenttable comment);
	
}
