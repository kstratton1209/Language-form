package com.keara.languages.controllers;


import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.keara.languages.models.Language;
import com.keara.languages.services.LanguageService;

@Controller
public class LanguagesController {
	private final LanguageService languageService;
	   
	public LanguagesController(LanguageService languageService) {
	   this.languageService = languageService;
	}
	
	@RequestMapping("/")
	   public String index(Model model) {
				model.addAttribute("all", languageService.getAll());
				model.addAttribute("languages", new Language());
	       return "/languages/index.jsp";
	    }
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
    public String create(@Valid @ModelAttribute("book") Language language, BindingResult result, Model model) {
    	if (result.hasErrors()) {
    		model.addAttribute("all",languageService.allLanguages());
            System.out.println(result.getAllErrors());
        } else {
        	languageService.create(language);
        }
    	return "redirect:/";
    	
    }
	
	@RequestMapping(value="language/{id}/show")
    public String show(@PathVariable("id") Long id, Model model) {
        model.addAttribute("language", languageService.findLanguage(id));
    	return "/languages/details.jsp";
    }
	
	@RequestMapping(value="language/{id}/delete")
    public String destroy(@PathVariable("id") Long id) {
        languageService.destroyLanguage(id);
    	return "/languages/index.jsp";
    }
	
    @RequestMapping("/details/{id}/edit")
    public String edit(@PathVariable("id") Long id, Model model) {
        Language language = languageService.findLanguage(id);
        model.addAttribute("language", language);
        return "/languages/edit.jsp";
    }
    
    @RequestMapping(value="/details/{id}/update", method=RequestMethod.PUT)
    public String update(@Valid @ModelAttribute("book") Language language, BindingResult result, @PathVariable("id") Long id) {
    	if (result.hasErrors()) {
    		System.out.println(result.getAllErrors());
            return "/languages/edit.jsp";
        } else {
            languageService.updateLanguage(language, id);
            return "redirect:/";
        }
    }
    
    

    

	
}
