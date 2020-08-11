package com.keara.languages.repositories;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.keara.languages.models.Language;


@Repository
public interface LanguageRepository extends CrudRepository<Language, Long> {}
