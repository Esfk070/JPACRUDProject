

package com.skilldistillery.sharkspecies.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.sharkspecies.entities.SharkSpecies;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class SharkSpeciesDaoImpl implements SharkSpeciesDAO {
	
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPASharkSpecies");
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public SharkSpecies findById(int sharkId) {
		
		return em.find(SharkSpecies.class, sharkId);
	}

	@Override
	public List<SharkSpecies> findAll() {
		String jpql = "SELECT s FROM SharkSpecies s";
		return em.createQuery(jpql, SharkSpecies.class).getResultList();
	
	}

	@Override
	public SharkSpecies create(SharkSpecies shark) {
		System.out.println();
		System.out.println();
		System.out.println("!!!!!!!!!!!!!!!!!\"IS SHARKSPECIESDAOIMP BEING CALLED!!!!!!!!!!!!!!!");

		System.out.println();
		System.out.println();
		
//		em.getTransaction().begin();		//this one
		
		em.persist(shark);
		
		em.flush();
		
//		em.getTransaction().commit();		//and this one
		
		return shark;
	}

	@Override
	public SharkSpecies update(int sharkId, SharkSpecies shark) {
		
//		em.getTransaction().begin();
		
	
		
		SharkSpecies managedSharkSpecies = em.find(SharkSpecies.class, sharkId);
		
		managedSharkSpecies.setName(shark.getName());
		managedSharkSpecies.setDescription(shark.getDescription());
		managedSharkSpecies.setMaxLength(shark.getMaxLength());
		managedSharkSpecies.setMaxWeight(shark.getMaxWeight());
		managedSharkSpecies.setImageUrl(shark.getImageUrl());
		
		em.persist(managedSharkSpecies);
		
		em.flush();
		
		
		
		
		return managedSharkSpecies;
	}

	@Override
	public boolean deleteById(int sharkId) {
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!deleteById called form DaoImp!!!!!!!!!!!!!!!!!!!!!!!!!!");
		System.out.println();
		System.out.println();
		boolean deleted = false;
		SharkSpecies s = em.find(SharkSpecies.class, sharkId);
		if(s != null) {
			em.remove(s);
			deleted=true;
			
		}
		
		return deleted;
	}

}
