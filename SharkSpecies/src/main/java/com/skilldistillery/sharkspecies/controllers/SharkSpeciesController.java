package com.skilldistillery.sharkspecies.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.sharkspecies.dao.SharkSpeciesDAO;
import com.skilldistillery.sharkspecies.entities.SharkSpecies;



@Controller
public class SharkSpeciesController {
	
	@Autowired
	private SharkSpeciesDAO sharkDao;
	
	
	@RequestMapping(path = {"/", "home.do"})
	public String home(Model model) {
		List<SharkSpecies> allSpecies = sharkDao.findAll();
		model.addAttribute("sharkSpecies",allSpecies );
		return "home";
	}
}
