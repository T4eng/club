package com.team13.club.web;
import com.team13.club.domain.MeetingRoom;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/meetingrooms")
@Controller
@RooWebScaffold(path = "meetingrooms", formBackingObject = MeetingRoom.class)
public class MeetingRoomController {
}
