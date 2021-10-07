package hotelreservation;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class hotelController {
	String hotlname;
	String newdate;
	String city;
	@RequestMapping(value="/checkAvailability", method = RequestMethod.POST)
	public String checkAvailability(String cityname,String hotelname, String date,Model model) throws ParseException {
		System.out.print("Entered city: "+cityname+" Entered hotel : "+hotelname+" selected date : "+date);
		hotlname=hotelname;
		city=cityname;
		/*String[] splitDate=date.split("-");
		newdate=splitDate[2]+"-"+splitDate[1]+"-"+splitDate[0];*/
		newdate=date;
		System.out.println("Date : "+newdate);
		hotelService hotelservice=new hotelService();
		String status="unavailable";
		status=hotelservice.checkAvailability(cityname, hotelname, newdate);
		if(status.equals("Available")) {
			status="hotelDetails";
			hotelDetails detail=hotelservice.getDetails(hotelname);
			model.addAttribute("hotelName", hotelname);
			model.addAttribute("cityName", cityname);
			model.addAttribute("date", date);
			model.addAttribute("roomType", detail.getRoomtype());
			model.addAttribute("gst", detail.getGst());
			model.addAttribute("priceInRupees", detail.getPrice());
			
		}
		else
			status="unavailable";
		return status;
	}
	@RequestMapping(value="/confirmBooking", method = RequestMethod.POST)
	public String confirmBooking() {
		hotelService hotelservice=new hotelService();
		
		return "register";
	}
	
	@RequestMapping(value="/submitDetails", method = RequestMethod.POST)
	public String submitDetails(String name,Model model,hotel hotl) {
		System.out.println(hotl.getHotelname());
		hotl.setCityname(city);
		hotl.setHotelname(hotlname);
		hotl.setDate(newdate);
		hotelService hotelservice=new hotelService();
		hotelservice.insertValues(hotl);
		model.addAttribute("userName", name);
		model.addAttribute("hotelName", hotlname);

		return "final";
	}
	
	
}
