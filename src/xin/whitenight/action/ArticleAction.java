package xin.whitenight.action;

import java.util.Date;
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

		List list = articleService.getCurrentITT(currentPage, 6);
		Pager pager = new Pager(currentPage, articleService.getTotalsize());
		// Map request = (Map) ActionContext.getContext().get("request");
		// request.put("article", list);
		// request.put("pager", pager);
		Map session = ActionContext.getContext().getSession();
		session.put("articlelist", list);
		session.put("pager", pager);
		return SUCCESS;

	}

	public String getArticleContent() {

		String content = articleService.getArticleByID(article.getId());
		if (content.isEmpty())
			return ERROR;
		article.setContent(content);
		return SUCCESS;

	}

	public String newArticle() {

		article.setTime(new Date().toString());
		if (articleService.newArticle(article))
			return SUCCESS;
		else {
			Map session = ActionContext.getContext().getSession();
			session.put("newarticle", article);
			return ERROR;
		}

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
