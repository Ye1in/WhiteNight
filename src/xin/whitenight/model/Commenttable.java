package xin.whitenight.model;

import java.sql.Timestamp;
import java.util.Date;

/**
 * Commenttable entity. @author MyEclipse Persistence Tools
 */

public class Commenttable implements java.io.Serializable {

	// Fields

	private Integer id;
	private Usertable usertable;
	private Articletable articletable;
	private String comment;
	private Timestamp time;

	// Constructors

	/** default constructor */
	public Commenttable() {
	}

	/** my constructor */

	public Commenttable(int id, String comment, Usertable usertable, Date time) {
		this.id = id;
		this.comment = comment;
		this.usertable = usertable;
		this.time = new Timestamp(time.getTime());
	}

	/** full constructor */
	public Commenttable(Usertable usertable, Articletable articletable,
			String comment, Timestamp time) {
		this.usertable = usertable;
		this.articletable = articletable;
		this.comment = comment;
		this.time = time;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Usertable getUsertable() {
		return this.usertable;
	}

	public void setUsertable(Usertable usertable) {
		this.usertable = usertable;
	}

	public Articletable getArticletable() {
		return this.articletable;
	}

	public void setArticletable(Articletable articletable) {
		this.articletable = articletable;
	}

	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

}