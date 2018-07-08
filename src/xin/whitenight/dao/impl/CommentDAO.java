package xin.whitenight.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import xin.whitenight.dao.ICommentDAO;
import xin.whitenight.model.Commenttable;

public class CommentDAO extends HibernateDaoSupport implements ICommentDAO {

	public List getCommentByArticleID(int id) {

		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		Query query = session
				.createQuery("from Commenttable c where c.articletable.id=?");
		query.setParameter(0, id);
		List list = query.list();
		session.close();
		return list;

	}

}
