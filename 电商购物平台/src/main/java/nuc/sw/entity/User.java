package nuc.sw.entity;

public class User {
	private String id; // 账号
	private String name; // 姓名
	private String password; // 密码
	private char sex; // 性别
	private String city; // 城市
	private String type; // 用户类型:管理员或普通用户
	private ShoppingCart cart;
	
	public User() {}
	
	public User(String id, String password, String type) {
		super();
		this.id = id;
		this.password = password;
		this.type = type;
	}

	public User(String id, String name, String password, char sex, String city, String type) {
		this.id = id;
		this.name = name;
		this.password = password;
		this.sex = sex;
		this.city = city;
		this.type = type;
	}
	
	public User(String[] userarray){
		this.id = userarray[0];
		this.name = userarray[1];
		this.password = userarray[2];
		this.sex = userarray[3].charAt(0);
		this.city = userarray[4];
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public char getSex() {
		return sex;
	}

	public void setSex(char sex) {
		this.sex = sex;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	public ShoppingCart getCart() {
		return cart;
	}

	public void setCart(ShoppingCart cart) {
		this.cart = cart;
	}

	@Override
	public String toString() {
		return id + ":" + name + ":" + password + ":" + sex + ":" + city + ":" + type + "\n";
	}
	
}
