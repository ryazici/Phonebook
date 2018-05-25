package com.phonebook.dao;

import java.util.List;

import com.phonebook.model.Contact;

public interface ContactDAO {

	public List<Contact> getContacts();
	
	public Contact getContact(int id);

	public void addContact(Contact contact);
	
	public void updateContact(Contact contact);
	
	public void removeContact(Contact contact);
	
}
