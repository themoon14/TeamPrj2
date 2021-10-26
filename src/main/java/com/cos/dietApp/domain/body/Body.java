package com.cos.dietApp.domain.body;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// Table Model
@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
public class Body {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id; // PK
	private int uWeight;
	private int uHeight;
	private int uMuscle;
	private int uFat;
	private int uBMI;
	private String UserID; // FK

}
