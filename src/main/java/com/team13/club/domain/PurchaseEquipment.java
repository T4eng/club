package com.team13.club.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import java.util.Calendar;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findPurchaseEquipmentsBySlipidLike" })
public class PurchaseEquipment {

    /**
     */
    private String slipid;

    /**
     */
    @ManyToOne
    private Members members;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<EquipmentList> equipmentList = new HashSet<EquipmentList>();

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar dates;
}
