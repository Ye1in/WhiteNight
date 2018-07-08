package xin.whitenight.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import xin.whitenight.dao.IArticleDAO;
import xin.whitenight.model.Articletable;

public class ArticleDAO extends HibernateDaoSupport implements IArticleDAO {

	public List getCurrentITT(int currentPage, int pageSize) {

		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		Query query = session
				.createQuery("SELECT new xin.whitenight.model.Articletable(id,title,time) from Articletable order by time desc");
		int startRow = (currentPage - 1) * pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List list = query.list();
		session.close();
		return list;

	}

	public int getTotalsize() {

		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		Query query = session.createQuery("SELECT count(*) from Articletable");
		Long result = (Long) query.uniqueResult();
		return result.intValue();

	}

	public String getArticleByID(int ID) {

		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		Query query = session
				.createQuery("SELECT content from Articletable where id=?");
		query.setParameter(0, ID);
		return (String) query.uniqueResult();

	}

	public boolean newArticle(Articletable article) {

		try {
			this.getHibernateTemplate().save(article);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
