package Business_Logic_Package;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Database_Package.Database;
import Model_Package.Orders;

public class Order_Operation extends Database {

	public Order_Operation() throws SQLException, ClassNotFoundException {
		super();
	}
	
	public ArrayList<Orders> viewAllOrderList() throws SQLException{
		ResultSet resultSet = super.read("SELECT id, customer_id, total, selectedServicesId, buyDate FROM orders");
		ArrayList<Orders> orderArrayList = new ArrayList<Orders>();
		if (resultSet != null) {
			while (resultSet.next()) {
				Orders obj = new Orders();
				obj.setId(resultSet.getInt("id"));
				obj.setCustomerId(resultSet.getString("customer_id"));
				obj.setSelectedItems(resultSet.getString("selectedServicesId"));
				obj.setTotal(resultSet.getString("total"));
				obj.setBuyDate(resultSet.getString("buyDate"));
				orderArrayList.add(obj);
			}
		}
		super.conn.close();
		return orderArrayList ;
}

public void getSelectedServiceList() {
	
}

public boolean addOrder(String customerId,String total,String selectedServices) throws SQLException {
	super.add("INSERT INTO  `orders`(`id`, `customer_id`, `total`, `selectedServicesId`, `buyDate`)  VALUES (?,?,?,?,?)");
	super.pStatment.setLong(1,0); //auto increment
	super.pStatment.setString(2,customerId.toString());
	super.pStatment.setString(3,total.toString());	
	super.pStatment.setString(4,selectedServices.toString());
	super.pStatment.setString(5,null);
	return super.executeQuery();
	
}

public boolean deleteOrder(int id) throws SQLException {
	super.delete("DELETE FROM  `orders` WHERE `customer_id`=?");
	super.pStatment.setInt(1,id);
	return super.executeQuery();
}


}
