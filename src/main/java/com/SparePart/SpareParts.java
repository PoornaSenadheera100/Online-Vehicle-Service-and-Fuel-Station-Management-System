package com.SparePart;

public class SpareParts {
	private String partId, type, partName;
	private int quantity;
	private double price;

	// default constructor
	public SpareParts(String partId, String type, String partName, int quantity, double price) {
		this.partId = partId;
		this.type = type;
		this.partName = partName;
		this.quantity = quantity;
		this.price = price;
	}

	// getters
	public String getPartId() {
		return partId;
	}

	public String getType() {
		return type;
	}

	public String getPartName() {
		return partName;
	}

	public int getQuantity() {
		return quantity;
	}

	public double getPrice() {
		return price;
	}

}
