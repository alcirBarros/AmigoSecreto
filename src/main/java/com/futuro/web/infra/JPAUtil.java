package com.futuro.web.infra;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAUtil {
    
    public static final String FUTURO_DB = "futurodb";

    private static final EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory(FUTURO_DB);

    public static EntityManager getEntityManager() throws Exception {
        try {
            return entityManagerFactory.createEntityManager();
        } catch (Exception e) {
            throw new Exception(e);
        }
    }
}
