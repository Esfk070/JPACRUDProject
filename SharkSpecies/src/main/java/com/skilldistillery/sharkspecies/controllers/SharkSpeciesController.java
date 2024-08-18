package com.skilldistillery.sharkspecies.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	
	@RequestMapping(path = "create.do", method = RequestMethod.GET)
	public ModelAndView createSharkSpecies(
			@RequestParam("name")String name,
			@RequestParam ("description") String description,
			@RequestParam ("maxLength") Integer maxLength,
			@RequestParam ("maxWeight") Integer maxWeight,
			@RequestParam ("imageUrl") String imageUrl) {
	ModelAndView mv = new ModelAndView();
	System.out.println("!!!!!!!createSharkSpecies from Contoller called!!!!");
	
	SharkSpecies newSharkSpecies = new SharkSpecies();
	newSharkSpecies.setName(name);
	newSharkSpecies.setDescription(description);
	newSharkSpecies.setMaxLength(maxLength);
	newSharkSpecies.setMaxWeight(maxWeight);
	newSharkSpecies.setImageUrl(imageUrl);
	
	sharkDao.create(newSharkSpecies);
	mv.addObject("sharkSpecies",newSharkSpecies);
	mv.setViewName("sharkCreated");
	
	return mv;
		
	
}
	@RequestMapping(path = "update.do", method = RequestMethod.GET)
	public ModelAndView updateSharkSpecies(
			@RequestParam("Id") int Id,
			@RequestParam("name")String name,
			@RequestParam ("description") String description,
			@RequestParam ("maxLength") Integer maxLength,
			@RequestParam ("maxWeight") Integer maxWeight,
			@RequestParam ("imageUrl") String imageUrl) {
	ModelAndView mv = new ModelAndView();
	SharkSpecies sharkSpeciesToUpdate = sharkDao.findById(Id);
	if (sharkSpeciesToUpdate !=null) {
		sharkSpeciesToUpdate.setName(name);
		sharkSpeciesToUpdate.setDescription(description);
		sharkSpeciesToUpdate.setMaxLength(maxLength);
		sharkSpeciesToUpdate.setMaxWeight(maxWeight);
		sharkSpeciesToUpdate.setImageUrl(imageUrl);
		
		sharkDao.update(Id, sharkSpeciesToUpdate);
		mv.addObject("sharkSpecies", sharkSpeciesToUpdate);
		mv.setViewName("sharkCreated");
	}
	
	
	return mv;
		
	
}	
	
}
