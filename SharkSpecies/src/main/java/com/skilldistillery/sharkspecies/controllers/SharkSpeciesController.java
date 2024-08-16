package com.skilldistillery.sharkspecies.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.sharkspecies.dao.SharkSpeciesDAO;

import ch.qos.logback.core.model.Model;

@Controller
public class SharkSpeciesController {
	
	@Autowired
	private SharkSpeciesDAO sharkDao;
	
	
	@RequestMapping(path = {"/", "home.do"})
	public String home(Model model) {
		return "home";
	}
}
