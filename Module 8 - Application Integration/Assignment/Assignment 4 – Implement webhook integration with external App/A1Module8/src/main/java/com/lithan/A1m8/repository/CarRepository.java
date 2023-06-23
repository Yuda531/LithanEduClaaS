package com.lithan.A1m8.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.lithan.A1m8.model.Car;

@Repository
public interface CarRepository extends JpaRepository<Car, Long> {
	@Query(value = "SELECT * FROM tb_car WHERE brand LIKE %:keyword% OR model LIKE %:keyword%", nativeQuery = true)
	public List<Car> searchCarByKeyword (String keyword);

	@Query(value = "SELECT * FROM tb_car WHERE price <> :min AND :max", nativeQuery = true)
	public List<Car> searchCarByPriceRange(double min, double max);
}
