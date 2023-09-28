package com.lithan.A1m8.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lithan.A1m8.model.Car;
import com.lithan.A1m8.service.CarService;

@RestController
@RequestMapping("/car")
public class CarController {
	
	@Autowired
	public CarService carService;
	
	@PostMapping("/post_car")
	public Car saveCar(@RequestBody Car car) {
		return carService.SaveCar(car);
	}
	
	@GetMapping("/all_cars")
	public List<Car> getAllCar() {
		return carService.getAllCar();
	}
	
	@GetMapping("/car_details/{id}")
	public Car getCarById(@PathVariable("id") Long id) {
		return carService.getUserById(id);
	}
	
	@GetMapping(value = "/search", params = "keyword")
	public List<Car> getCarById(@Param("keyword") String keyword) {
		return carService.getCarByKeyword (keyword);
	}
	
	@GetMapping(value = "/search", params = { "min", "max" })
	public List<Car> getCarById(@Param("min") double min, @Param("max") double max) {
		return carService.getCarByPriceRange (min, max);
	}
	
	@PutMapping("/updateCar")
	public Car updateCar(@RequestBody Car car) {

		return carService.SaveCar(car);

	}
	
}
