package com.app.validate;

import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.app.model.Admin;
@Component
public class AdminValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return Admin.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Admin a=(Admin)target;
		if(!Pattern.matches("[A-Z]{2,5}", a.getAdminName())) {
			errors.rejectValue("adminName", null, "Please choose Valid Name");
		}
		if(!StringUtils.hasText(a.getDept())) {
			errors.rejectValue("dept", null, "Select Valid Departiment");	
		}
		if(!StringUtils.hasText(a.getGrade())) {
			errors.rejectValue("grade", null, "Select Valid Grade");
		}
		if(!Pattern.matches("[A-Za-z0-9\\\\s]{10,250}", a.getNote())) {
			errors.rejectValue("note", null, "Please enter Text");
		}
		if(a.getGrant()==null || a.getGrant().isEmpty()) {
			errors.rejectValue("grant", null, "Please select grant");
		}

	}

}
