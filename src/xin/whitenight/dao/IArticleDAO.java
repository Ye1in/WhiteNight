package xin.whitenight.dao;

import java.util.List;
import java.util.Map;

import xin.whitenight.model.Articletable;

public interface IArticleDAO {

	public List getCurrentITT(int currentPage, int pageSize);

	public int getTotalsize();

	public String getArticleByID(int ID);

	public boolean newArticle(Articletable article);

}
