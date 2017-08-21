// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.team13.club.domain;

import com.team13.club.domain.PurchaseEquipment;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect PurchaseEquipment_Roo_Finder {
    
    public static Long PurchaseEquipment.countFindPurchaseEquipmentsBySlipidLike(String slipid) {
        if (slipid == null || slipid.length() == 0) throw new IllegalArgumentException("The slipid argument is required");
        slipid = slipid.replace('*', '%');
        if (slipid.charAt(0) != '%') {
            slipid = "%" + slipid;
        }
        if (slipid.charAt(slipid.length() - 1) != '%') {
            slipid = slipid + "%";
        }
        EntityManager em = PurchaseEquipment.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM PurchaseEquipment AS o WHERE LOWER(o.slipid) LIKE LOWER(:slipid)", Long.class);
        q.setParameter("slipid", slipid);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<PurchaseEquipment> PurchaseEquipment.findPurchaseEquipmentsBySlipidLike(String slipid) {
        if (slipid == null || slipid.length() == 0) throw new IllegalArgumentException("The slipid argument is required");
        slipid = slipid.replace('*', '%');
        if (slipid.charAt(0) != '%') {
            slipid = "%" + slipid;
        }
        if (slipid.charAt(slipid.length() - 1) != '%') {
            slipid = slipid + "%";
        }
        EntityManager em = PurchaseEquipment.entityManager();
        TypedQuery<PurchaseEquipment> q = em.createQuery("SELECT o FROM PurchaseEquipment AS o WHERE LOWER(o.slipid) LIKE LOWER(:slipid)", PurchaseEquipment.class);
        q.setParameter("slipid", slipid);
        return q;
    }
    
    public static TypedQuery<PurchaseEquipment> PurchaseEquipment.findPurchaseEquipmentsBySlipidLike(String slipid, String sortFieldName, String sortOrder) {
        if (slipid == null || slipid.length() == 0) throw new IllegalArgumentException("The slipid argument is required");
        slipid = slipid.replace('*', '%');
        if (slipid.charAt(0) != '%') {
            slipid = "%" + slipid;
        }
        if (slipid.charAt(slipid.length() - 1) != '%') {
            slipid = slipid + "%";
        }
        EntityManager em = PurchaseEquipment.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM PurchaseEquipment AS o WHERE LOWER(o.slipid) LIKE LOWER(:slipid)");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<PurchaseEquipment> q = em.createQuery(queryBuilder.toString(), PurchaseEquipment.class);
        q.setParameter("slipid", slipid);
        return q;
    }
    
}
