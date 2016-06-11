package com.pixie.controller;

import java.io.File;
import java.sql.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**
 * Generic Controller for all Controller classes
 * 
 * @author Monica
 *
 */
public abstract class GenericController {

	protected String currentPage = "";
	protected final String REDIRECT = "redirect:";

	private static final Logger logger = LoggerFactory
			.getLogger(GenericController.class);

	/**
	 * Populates the given model with the given message
	 * 
	 * @param model
	 *            model to be populated
	 * @param message
	 *            message to be displayed
	 * @param returnPage
	 *            page to be displayed
	 * @return page to be displayed
	 */
	public String populateModelWithMessage(Model model, String message,
			String returnPage) {
		model.addAttribute("message", message);
		logger.info(message);
		return returnPage;
	}

	/**
	 * Populates the given model with the given success message
	 * 
	 * @param model
	 *            model to be populated
	 * @param message
	 *            message to be displayed
	 * @param returnPage
	 *            page to be displayed
	 * @return page to be displayed
	 */
	public String populateModelWithSuccessMessage(Model model, String message,
			String returnPage) {
		model.addAttribute("successMessage", message);
		logger.info(message);
		return returnPage;
	}

	/**
	 * Populates the given model with the given error message
	 * 
	 * @param model
	 *            model to be populated
	 * @param message
	 *            message to be displayed
	 * @param returnPage
	 *            page to be displayed
	 * @return page to be displayed
	 */
	public String populateModelWithErrorMessage(Model model, String message,
			String returnPage) {
		model.addAttribute("message", message);
		logger.error(message);
		return returnPage;
	}

	/**
	 * Uploads the file given to the specified path
	 * 
	 * @param path
	 *            path to upload the file
	 * @param file
	 *            file to be uploaded
	 * @param model
	 *            model to be populated with error message, if needed
	 * @param page
	 *            page to be populated with error message
	 */
	public void uploadFile(String path, CommonsMultipartFile file, Model model,
			String page) {
		if (file != null) {
			if (!file.isEmpty()) {
				try {
					file.transferTo(new File(path + "/"
							+ file.getOriginalFilename().trim()));
					logger.info("Successfully uploaded file with location"
							+ path + file.getOriginalFilename().trim());
				} catch (Exception e) {
					logger.error("You failed to upload "
							+ file.getOriginalFilename().trim() + "because of "
							+ e.getMessage());
					populateModelWithErrorMessage(model,
							"You failed to upload "
									+ file.getOriginalFilename().trim()
									+ "because of " + e.getMessage(), page);
				}
			}
		}
	}

	/**
	 * Checks for errors is the given {@link BindingResult}
	 * 
	 * @param result
	 *            result to be checked for errors
	 */
	protected void checkForErrors(BindingResult result) {
		if (result.hasErrors()) {
			for (ObjectError error : result.getAllErrors()) {
				logger.error(error.getDefaultMessage());
			}
		}
	}

	/**
	 * Returns the current date as sql Date
	 * 
	 * @return current date
	 */
	public Date getCurrentDate() {
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		return sqlDate;
	}

}
