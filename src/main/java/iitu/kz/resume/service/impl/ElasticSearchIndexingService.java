package iitu.kz.resume.service.impl;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.elasticsearch.core.ElasticsearchOperations;
import org.springframework.stereotype.Service;

import iitu.kz.resume.entity.Profile;
import iitu.kz.resume.repository.search.ProfileSearchRepository;
import iitu.kz.resume.service.FindProfileService;

@Service
public class ElasticSearchIndexingService {
	private static final Logger LOGGER = LoggerFactory.getLogger(ElasticSearchIndexingService.class);
	
	@Value("${index.all.during.startup}")
	private boolean indexAllDuringStartup;
	
	@Autowired
	private ProfileSearchRepository profileSearchRepository;
	
	@Autowired
	private ElasticsearchOperations elasticsearchOperations;
	
	@Autowired
	private FindProfileService findProfileService;
	
	@PostConstruct
	private void postConstruct(){
		if(indexAllDuringStartup) {
			LOGGER.info("Detected index all command");
			LOGGER.info("Clear old index");
			elasticsearchOperations.deleteIndex(Profile.class);
			LOGGER.info("Start index of profiles");
			for(Profile p : findProfileService.findAllForIndexing()){
				profileSearchRepository.save(p);
				LOGGER.info("Successful indexing of profile: "+p.getUid());
			}
			LOGGER.info("Finish index of profiles");
		}
		else{
			LOGGER.info("indexAllDuringStartup is disabled");
		}
	}
}
