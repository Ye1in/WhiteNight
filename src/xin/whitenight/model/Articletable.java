package xin.whitenight.model;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Articletable entity. @author MyEclipse Persistence Tools
 */

public class Articletable implements java.io.Serializable {

	// Fields

	private Integer id;
	private String title;
	private String time;
	private String content;

	// Constructors

	/** default constructor */
	public Articletable() {
	}

	/** my constructor */
	public Articletable(int id, String title, Date time) {
		this.id = id;
		this.title = title;
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		this.time = df.format(time);
	}

	/** minimal constructor */
	public Articletable(String title, Timestamp time) {
		this.title = title;
		this.time = time.toString();
	}

	/** full constructor */
	public Articletable(String title, Timestamp time, String content) {
		this.title = title;
		this.time = time.toString();
		this.content = content;
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

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}