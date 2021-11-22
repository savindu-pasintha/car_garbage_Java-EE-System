package Business_Logic_Package;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Database_Package.Database;
import Model_Package.Customer;

public class Customer_Operation extends Database {
		
		public  Customer_Operation() throws SQLException, ClassNotFoundException {
			super();
		}

		public ArrayList<Customer> viewCustomerList() throws SQLException{
				ResultSet resultSet = super.read("SELECT Id, nic, name, telephone, card_no FROM customertable");
				ArrayList<Customer> customerArrayList = new ArrayList<Customer>();
				if (resultSet != null) {
					while (resultSet.next()) {
						Customer obj = new Customer();
						obj.setId(resultSet.getInt("id"));
						obj.setNic(resultSet.getString("nic"));
						obj.setName(resultSet.getString("name"));
						obj.setTelephone(resultSet.getString("telephone"));
						obj.setCardNo(resultSet.getString("card_no"));
						customerArrayList.add(obj);
					}
				}
				super.conn.close();
				return customerArrayList ;
		}
		
		public void getSelectedServiceList() {
			
		}
		
		public boolean addCustomer(String nic,String cardNo,String name,String telephone) throws SQLException {
			super.add("INSERT INTO customertable (Id, nic, name, telephone, card_no) VALUES (?,?,?,?,?)");
			super.pStatment.setLong(1,0); //auto increment
			super.pStatment.setString(2,nic.toString());
			super.pStatment.setString(3,name.toString());	
			super.pStatment.setString(4,telephone.toString());
			super.pStatment.setString(5,cardNo.toString());
			return super.executeQuery();
			
		}

		
		public boolean deleteCustomer(int id) throws SQLException {
			super.delete("DELETE FROM `customertable` WHERE ` nic`=?");
			super.pStatment.setInt(1,id);
			return super.executeQuery();
		}
}
