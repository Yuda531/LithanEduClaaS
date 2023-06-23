package com.lithan;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StoreController {
	
	@Autowired
	public StoreService s_Service;
	
	@GetMapping("/home")
	public String home() {
		
		return "redirect:/";
	}
	
	@GetMapping("addMoreStore")
	public String addMore() {
		return "redirect:addStore";
	}
	
	
	//show the form to add store
	@RequestMapping(value="/addStore" , method=RequestMethod.GET)
	public String addStoreForm(Model model) {
		System.out.println("Add Store Form");
		model.addAttribute("store", new Store());
		return "addStore";
	}
	
	@RequestMapping(value="/saveStore", method=RequestMethod.POST)
	public String saveStore(Store store) {
		System.out.println("Save Store information");
		Store savedStore = s_Service.saveStore(store);
		return "redirect:viewStore";
	}
	
	@RequestMapping(value="/viewStore", method=RequestMethod.GET)
	public String viewStore(Model model) {
		System.out.println("List out all store");
		List<Store> allStores = s_Service.listAllStore();
		System.out.println(allStores);
		model.addAttribute("all_Stores", allStores);
		return"listStore";
	}

}