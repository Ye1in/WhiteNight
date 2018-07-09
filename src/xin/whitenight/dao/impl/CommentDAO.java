package xin.whitenight.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import xin.whitenight.dao.ICommentDAO;
import xin.whitenight.model.Commenttable;

public class CommentDAO extends HibernateDaoSupport implements ICommentDAO {

	public List getCommentByArticleID(Integer id) {

		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		// Query query = session
		// .createQuery("from Commenttable c where c.articletable.id=?");
		// SELECT new xin.whitenight.model.Commenttable(id,comment,new
		// xin.whitenight.model.Usertable(c.usertable.username,c.usertable.name),time)
		Query query = session
				.createQuery("from Commenttable c where c.articletable.id=? order by time desc");
		query.setParameter(0, id);
		List<Commenttable> list = query.list();
		session.close();
		return list;
	}

	public boolean newcomment(Commenttable comment) {

		try {
			this.getHibernateTemplate().save(comment);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
