package com.lithan;

import java.util.Arrays;

public class Store {
	
	String name;
	String phone_number;
	String[] localities;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	
	public String[] getLocalities() {
		return localities;
	}

	public void setLocalities(String[] localities) {
		this.localities = localities;
	}

	public Store(String name, String phone_number, String[] localities) {
		this.name = name;
		this.phone_number = phone_number;
		this.localities = localities;
	}

	public Store() {
	}
	@Override
	public String toString() {
		return "Store [name=" + name + ", phone_number=" + phone_number + ", localities=" + Arrays.toString(localities)
				+ "]";
	}
}
