// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.team13.club.domain;

import com.team13.club.domain.Major;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Major_Roo_Jpa_Entity {
    
    declare @type: Major: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Major.id;
    
    @Version
    @Column(name = "version")
    private Integer Major.version;
    
    public Long Major.getId() {
        return this.id;
    }
    
    public void Major.setId(Long id) {
        this.id = id;
    }
    
    public Integer Major.getVersion() {
        return this.version;
    }
    
    public void Major.setVersion(Integer version) {
        this.version = version;
    }
    
}
