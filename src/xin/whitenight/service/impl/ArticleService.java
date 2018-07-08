package xin.whitenight.service.impl;

import java.util.List;
import xin.whitenight.dao.IArticleDAO;
import xin.whitenight.model.Articletable;
import xin.whitenight.service.IArticleService;

public class ArticleService implements IArticleService {

	private IArticleDAO articleDAO;

	public List getCurrentITT(int currentPage, int pageSize) {

		return articleDAO.getCurrentITT(currentPage, pageSize);

	}

	public String getArticleByID(int ID) {

		return articleDAO.getArticleByID(ID);

	}

	public boolean newArticle(Articletable article) {
		return articleDAO.newArticle(article);
	}

	public int getTotalsize() {

		return articleDAO.getTotalsize();

	}

	public void setArticleDAO(IArticleDAO articleDAO) {
		this.articleDAO = articleDAO;
	}

}
