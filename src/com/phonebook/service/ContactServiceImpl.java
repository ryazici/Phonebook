package com.phonebook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.phonebook.dao.ContactDAO;
import com.phonebook.model.Contact;


@Service
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactDAO contactDAO;
	
	
	
	@Transactional
	public List<Contact> getContacts() {
		
		List<Contact> contacts=contactDAO.getContacts();
		
		return contacts;
	}

	
	@Transactional
	public Contact getContact(int contactId) {
		
		return contactDAO.getContact(contactId);
		
	};


	@Transactional
	public void addContact(Contact contact) {
		
		contactDAO.addContact(contact);
	
	}
	
	@Transactional
	public void updateContact(Contact contact) {
		
		contactDAO.updateContact(contact);
	}
	
	
	
	@Transactional
	public void removeContact(Contact contact) {
		if(contact != null)
		contactDAO.removeContact(contact);
	};

}
