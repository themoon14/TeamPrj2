package com.cos.dietApp.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.cos.dietApp.domain.user.User;
import com.cos.dietApp.domain.user.UserRepository;
import com.cos.dietApp.web.dto.JoinReqDto;
import com.cos.dietApp.web.dto.LoginReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class UserController {

	//창래
	//용세
	//규호
	private final UserRepository userRepository;
	private final HttpSession session;
	
	// DI 
//	public UserController(UserRepository userRepository, HttpSession session) {
//		this.userRepository = userRepository;
//		this.session = session;
//	}
	
//	
//	@GetMapping("/test/join")
//	public void testQueryJoin() {
//		userRepository.join("cos", "1234", "Tom", "010-1234-9876", "ssar@naver.com");
//	}
//	
//	
//	@PostMapping("/test/join")
//	public void testJoin() {
//		User user = new User();
//		user.setUsername("ssar");
//		user.setPassword("1234");
//		user.setUName("Tom");
//		user.setUPhone("010-1234-9876");
//		user.setUEmail("ssar@naver.com");
//		user.setUWeight(70);
//		user.setUHeight(180);
//		user.setUMuscle(70);
//		user.setUFat(20);
//		user.setUBMI(80);
//		
//		// insert into user(username, password, uName, uPhone, uEmail) values('ssar', '1234', 'Tom', '010-1234-9876', 'ssar@naver.com')
//		userRepository.save(user);
//	}
	
	@GetMapping({"/","/index"})
	public String home() {
		return "index"; // ViewResolver
	}
	
	@GetMapping("/joinForm")
	public String joinForm() {
		return "user/joinForm"; // ViewResolver
	}
	
	@GetMapping("/loginForm")
	public String loginForm() {
		return "user/loginForm"; // ViewResolver
	}
	
		
	// 3. 있으면
	// 4. Save to session
	// 5. Return MainPage
	
	
	// insert into user(username, password, uName, uPhone, uEmail) values('ssar', '1234', 'Tom', '010-1234-9876', 'ssar@naver.com')
//	@PostMapping("/join")
//	public String join(JoinReqDto dto) { // username=love&password=1234&name=john&phone=010-1234-5678&email=love@naver.com
//		
//		System.out.println(dto.getUsername());
//		System.out.println(dto.getPassword());
//		System.out.println(dto.getUName());
//		System.out.println(dto.getUPhone());
//		System.out.println(dto.getUEmail());
//		System.out.println(dto.getUGender());
//		System.out.println(dto.getUHeight());
//		System.out.println(dto.getUMuscle());
//		System.out.println(dto.getUFat());
//		System.out.println(dto.getUBMI());
//		
//		
//		User user = new User();
//		user.setUsername(dto.getUsername());
//		user.setPassword(dto.getPassword());
//		user.setUName(dto.getUName());
//		user.setUPhone(dto.getUPhone());
//		user.setUEmail(dto.getUEmail());
//		user.setUGender(dto.getUGender());
//		user.setUWeight(dto.getUWeight());
//		user.setUHeight(dto.getUHeight());
//		user.setUMuscle(dto.getUMuscle());
//		user.setUFat(dto.getUFat());
//		user.setUBMI(dto.getUBMI());
//		
//		if(dto.getUsername() == null ||
//		   dto.getPassword() == null ||
//		   dto.getUName()    == null ||
//		   dto.getUPhone()   == null ||
//		   dto.getUEmail()   == null ||
//		   dto.getUGender()  == null ||
//		   !dto.getUsername().equals("") ||
//		   !dto.getPassword().equals("") ||
//		   !dto.getUName().equals("")    ||
//		   !dto.getUPhone().equals("")   ||
//		   !dto.getUEmail().equals("")   ||
//		   !dto.getUGender().equals("")
//		) {
//			return "error/error";
//		}
//		
//		userRepository.save(dto.toEntity());
//		
//		return "redirect:/loginForm"; // Redirection (300) ViewResolver
//		
//	}
//	
	@PostMapping("/join")
	public String join(JoinReqDto dto) {

	userRepository.save(dto.toEntity());

	return "redirect:/loginForm";
	}
	
	
	@PostMapping("/login") 
	public String login(LoginReqDto loginDto) {
		// 1. Get username, password
		System.out.println(loginDto.getUsername());
		System.out.println(loginDto.getPassword());
		
		// 2. DB -> Select
		User principal = userRepository.mLogin(loginDto.getUsername(), loginDto.getPassword());

		if(principal == null) {
			return "redirect:/loginForm";
		} else {
			session.setAttribute("principal", principal);
			return "redirect:/index";	
		} 
	}
	
}



