package xin.whitenight.model;

import java.sql.Timestamp;

/**
 * Messagetable entity. @author MyEclipse Persistence Tools
 */

public class Messagetable implements java.io.Serializable {

	// Fields

	private Integer id;
	private Usertable usertable;
	private String message;
	private Timestamp time;

	// Constructors

	/** default constructor */
	public Messagetable() {
	}

	/** full constructor */
	public Messagetable(Usertable usertable, String message, Timestamp time) {
		this.usertable = usertable;
		this.message = message;
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

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

}