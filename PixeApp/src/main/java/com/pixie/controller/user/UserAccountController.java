package com.pixie.controller.user;

import java.util.Arrays;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

import com.pixie.controller.EndpointUrl;
import com.pixie.controller.GenericController;
import com.pixie.dto.AccessDataDto;
import com.pixie.dto.ClientAccountDto;
import com.pixie.dto.ClientTypeDto;
import com.pixie.session.SessionAttributes;

@Controller
public class UserAccountController extends GenericController {

	private static final Logger logger = LoggerFactory
			.getLogger(UserAccountController.class);

	// TODO gather all page names in a common class maybe ?
	private static final String REGISTER_CLIENT_PAGE = "/registerClient";
	private static final String CLIENT_ACCOUNT_PAGE = "/clientAccount";
	private static final String LOGIN_PAGE = "userLogin";
	private static final String LOGIN_DATA = "loginData";

	@Autowired
	private RestTemplate restTemplate;

	@RequestMapping(value = "/registerClient", method = RequestMethod.GET)
	public String loadRegisterClientPage(Model model) {
		logger.info("Loading Register Client Page");
		model.addAttribute("clientData", new ClientAccountDto());
		model.addAttribute("availableClientTypes",
				Arrays.asList(ClientTypeDto.INDIVIDUAL, ClientTypeDto.BUSINESS));
		return REGISTER_CLIENT_PAGE;
	}

	@RequestMapping(value = "/registerClient", method = RequestMethod.POST)
	public String registerClient(@ModelAttribute ClientAccountDto clientData,
			BindingResult result, Model model, HttpSession session) {
		checkForErrors(result);

		// TODO: update profile picture
		// TODO: register user (save to database)

		try {
			restTemplate.postForLocation(EndpointUrl.REGISTER_CLIENT,
					clientData, ClientAccountDto.class);
		} catch (HttpClientErrorException e) {
			logger.error("Client Registration not successful:  "
					+ e.getResponseBodyAsString());
			// TODO notify user about error/ error message on page
			return REDIRECT + REGISTER_CLIENT_PAGE;
		}

		session.setAttribute(SessionAttributes.CURRENT_USER_NAME, clientData
				.getAccessData().getUsername());
		session.setAttribute(SessionAttributes.IS_LOGGED_IN, true);
		// TODO: if success
		// return populateModelWithMessage(model,
		// "Successfully saved client with userName: "
		// + clientData.getAccessDataData().getUsername(),
		// REDIRECT + CLIENT_ACCOUNT_PAGE);
		// else
		// return populateModelWithErrorMessage(model, e.getMessage(),
		// REGISTER_CLIENT_PAGE);
		return REDIRECT + CLIENT_ACCOUNT_PAGE;
	}

	@RequestMapping(value = "/clientAccount", method = RequestMethod.GET)
	public String loadClientAccountPage(Model model, HttpSession session) {
		if (session.getAttribute(SessionAttributes.IS_LOGGED_IN) != null) {
			// TODO: review logic, store only user name per session
			String userName = (String) session
					.getAttribute(SessionAttributes.CURRENT_USER_NAME);
			// TODO: get user for userName, populate page model with it
			logger.info("Loading Client Account Page for client with username "
					+ userName);
			// TODO: retrieve events for client
			return CLIENT_ACCOUNT_PAGE;
		} else {
			model.addAttribute(LOGIN_DATA, new AccessDataDto());
			return REDIRECT + LOGIN_PAGE;
		}

	}
}
