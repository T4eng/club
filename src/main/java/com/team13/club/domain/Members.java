package com.team13.club.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Members {

    /**
     */
    private String Name;

    /**
     */
    private String IDMember;

    /**
     */
    @Enumerated
    private Gender Gender;

    /**
     */
    private Integer Age;

    /**
     */
    @ManyToOne
    private Major Major;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Club> Club = new HashSet<Club>();
}
