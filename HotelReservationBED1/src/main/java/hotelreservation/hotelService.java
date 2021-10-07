package hotelreservation;

import java.util.Date;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;



public class hotelService {

	private static ApplicationContext context=new ClassPathXmlApplicationContext("beans.xml");
	private static hotelDao hotelDao=context.getBean("hotelDao", hotelDao.class);
	public String checkAvailability(String city, String hotel,String date) {
		
		//context=new ClassPathXmlApplicationContext("beans.xml");
		//hotelDao=context.getBean("hotelDao", hotelDao.class);
		
		List<hotel> hotl=hotelDao.checkAvailability(hotel,date);	
		
		
		System.out.println("the size of the list="+hotl.size());
		if(hotl.size()==0)
			return "Available";
		else
			return "unavailable";
		
		
		
			
		
	}
	public hotelDetails getDetails(String hotel) {
		return hotelDao.getDetails(hotel);
	}
	public void insertValues(hotel hotel) {
		
		hotelDao.insertValues(hotel);
	}
	
}
