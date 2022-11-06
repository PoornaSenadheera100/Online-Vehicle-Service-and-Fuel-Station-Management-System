package com.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.DBConnect;

public class serviceDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;
	
	
	//insert values to the DB
	//returns a boolean value to show if data values were inserted or not.
	public static boolean insertservicedetails(String name, String vehNum, String model, String date, String email) {
	//PARAMETERS INSIDE ----> Data passed from the servlet is caught here.
		
		/*can prevent system crashes*/
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
		    String sql = "insert into servicedetails values (0,'"+name+"','"+vehNum+"','"+model+"','"+date+"','"+email+"')";
		    /* id is set to autoIncrement, therefore it is put to "0"*/
		    
		    int rs = stmt.executeUpdate(sql);
		    /*"execute method only supports select queries*/
			/*Have to use "executeUpdate()" method when entering insert, delete and update entries*/
			
		    if(rs > 0) {
		    	//execute update returns 2 values(0,1). 1-->insert query is successful. 0--->unsuccessful values insertion.
				//check if rs variable greater than 0.
				isSuccess = true;
			} else {
				//if value is 0, then it becomes false, as values not inserted successfully.
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
			//prints the error.
		}
		
		return isSuccess;
	}
	
	
	
	
	
	
	public static List<service> getRequestDetails(String username) {
	    	
	    	
	    	ArrayList<service> service = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from servicedetails where Email='"+username+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			String serviceID = rs.getString(1);
	    			String serviceName = rs.getString(2);
	    			String vehilceNo = rs.getString(3);
	    			String model = rs.getString(4);
	    			String appointmentDate = rs.getString(5);
	    			String email = rs.getString(6);
	    			
	    			int id = Integer.parseInt(serviceID);
	    			
	    			
	    			service s = new service(id,serviceName,vehilceNo,model,appointmentDate,email);
	    			service.add(s);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return service;	
	    }
	
	
	
	
	
	//should pass the values as parameters ---> whatever that is needed to be updated
	public static boolean updateRequest(String serviceID, String serviceName, String vehicleNum, String model, String date, String email) {
    	int ID = Integer.parseInt(serviceID);
		
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		
    		//use the update sql query here
    		String sql = "update servicedetails set ServiceName='"+serviceName+"',VehicleNum='"+vehicleNum+"',Model='"+model+"',AppointmentDate='"+date+"'"
    				+ " where ServiceID="+ID;
    		//what you have to update ---> use it after "set", id is not updated.
    		//assign the parameters passed, to the variables
    		//where -> where do u want to update it. --> of the specific id.
    		
    		int rs = stmt.executeUpdate(sql);
    		//1 ---> update success.
    		//0 ---> fail
    		
    		if(rs > 0) {
    			isSuccess = true;
    			//1 is > 0 so it returns success.
    		}
    		else {
    			isSuccess = false;
    			//if value is not 1 so it returns fail.
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
	
	
	
	
	
	
	public static boolean deleteRequest(String serviceID) {
	//returns a boolean value.
    	
    	try {
    		//make the connection
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		
    		//converts the service id to integer
    		int sID = Integer.parseInt(serviceID);
    		
    		//query to delete --> where condition --> which record to delete it.
    		String sql = "delete from servicedetails where ServiceID='"+sID+"'";
    		int r = stmt.executeUpdate(sql);
    		//execute the query specified.
    		
    		
    		if (r > 0) {
    			//if its 1 --> success deletion
    			isSuccess = true;
    		}
    		else {
    			//if its 0 ---> unsuccessful deletion
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
	
	
	
	
	
	public static List<service> getAllRequestDetails() {
	//returns all details of the service in a list
    	
    	ArrayList<service> service = new ArrayList<>();
    	//makes an array list that holds all the values in the list created.
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		
    		//sql query --> select all details of the customer.
    		String sql = "select * from servicedetails";
    		
    		rs = stmt.executeQuery(sql);
    		//executes the query and stores it in a variable called "rs"
    		
    		while(rs.next()) {
    			//gets all the values from the column fields to specific variables.
    			String serviceID = rs.getString(1);
    			String serviceName = rs.getString(2);
    			String vehilceNo = rs.getString(3);
    			String model = rs.getString(4);
    			String appointmentDate = rs.getString(5);
    			String email = rs.getString(6);
    			
    			int id = Integer.parseInt(serviceID);
    			//converts the id to string.
    			
    			service s = new service(id,serviceName,vehilceNo,model,appointmentDate,email);
    			//create a service object.
    			service.add(s);
    			//add it to the array list object
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return service;	
    }
	
	
	
	
	
	
	
	
	
	

}
