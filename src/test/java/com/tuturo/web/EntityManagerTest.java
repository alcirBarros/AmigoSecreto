package com.tuturo.web;

import com.futuro.web.entity.Usuario;
import com.futuro.web.infra.JPAUtil;
import javax.persistence.EntityManager;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;


public class EntityManagerTest {
    
    EntityManager entityManager;
    
    public EntityManagerTest() {
        try {
            entityManager = JPAUtil.getEntityManager();
        } catch (Exception ex) {
            System.err.println("Erro");
        }
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

     @Test
     public void hello() {
         Usuario usuario = new Usuario();
         usuario.setNome("alci");
         usuario.setLogin("alcibarros");
         usuario.setPassword("123456");
         entityManager.getTransaction().begin();
         entityManager.persist(usuario);
         entityManager.getTransaction().commit();
     }
}
