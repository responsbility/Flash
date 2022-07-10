package nuc.sw.entity;

public class Book {
	private String bid; // 编号
    private String name; // 书名
    private String author; // 作者
    private float price; // 价格
    private int num; // 库存
    private String category; // 书籍类目
    
    public Book() {}

	public Book(String bid, String name, String author, float price, int num, String category) {
		super(); // 调用父类Object的无参构造方法，可以省略
		this.bid = bid;
		this.name = name;
		this.author = author;
		this.price = price;
		this.num = num;
		this.category = category;
	}
	
	public Book(String[] bookarray){
		this.bid = bookarray[0];
		this.name = bookarray[1];
		this.author = bookarray[2];
		this.price = Float.parseFloat(bookarray[3]);
		this.num = Integer.parseInt(bookarray[4]);
		this.category = bookarray[5];
	}

	public String getId() {
		return bid;
	}

	public void setId(String bid) {
		this.bid = bid;
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return bid + ":" + name + ":" + author + ":" + price + ":" + num + ":" + category + "\n";
	}

}
