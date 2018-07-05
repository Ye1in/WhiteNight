package xin.whitenight.model;

/**
 * Usertable entity. @author MyEclipse Persistence Tools
 */

public class Usertable implements java.io.Serializable {

	// Fields

	private Integer id;
	private String username;
	private String password;
	private String name;
	private Boolean sex;
	private Integer age;

	// Constructors

	/** default constructor */
	public Usertable() {
	}

	/** minimal constructor */
	public Usertable(String username, String password) {
		this.username = username;
		this.password = password;
	}

	/** full constructor */
	public Usertable(String username, String password, String name,
			Boolean sex, Integer age) {
		this.username = username;
		this.password = password;
		this.name = name;
		this.sex = sex;
		this.age = age;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Boolean getSex() {
		return this.sex;
	}

	public void setSex(Boolean sex) {
		this.sex = sex;
	}

	public Integer getAge() {
		return this.age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

}