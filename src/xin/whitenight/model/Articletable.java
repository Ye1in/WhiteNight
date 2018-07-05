package xin.whitenight.model;

import java.sql.Timestamp;

/**
 * Articletable entity. @author MyEclipse Persistence Tools
 */

public class Articletable implements java.io.Serializable {

	// Fields

	private Integer id;
	private String title;
	private Timestamp time;
	private String content;

	// Constructors

	/** default constructor */
	public Articletable() {
	}

	/** my constructor */
	public Articletable(int id, String title) {
		this.id = id;
		this.title = title;
	}

	/** minimal constructor */
	public Articletable(String title, Timestamp time) {
		this.title = title;
		this.time = time;
	}

	/** full constructor */
	public Articletable(String title, Timestamp time, String content) {
		this.title = title;
		this.time = time;
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

}