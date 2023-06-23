package com.lithanKYN;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lithanKYN.Store;

@Repository
public interface StoreRepository extends JpaRepository<Store, Long>{

}
