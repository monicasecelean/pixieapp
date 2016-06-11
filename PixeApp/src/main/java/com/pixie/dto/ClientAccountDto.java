package com.pixie.dto;

/**
 * DTO for Client Account Information
 * 
 * @author Monica
 *
 */
public class ClientAccountDto extends UserDto {

	private ClientTypeDto type;

	public ClientTypeDto getType() {
		return type;
	}

	public void setType(ClientTypeDto type) {
		this.type = type;
	}

}
