// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.team13.club.domain;

import com.team13.club.domain.EquipmentList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect EquipmentList_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager EquipmentList.entityManager;
    
    public static final List<String> EquipmentList.fieldNames4OrderClauseFilter = java.util.Arrays.asList("ename", "amount");
    
    public static final EntityManager EquipmentList.entityManager() {
        EntityManager em = new EquipmentList().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long EquipmentList.countEquipmentLists() {
        return entityManager().createQuery("SELECT COUNT(o) FROM EquipmentList o", Long.class).getSingleResult();
    }
    
    public static List<EquipmentList> EquipmentList.findAllEquipmentLists() {
        return entityManager().createQuery("SELECT o FROM EquipmentList o", EquipmentList.class).getResultList();
    }
    
    public static List<EquipmentList> EquipmentList.findAllEquipmentLists(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM EquipmentList o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, EquipmentList.class).getResultList();
    }
    
    public static EquipmentList EquipmentList.findEquipmentList(Long id) {
        if (id == null) return null;
        return entityManager().find(EquipmentList.class, id);
    }
    
    public static List<EquipmentList> EquipmentList.findEquipmentListEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM EquipmentList o", EquipmentList.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<EquipmentList> EquipmentList.findEquipmentListEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM EquipmentList o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, EquipmentList.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void EquipmentList.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void EquipmentList.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            EquipmentList attached = EquipmentList.findEquipmentList(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void EquipmentList.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void EquipmentList.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public EquipmentList EquipmentList.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        EquipmentList merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}