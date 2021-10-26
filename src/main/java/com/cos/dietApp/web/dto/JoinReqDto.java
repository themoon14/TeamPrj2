package com.cos.dietApp.web.dto;

import com.cos.dietApp.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class JoinReqDto {
	private String username;
	private String password;
	private String uName;
	private String uPhone;
	private String uEmail;
	private String uGender;
	
	private int uWeight;
	private int uHeight;
	private int uMuscle;
	private int uFat;
	private int uBMI;

	public User toEntity() {
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setUName(uName);
		user.setUPhone(uPhone);
		user.setUEmail(uEmail);
		user.setUGender(uGender);
		
		user.setUWeight(uWeight);
		user.setUHeight(uHeight);
		user.setUMuscle(uMuscle);
		user.setUFat(uFat);
		user.setUBMI(uBMI);
		
		return user;
		
	}
}







