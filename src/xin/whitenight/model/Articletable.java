package xin.whitenight.model;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Articletable entity. @author MyEclipse Persistence Tools
 */

public class Articletable implements java.io.Serializable {

	// Fields

	private Integer id;
	private String title;
	private Timestamp time;
	private String content;
	private Set commenttables = new HashSet(0);

	// Constructors

	/** default constructor */
	public Articletable() {
	}

	/** my constructor */
	public Articletable(int id, String title, Date time) {
		this.id = id;
		this.title = title;
		this.time = new Timestamp(time.getTime());
		// SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		// this.time = df.format(time);
	}

	/** minimal constructor */
	public Articletable(String title, Timestamp time) {
		this.title = title;
		this.time = time;
	}

	/** full constructor */
	public Articletable(String title, Timestamp time, String content,
			Set commenttables) {
		this.title = title;
		this.time = time;
		this.content = content;
		this.commenttables = commenttables;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Set getCommenttables() {
		return this.commenttables;
	}

	public void setCommenttables(Set commenttables) {
		this.commenttables = commenttables;
	}

}