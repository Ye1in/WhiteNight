package xin.whitenight.dao.impl;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import xin.whitenight.dao.IArticleDAO;
import xin.whitenight.model.Usertable;

public class ArticleDAO extends HibernateDaoSupport implements IArticleDAO {

	public List getCurrentIT(int currentPage, int pageSize) {

		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		Query query = session
				.createQuery("select new xin.whitenight.model.Articletable(id,title) from Articletable order by time desc");
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
}
