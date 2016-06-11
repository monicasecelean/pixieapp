package com.pixie.dto;

/**
 * Value Object of the {@link ContactDetails} model class
 * 
 * @author Monica
 * 
 */
public class AddressDataDto {

	private String city;
	private String phoneNumber;
	private String addressLine;
	private String zipCode;
	private String country;

	public AddressDataDto() {
	}

	public AddressDataDto(String town, String phoneNumber, String addressLine,
			String country, String zipCode) {
		this.city = town;
		this.phoneNumber = phoneNumber;
		this.addressLine = addressLine;
		this.country = country;
		this.zipCode = zipCode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String town) {
		this.city = town;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddressLine() {
		return addressLine;
	}

	public void setAddressLine(String addressLine) {
		this.addressLine = addressLine;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
}
