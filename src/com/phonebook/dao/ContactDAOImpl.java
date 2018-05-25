package com.phonebook.dao;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.phonebook.model.Contact;

@Repository
public class ContactDAOImpl implements ContactDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	
	@Override
	public List<Contact> getContacts() {
		
		Session session=sessionFactory.getCurrentSession();
		
		Query<Contact> query=session.createQuery("select c from Contact c order by c.lastName", Contact.class);
			
		
		List<Contact> contacts=query.getResultList();
		
		return contacts;
	}
	
	@Override
	public Contact getContact(int contactId) {
		
		Session session=sessionFactory.getCurrentSession();
		
		Contact contact=session.get(Contact.class, contactId);
		
		return contact;
		
	};
	

	@Override
	public void addContact(Contact contact) {
		
		Session session=sessionFactory.getCurrentSession();
		
		session.saveOrUpdate(contact);
	}

	@Override
	public void updateContact(Contact contact) {
		Session session=sessionFactory.getCurrentSession();
		
		session.update(contact);
	}
	
	@Override
	public void removeContact(Contact contact) {
		
		Session session=sessionFactory.getCurrentSession();
		
		session.delete(contact);
		
	};
	

	
}
