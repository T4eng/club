// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.team13.club.domain;

import com.team13.club.domain.Loneequipment;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Loneequipment_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Loneequipment.entityManager;
    
    public static final List<String> Loneequipment.fieldNames4OrderClauseFilter = java.util.Arrays.asList("members", "Equiment", "amount", "dates", "returndates");
    
    public static final EntityManager Loneequipment.entityManager() {
        EntityManager em = new Loneequipment().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Loneequipment.countLoneequipments() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Loneequipment o", Long.class).getSingleResult();
    }
    
    public static List<Loneequipment> Loneequipment.findAllLoneequipments() {
        return entityManager().createQuery("SELECT o FROM Loneequipment o", Loneequipment.class).getResultList();
    }
    
    public static List<Loneequipment> Loneequipment.findAllLoneequipments(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Loneequipment o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Loneequipment.class).getResultList();
    }
    
    public static Loneequipment Loneequipment.findLoneequipment(Long id) {
        if (id == null) return null;
        return entityManager().find(Loneequipment.class, id);
    }
    
    public static List<Loneequipment> Loneequipment.findLoneequipmentEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Loneequipment o", Loneequipment.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Loneequipment> Loneequipment.findLoneequipmentEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Loneequipment o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Loneequipment.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Loneequipment.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Loneequipment.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Loneequipment attached = Loneequipment.findLoneequipment(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Loneequipment.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Loneequipment.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Loneequipment Loneequipment.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Loneequipment merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
