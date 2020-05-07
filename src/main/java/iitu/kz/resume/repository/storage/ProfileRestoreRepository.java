package iitu.kz.resume.repository.storage;

import org.springframework.data.repository.CrudRepository;

import iitu.kz.resume.entity.ProfileRestore;

public interface ProfileRestoreRepository extends CrudRepository<ProfileRestore, Long> {
	
	ProfileRestore findByToken(String token);
}
