package com.FuelTank;

public class FuelTank {
	
	private int tankID;
	private double tankCapacity;
	private double currentCapacity;
	private String refilledDate;
	private String estimatedRefillDate;
	private String fuelType;
	
	//default constructor
	public FuelTank(int tankID, double tankCapacity, double currentCapacity, String refilledDate, String estimatedRefillDate, String fuelType) {

		this.tankID = tankID;
		this.tankCapacity = tankCapacity;
		this.currentCapacity = currentCapacity;
		this.refilledDate = refilledDate;
		this.estimatedRefillDate = estimatedRefillDate;
		this.fuelType = fuelType;
	}

	public int getTankID() {
		return tankID;
	}

	public double getTankCapacity() {
		return tankCapacity;
	}

	public double getCurrentCapacity() {
		return currentCapacity;
	}

	public String getRefilledDate() {
		return refilledDate;
	}

	public String getEstimatedRefillDate() {
		return estimatedRefillDate;
	}

	public String getFuelType() {
		return fuelType;
	}
	
	
	
	
	
	//Getters 
	

	
	
	
	
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

