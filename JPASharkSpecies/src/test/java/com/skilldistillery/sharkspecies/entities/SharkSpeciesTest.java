package com.skilldistillery.sharkspecies.entities;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class SharkSpeciesTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private SharkSpecies shark;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPASharkSpecies");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		shark = em.find(SharkSpecies.class,1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		shark = null;
	}

	@Test
	void test_SharkSpecies_entity_mapping() {
		assertNotNull(shark);
		assertEquals("Great White Shark", shark.getName());
	
	}
	
	


}
