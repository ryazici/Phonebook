package com.phonebook.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.phonebook.model.Contact;
import com.phonebook.service.ContactService;


@Controller
@RequestMapping("/contact")
public class ContactController {

	@Autowired
	private ContactService contactService;
	
	
	@GetMapping("/list")
	public String listContacts(Model model) {
		

		List<Contact> contacts=contactService.getContacts();
		
		model.addAttribute("contacts", contacts);
		
		return "list-contacts";
	}
	
	@GetMapping("/addcontact")
	public String addContact(Model model) {
		
		Contact contact=new Contact();
		model.addAttribute("contact", contact);
		
		return "add-contact";
	}
	
	
	@PostMapping("/saveContact")
	public String saveContact(@ModelAttribute("contact") Contact contact) {
		
		contactService.addContact(contact);
        
		return "redirect:/contact/list";	
	}
	
	
	@GetMapping("/removecontact")
	public String removeContact(@RequestParam int contactId) {
		
		contactService.removeContact(contactService.getContact(contactId));
		
		return "redirect:/contact/list";	
	}
	
	
	@GetMapping("/updatecontact")
	public String updateContact(@RequestParam int contactId,Model model) {
		
		Contact contact=contactService.getContact(contactId);
		
		model.addAttribute("contact", contact);
		
		return "update-contact";
	}
	
	@PostMapping("/saveUpdate")
	public String saveUpdateContact(@ModelAttribute("contact") Contact contact) {
		
		contactService.updateContact(contact);
        
		return "redirect:/contact/list";	
	}
	
	
}
