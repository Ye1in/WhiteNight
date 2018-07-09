package xin.whitenight.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import xin.whitenight.dao.IMessageDAO;
import xin.whitenight.model.Messagetable;

public class MessageDAO extends HibernateDaoSupport implements IMessageDAO {

	public List getMessageAll() {

		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		Query query = session
				.createQuery("from Messagetable order by time desc");
		List list = query.list();
		session.close();
		return list;

	}

	public boolean setMessage(Messagetable message) {

		try {
			this.getHibernateTemplate().save(message);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
