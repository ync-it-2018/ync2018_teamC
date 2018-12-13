package kr.ync.project.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.domain.EventVO;
import kr.ync.project.service.EventService;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/event/*")
@Slf4j
public class EventController {

	private static final Logger logger = LoggerFactory.getLogger(EventController.class);
	
	@Autowired
	private EventService eventService;
    
    //SignUp GET
    @RequestMapping(value="/event.do", method=RequestMethod.GET)
    public void eventGET() {
        
    }
    
    //SignUp POST
    @RequestMapping(value="/event.do", method=RequestMethod.POST)
    public String eventPOST(EventVO eventVO) {
            
     eventService.insertEvent(eventVO);
            
        return "admin/index";
    }
    
    @RequestMapping(value="/eventPhoto.do", method=RequestMethod.GET)
    public void eventPhotoGET() {
        
    }
    
    @RequestMapping(value="/eventPhoto.do", method=RequestMethod.POST)
    public String eventPhotoPOST(EventVO eventVO) {
            
     eventService.insertEventPhoto(eventVO);
            
        return "admin/index";
    }
	
}
