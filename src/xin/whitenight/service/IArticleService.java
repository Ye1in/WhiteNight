package xin.whitenight.service;

import java.util.List;
import xin.whitenight.model.Articletable;

public interface IArticleService {

	public List getCurrentITT(int currentPage, int pageSize);

	public int getTotalsize();

	public String getArticleByID(int ID);

	public boolean newArticle(Articletable article);

}
