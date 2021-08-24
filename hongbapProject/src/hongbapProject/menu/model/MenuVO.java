package hongbapProject.menu.model;

public class MenuVO {
	private int bid;
	private String menuName;
	private String menuBook;
	private String menuPrice;
	
	
	
	@Override
	public String toString() {
		return "MenuVO [bid=" + bid + ", menuName=" + menuName + ", menuBook=" + menuBook + ", menuPrice=" + menuPrice
				+ "]";
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuBook() {
		return menuBook;
	}
	public void setMenuBook(String menuBook) {
		this.menuBook = menuBook;
	}
	public String getMenuPrice() {
		return menuPrice;
	}
	public void setMenuPrice(String menuPrice) {
		this.menuPrice = menuPrice;
	}
	
}
