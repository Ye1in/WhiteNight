package xin.whitenight.action;

import java.util.List;
import java.util.Map;
import xin.whitenight.model.Articletable;
import xin.whitenight.service.IArticleService;
import xin.whitenight.tool.Pager;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ArticleAction extends ActionSupport {

	protected Articletable article;
	protected IArticleService articleService;
	private int currentPage = 1;

	public String getArticlelist() {

		List list = articleService.getCurrentIT(currentPage, 6);
		Pager pager = new Pager(currentPage, articleService.getTotalsize());
		// Map request = (Map) ActionContext.getContext().get("request");
		// request.put("article", list);
		// request.put("pager", pager);
		Map session = ActionContext.getContext().getSession();
		session.put("article", list);
		session.put("pager", pager);
		return SUCCESS;

	}

	public Articletable getArticle() {
		return article;
	}

	public void setArticle(Articletable article) {
		this.article = article;
	}

	public void setArticleService(IArticleService articleService) {
		this.articleService = articleService;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

}
