package com.SparePart;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.customer.DBConnect;

public class SparePartDBUtil {

	// instance variables-can be used in any method of the class
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	// insert spare part method
	public static boolean insertSpareParts(String partId, String type, String partName, int quantity, double price) {
		boolean isSuccess = false;

		try {
			// create db connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "INSERT INTO spare_parts VALUES ('" + partId + "', '" + type + "', '" + partName + "', "
					+ quantity + ", " + price + ")";
			int rs = stmt.executeUpdate(sql); // method returns 2 values

			if (rs > 0) {
				isSuccess = true;
			}

			else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();// prints the error
		}

		return isSuccess;
	}

	// update spare part method
	public static boolean updateSpareParts(String partId, String type, String partName, int quantity, double price) {
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update spare_parts set type='" + type + "',partName='" + partName + "',quantity=" + quantity
					+ ",price=" + price + "" + "where partId='" + partId + "'";

			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	// retrieve spare part method
	public static List<SpareParts> getSparePartDetails(String id) {
		ArrayList<SpareParts> spOb = new ArrayList<>();

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM spare_parts WHERE partId='" + id + "'";
			rs = stmt.executeQuery(sql);

			// loop to assign values
			while (rs.next()) {
				String tId = rs.getString(1);
				String type = rs.getString(2);
				String partName = rs.getString(3);
				int quantity = rs.getInt(4);
				double price = rs.getDouble(5);

				SpareParts s = new SpareParts(tId, type, partName, quantity, price);
				spOb.add(s);
			}
		} catch (Exception e) {
			e.printStackTrace(); // prints the error
		}

		return spOb;
	}

	// delete spare part method
	public static boolean deleteSpareParts(String partId) {
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "DELETE FROM spare_parts WHERE partId = '" + partId + "'";
			int r = stmt.executeUpdate(sql);

			if (r > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	// retrieve all spare parts method
	public static List<SpareParts> getAllSparePartDetails() {
		ArrayList<SpareParts> spOb = new ArrayList<>();

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM spare_parts";
			rs = stmt.executeQuery(sql);

			// loop to assign values
			while (rs.next()) {
				String tId = rs.getString(1);
				String type = rs.getString(2);
				String partName = rs.getString(3);
				int quantity = rs.getInt(4);
				double price = rs.getDouble(5);

				SpareParts s = new SpareParts(tId, type, partName, quantity, price);
				spOb.add(s);
			}
		} catch (Exception e) {
			e.printStackTrace(); // prints the error
		}

		return spOb;
	}
}
