package com.skilldistillery.sharkspecies.dao;

import java.util.List;

import com.skilldistillery.sharkspecies.entities.SharkSpecies;

public interface SharkSpeciesDAO {
	
	SharkSpecies findById(int sharkId);
	List<SharkSpecies> findAll();
	SharkSpecies create (SharkSpecies shark);
	SharkSpecies update(int sharkId, SharkSpecies shark);
	boolean deleteById(int sharkId);	//Return true if deleted
	

}
