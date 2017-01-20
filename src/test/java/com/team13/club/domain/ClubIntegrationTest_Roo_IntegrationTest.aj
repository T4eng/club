// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.team13.club.domain;

import com.team13.club.domain.Club;
import com.team13.club.domain.ClubDataOnDemand;
import com.team13.club.domain.ClubIntegrationTest;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ClubIntegrationTest_Roo_IntegrationTest {
    
    declare @type: ClubIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: ClubIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: ClubIntegrationTest: @Transactional;
    
    @Autowired
    ClubDataOnDemand ClubIntegrationTest.dod;
    
    @Test
    public void ClubIntegrationTest.testCountClubs() {
        Assert.assertNotNull("Data on demand for 'Club' failed to initialize correctly", dod.getRandomClub());
        long count = Club.countClubs();
        Assert.assertTrue("Counter for 'Club' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void ClubIntegrationTest.testFindClub() {
        Club obj = dod.getRandomClub();
        Assert.assertNotNull("Data on demand for 'Club' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Club' failed to provide an identifier", id);
        obj = Club.findClub(id);
        Assert.assertNotNull("Find method for 'Club' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Club' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void ClubIntegrationTest.testFindAllClubs() {
        Assert.assertNotNull("Data on demand for 'Club' failed to initialize correctly", dod.getRandomClub());
        long count = Club.countClubs();
        Assert.assertTrue("Too expensive to perform a find all test for 'Club', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Club> result = Club.findAllClubs();
        Assert.assertNotNull("Find all method for 'Club' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Club' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void ClubIntegrationTest.testFindClubEntries() {
        Assert.assertNotNull("Data on demand for 'Club' failed to initialize correctly", dod.getRandomClub());
        long count = Club.countClubs();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Club> result = Club.findClubEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Club' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Club' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void ClubIntegrationTest.testFlush() {
        Club obj = dod.getRandomClub();
        Assert.assertNotNull("Data on demand for 'Club' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Club' failed to provide an identifier", id);
        obj = Club.findClub(id);
        Assert.assertNotNull("Find method for 'Club' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyClub(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'Club' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ClubIntegrationTest.testMergeUpdate() {
        Club obj = dod.getRandomClub();
        Assert.assertNotNull("Data on demand for 'Club' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Club' failed to provide an identifier", id);
        obj = Club.findClub(id);
        boolean modified =  dod.modifyClub(obj);
        Integer currentVersion = obj.getVersion();
        Club merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Club' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ClubIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'Club' failed to initialize correctly", dod.getRandomClub());
        Club obj = dod.getNewTransientClub(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Club' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Club' identifier to be null", obj.getId());
        try {
            obj.persist();
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        obj.flush();
        Assert.assertNotNull("Expected 'Club' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void ClubIntegrationTest.testRemove() {
        Club obj = dod.getRandomClub();
        Assert.assertNotNull("Data on demand for 'Club' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Club' failed to provide an identifier", id);
        obj = Club.findClub(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'Club' with identifier '" + id + "'", Club.findClub(id));
    }
    
}