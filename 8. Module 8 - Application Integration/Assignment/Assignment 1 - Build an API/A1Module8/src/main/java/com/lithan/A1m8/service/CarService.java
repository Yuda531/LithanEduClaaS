package com.lithan.A1m8.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lithan.A1m8.model.Car;
import com.lithan.A1m8.repository.CarRepository;

@Transactional
@Service
public class CarService {
	
	@Autowired
	public CarRepository carRepo;
	
	public Car SaveCar(Car car) {
		System.out.println("Car Added Successfully");
		
		return carRepo.save(car);
	}
	
	public List<Car> getAllCar(){
		return carRepo.findAll();
	}
	
	public Car getUserById(Long id) {
		return carRepo.findById(id).get();
	}
	public List<Car> getCarByKeyword (String keyword){
		return carRepo.searchCarByKeyword (keyword);
	}
	
	public List<Car> getCarByPriceRange (double min, double max){ 
		return carRepo.searchCarByPriceRange(min, max);
	}

}
