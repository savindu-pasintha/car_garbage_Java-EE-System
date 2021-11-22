package Business_Logic_Package;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Database_Package.Database;
import Model_Package.Service;

public class Service_Operation extends Database {
	
	public Service_Operation() throws SQLException, ClassNotFoundException {
		super();
	}

	public ArrayList<Service> viewServiceList() throws SQLException{
			ResultSet resultSet = super.read("SELECT id_col , service_type_col , price_col FROM serviceTable");
			ArrayList<Service> serviceArrayList = new ArrayList<Service>();
			if (resultSet != null) {
				while (resultSet.next()) {
					Service obj = new Service();
					obj.setId(resultSet.getInt("id_col"));
					obj.setServiceType(resultSet.getString("service_type_col"));
					obj.setPrice(resultSet.getDouble("price_col"));
					serviceArrayList.add(obj);
				}
			}
			super.conn.close();
			return serviceArrayList ;
	}
	
	
	
	public boolean addService(String serviceType,double price) throws SQLException {
		super.add("INSERT INTO `serviceTable` (`id_col`, `service_type_col`, `price_col`) VALUES (?,?,?)");
		super.pStatment.setString(1, null);
		super.pStatment.setString(2, serviceType);
		super.pStatment.setDouble(3, price);
		return super.executeQuery();
		
	}

	public boolean updateService(String serviceType,double price,int id) throws SQLException {
		super.update("UPDATE `serviceTable` SET `service_type_col`=?, `price_col`=? WHERE `id_col`=?");
		super.pStatment.setString(1, serviceType);
		super.pStatment.setDouble(2, price);
		super.pStatment.setInt(3, id);
		return super.executeQuery();
	}

	public boolean deleteService(int id) throws SQLException {
		super.delete("DELETE FROM `serviceTable` WHERE `id_col`=?");
		super.pStatment.setInt(1,id);
		return super.executeQuery();
	}
	
/*public static void main(String[] args) throws ClassNotFoundException, SQLException {
	System.out.print(new Service_Operation().addService("new service", 122.22));
}
*/
	
	
}
