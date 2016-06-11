package com.pixie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomePageController {

	private static final String HOME_PAGE = "/index";

	@RequestMapping(value="/", method = RequestMethod.GET)
	public String loadHomePage(Model model) {
		model.addAttribute("currentPage", "index");
//		TODO add galleries
//		TODO add a section with the latest registered photographers
		return HOME_PAGE;
	}

}
