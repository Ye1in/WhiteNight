package xin.whitenight.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import xin.whitenight.dao.IUserDAO;
import xin.whitenight.model.Usertable;

public class UserDAO extends HibernateDaoSupport implements IUserDAO {

	public Usertable select(String username, String password) {

		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		Query query = session
				.createQuery("from Usertable where username=? and password=?");
		query.setParameter(0, username);
		query.setParameter(1, password);
		Usertable user = (Usertable) query.uniqueResult();
		session.close();
		return user;
	}

	public boolean regist(Usertable user) {

		try {
			this.getHibernateTemplate().save(user);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
