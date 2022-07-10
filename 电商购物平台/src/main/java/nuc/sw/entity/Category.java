package nuc.sw.entity;
/**
 * 
 * @author wangruiqing
 * @description 电商购物平台实体类:书籍类目
 * @version 1.0
 * 
 */
public class Category {
    private String id; // 编号
    private String firstLevel; // 一级目录
    private String secondLevel; // 二级目录
    
    
	public Category(String id) {
		this.id = id;
	}
	
	public Category(String id, String firstLevel, String secondLevel) {
		super();
		this.id = id;
		this.firstLevel = firstLevel;
		this.secondLevel = secondLevel;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFirstLevel() {
		return firstLevel;
	}

	public void setFirstLevel(String firstLevel) {
		this.firstLevel = firstLevel;
	}

	public String getSecondLevel() {
		return secondLevel;
	}

	public void setSecondLevel(String secondLevel) {
		this.secondLevel = secondLevel;
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", firstLevel=" + firstLevel + ", secondLevel=" + secondLevel + "]";
	}
}
