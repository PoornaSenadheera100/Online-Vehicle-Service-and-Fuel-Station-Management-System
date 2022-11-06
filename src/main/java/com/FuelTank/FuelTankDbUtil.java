package com.FuelTank;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.ResultSet;
import com.customer.DBConnect;

public class FuelTankDbUtil {
	
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	public static boolean AddFuelTank (double TankCapacity,double CurrentTankCapacity,String RefilledDate,String EstimatedrefillDate,String FuelType){

	boolean isSuccess =false;
	
	try {
		
		con=DBConnect.getConnection();
		stmt=con.createStatement();
		String sql="insert into fuel_tank values (0, "+TankCapacity+", "+CurrentTankCapacity+", '"+RefilledDate+"', '"+EstimatedrefillDate+"', '"+FuelType+"')";
		int rs= stmt.executeUpdate(sql);
		
		if(rs>0) {
			isSuccess=true;
		}else {
			isSuccess=false;
		}
	
	}
	catch (Exception e){
		e.printStackTrace();
		
	}
	
	return isSuccess;
	}


	public static boolean updateFuelTank(int TankID,double TankCapacity,double CurrentTankCapacity,String RefilledDate,String EstimatedrefillDate,String FuelType)
	{
	boolean isSuccess =  false;
	
	try {
		con=DBConnect.getConnection();
		stmt=con.createStatement();
		String sql="update fuel_tank set TankCapacity="+TankCapacity+", CurrentCapacity="+CurrentTankCapacity+", RefilledDate='"+RefilledDate+"', EstimateRefilledDate='"+EstimatedrefillDate+"', FuelType='"+FuelType+"' where TankID="+TankID;
	
        int rs = stmt.executeUpdate(sql);
		
		if(rs>0) {
			isSuccess=true;
		}else {
			isSuccess=false;
		}
	}catch (Exception e){
		e.printStackTrace();
		
	}
				
	return isSuccess;
	}
	


public static List<FuelTank> getTankDetails(String TankID){
	int convertedTankID=Integer.parseInt(TankID);
	
	ArrayList<FuelTank> Fuel= new ArrayList <>();
	try {
		con=DBConnect.getConnection();
		stmt=con.createStatement();
		String sql="select * from fuel_tank where TankID='"+convertedTankID+"'";
		rs=stmt.executeQuery(sql);
		
		while (rs.next()) {
			
			int TID=rs.getInt(1);
			double TankCapacity=rs.getDouble(2);
			double CurrentCapacity=rs.getDouble(3);
			String RefilledDate=rs.getString(4);
			String EstimatedRefilledDate=rs.getString(5);
			String FuelType=rs.getString(6);
			
			
			FuelTank F=new FuelTank(TID,TankCapacity,CurrentCapacity,RefilledDate,EstimatedRefilledDate,FuelType);
			Fuel.add(F);
			
		}
	
	}
	catch (Exception e){
		
		e.printStackTrace();
		
	}
	return Fuel;
}

public static boolean RemoveFuelTank (String TankID) {
	int convId=Integer.parseInt(TankID);
	
	boolean isSuccess = false;
	try {
		con=DBConnect.getConnection();
		stmt=con.createStatement();
		String sql= "delete from fuel_tank where TankID="+convId;
		int r=stmt.executeUpdate(sql);
		
		if (r>0) {
			isSuccess=true;
			
		}
		else {
			isSuccess=false;
		}
		
	}catch (Exception e) {
		e.printStackTrace();
	}

return isSuccess;

	


	}






public static List<FuelTank> getAllTankDetails(){
	
	ArrayList<FuelTank> Fuel= new ArrayList <>();
	try {
		con=DBConnect.getConnection();
		stmt=con.createStatement();
		String sql="select * from fuel_tank";
		rs=stmt.executeQuery(sql);
		
		while (rs.next()) {
			
			int TankID=rs.getInt(1);
			double TankCapacity=rs.getDouble(2);
			double CurrentCapacity=rs.getDouble(3);
			String RefilledDate=rs.getString(4);
			String EstimatedRefilledDate=rs.getString(5);
			String FuelType=rs.getString(6);
			
			FuelTank tank=new FuelTank(TankID,TankCapacity,CurrentCapacity,RefilledDate,EstimatedRefilledDate,FuelType);
			Fuel.add(tank);
			
		}
	
	}
	catch (Exception e){
		
		e.printStackTrace();
		
	}
	return Fuel;
}






}


