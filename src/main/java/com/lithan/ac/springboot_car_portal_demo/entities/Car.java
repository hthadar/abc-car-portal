package com.lithan.ac.springboot_car_portal_demo.entities;

import javax.persistence.*;

import org.hibernate.type.BlobType;

import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name="car")
public class Car {
    @Id
    @Column(name="id")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    @Column(name="make")
    private String make;

    @Column(name="model")
    private String model;

    @Column(name="registeration")
    private String registeration;

    @Column(name="price")
    private String price;
    
    private String carphoto;

    @OneToMany(mappedBy = "car", orphanRemoval=true)
    private Set<CarBidding> biddings = new HashSet<CarBidding>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

  
    public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getRegisteration() {
		return registeration;
	}

	public void setRegisteration(String registeration) {
		this.registeration = registeration;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public Set<CarBidding> getBiddings() {
		return biddings;
	}

	public void setBiddings(Set<CarBidding> biddings) {
		this.biddings = biddings;
	}

	public String getCarphoto() {
		return carphoto;
	}

	public void setCarphoto(String carphoto) {
		this.carphoto = carphoto;
	}

	
	
	


}
