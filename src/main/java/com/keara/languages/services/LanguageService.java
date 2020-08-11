package com.keara.languages.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.keara.languages.repositories.LanguageRepository;
import com.keara.languages.models.Language;

@Service
public class LanguageService {
    private final LanguageRepository languageRepository;
    
    public List<Language> allLanguages() {
        return (List<Language>) languageRepository.findAll();
    }
    
	public LanguageService(LanguageRepository languageRepository) {
		this.languageRepository = languageRepository;
	}
	
	public Language create(Language l) {
		return languageRepository.save(l);
	}
	
	
	public List<Language> getAll() {
		return (List<Language>) languageRepository.findAll();
	}
	
	public void destroyLanguage(Long id) {
	    languageRepository.deleteById(id);
	}
	
	public Language findLanguage(Long id) {
        Optional<Language> optionalLanguage = languageRepository.findById(id);
        if(optionalLanguage.isPresent()) {
            return optionalLanguage.get();
        } else {
            return null;
        }
    }
	
	public Language updateLanguage(Language toUpdate, Long id) { 
    	if(toUpdate.getId() == null) {
    		toUpdate.setId(id);
    	}
    	return languageRepository.save(toUpdate);
    }
	
	public Language saveBook(Language l) {
        return languageRepository.save(l);
    }
}
