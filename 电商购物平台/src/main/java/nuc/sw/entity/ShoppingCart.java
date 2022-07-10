package nuc.sw.entity;

public class ShoppingCart {
	
	private String id;
	private String name;
	private String author;
	private String category;
	private float price;
	private int num;
	private String uid;
	
	public ShoppingCart(String id, String name, String author, String category, float price, int num, String uid) {
		this.id = id;
		this.name = name;
		this.author = author;
		this.category = category;
		this.price = price;
		this.num = num;
		this.uid = uid;
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

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	@Override
	public String toString() {
		return "ShoppingCart [id=" + id + ", name=" + name + ", author=" + author + ", category=" + category
				+ ", price=" + price + ", num=" + num + ", uid=" + uid + "]";
	}
	
}
