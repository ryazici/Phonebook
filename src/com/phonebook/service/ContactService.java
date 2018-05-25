package com.phonebook.service;

import java.util.List;

import com.phonebook.model.Contact;

public interface ContactService {
	
	public List<Contact> getContacts();
	
	public Contact getContact(int contactId);
	
	public void addContact(Contact contact);
	
	public void updateContact(Contact contact);
	
	public void removeContact(Contact contact);

}
