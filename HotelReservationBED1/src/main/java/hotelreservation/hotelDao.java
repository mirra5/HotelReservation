package hotelreservation;

import java.util.Date;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.HibernateTemplate;





public class hotelDao {
	HibernateTemplate template;
	public void setTemplate(HibernateTemplate template) {

		this.template = template;

	}
	public void savehtl(hotel hotl) {

		template.save(hotl);

	}
	public List<hotel> checkAvailability(String hotel,String date){
		
		
		SessionFactory sessionfac=template.getSessionFactory();
		Session session=sessionfac.openSession();
		String SQL_QUERY =" from hotel as h where h.hotelname=? and h.date=?";
		Query query = session.createQuery(SQL_QUERY);
		query.setParameter(0, hotel);
		query.setString(1, date);
		
		return query.list();
		
		
	}
	public hotelDetails getDetails(String hotel) {
		// TODO Auto-generated method stub
		hotelDetails details=template.get(hotelDetails.class, hotel);
		return details;
	}
	public void insertValues(hotel hotel) {
		System.out.println("inside dao for inserting "+hotel.getHotelname());
		Session session = template.getSessionFactory().openSession();
        session.beginTransaction();
		session.save(hotel);
		session.getTransaction().commit();
		
	}
}
