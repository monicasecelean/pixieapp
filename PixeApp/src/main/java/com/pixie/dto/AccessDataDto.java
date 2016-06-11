package com.pixie.dto;

/**
 * Value Object of the {@link AccessData} model class
 * 
 * @author Monica
 * 
 */
public class AccessDataDto {

	private String username;
	private String password;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
