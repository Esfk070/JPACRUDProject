package com.skilldistillery.sharkspecies.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.sharkspecies.entities.SharkSpecies;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class SharkSpeciesDaoImpl implements SharkSpeciesDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public SharkSpecies findById(int sharkId) {
		
		return em.find(SharkSpecies.class, sharkId);
	}

	@Override
	public List<SharkSpecies> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SharkSpecies create(SharkSpecies shark) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SharkSpecies update(int sharkId, SharkSpecies shark) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int sharkId) {
		// TODO Auto-generated method stub
		return false;
	}

}
