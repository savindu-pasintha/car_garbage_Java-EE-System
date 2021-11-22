package Model_Package;

public class Orders {
	
	private int id=0;
	private String customerId, total, buyDate, selectedItems=null;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(String buyDate) {
		this.buyDate = buyDate;
	}
	public String getSelectedItems() {
		return selectedItems;
	}
	public void setSelectedItems(String selectedItems) {
		this.selectedItems = selectedItems;
	}
	

}
