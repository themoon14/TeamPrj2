package com.cos.dietApp.domain.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cos.dietApp.web.dto.JoinReqDto;


//save(user) 인서트, 업데이트
//findById(1) 한건셀렉트
//findAll() 전체셀렉트
//deleteById(1) 한건 삭제

// DAO
// @Repository
public interface UserRepository extends JpaRepository<User, Integer> {
	
	@Query(value = "insert into user (username, password, uName, uPhone, uEmail, uWeight, uHeight, uMuscle, uFat, uBMI) values(:username,:password,:uName,:uPhone,:uEmail, :uWeight, :Height, :uMuscle, :uFat, :uBMI)", nativeQuery = true)
	void join(String username, String password, String uName, String uPhone, String uEmail);
	
	@Query(value = "SELECT * FROM user WHERE username = :username AND password = :password", nativeQuery = true)
	User mLogin(String username, String password);
	
}





