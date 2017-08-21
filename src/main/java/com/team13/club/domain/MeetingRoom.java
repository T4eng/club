package com.team13.club.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class MeetingRoom {

    /**
     */
    private String RoomID;

    /**
     */
    @Enumerated
    private Sizes RoomSize;

    /**
     */
    @ManyToOne
    private Club ClubMeeting;
}
