package com.pixie.dto;

/**
 * Type describing the Client
 * 
 * @author macbook
 *
 */
public enum ClientTypeDto {
	
	INDIVIDUAL("Individual", "INDIVIDUAL"), BUSINESS("Business", "BUSINESS");

	private final String displayName;
	private final String enumValue;

	private ClientTypeDto(String displayName, String enumValue) {
		this.displayName = displayName;
		this.enumValue = enumValue;
	}

	public String getDisplayName() {
		return displayName;
	}

	public String getEnumValue() {
		return enumValue;
	}

}
