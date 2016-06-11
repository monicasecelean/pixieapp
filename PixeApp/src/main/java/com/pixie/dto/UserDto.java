package com.pixie.dto;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Value Object representing an User account information
 * 
 * @author Monica
 * 
 */
public abstract class UserDto {

	private long id;
	private AccessDataDto accessData;
	private String firstName;
	private String lastName;
	private String avatarName;
	private AddressDataDto addressData;
	private CommonsMultipartFile fileData;
	private String profilePicture;

	public UserDto() {
	}

	public UserDto(AccessDataDto accessDataData, String firstName,
			String lastName, String avatarName) {
		this.accessData = accessDataData;
		this.firstName = firstName;
		this.lastName = lastName;
		this.avatarName = avatarName;
	}

	public AccessDataDto getAccessData() {
		return accessData;
	}

	public void setAccessData(AccessDataDto accessData) {
		this.accessData = accessData;
	}

	@JsonProperty
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	@JsonProperty
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getAvatarName() {
		return avatarName;
	}

	public void setAvatarName(String avatarName) {
		this.avatarName = avatarName;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public AddressDataDto getAddressData() {
		return addressData;
	}

	public void setAddressData(AddressDataDto contactDetails) {
		this.addressData = contactDetails;
	}

	public CommonsMultipartFile getFileData() {
		return fileData;
	}

	public void setFileData(CommonsMultipartFile fileData) {
		this.fileData = fileData;
	}

	public String getProfilePicture() {
		return profilePicture;
	}

	public void setProfilePicture(String profilePicture) {
		this.profilePicture = profilePicture;
	}
}
