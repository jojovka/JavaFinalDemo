package iitu.kz.resume.service;

import java.util.List;

import iitu.kz.resume.entity.Profile;
import iitu.kz.resume.entity.Skill;
import iitu.kz.resume.entity.SkillCategory;
import iitu.kz.resume.form.SignUpForm;

public interface EditProfileService {

	Profile createNewProfile(SignUpForm signUpForm);
	
	List<Skill> listSkills(long idProfile);

	List<SkillCategory> listSkillCategories();
	
	void updateSkills(long idProfile, List<Skill> skills);
}
