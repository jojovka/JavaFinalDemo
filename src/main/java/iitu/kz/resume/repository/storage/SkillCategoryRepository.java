package iitu.kz.resume.repository.storage;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.repository.RepositoryDefinition;

import iitu.kz.resume.entity.SkillCategory;

@RepositoryDefinition(domainClass=SkillCategory.class, idClass=Long.class)
public interface SkillCategoryRepository {

	List<SkillCategory> findAll(Sort sort);
}
