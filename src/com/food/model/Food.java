package com.food.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Food entity. @author MyEclipse Persistence Tools
 */

public class Food implements java.io.Serializable {

	// Fields

	private Integer foodid;
	private String foodname;
	private String filepath;
	private Integer price;
	private Integer vipprice;
	private Set shops = new HashSet(0);
	private Set shops_1 = new HashSet(0);
	private Set comments = new HashSet(0);
	private Set comments_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Food() {
	}

	/** minimal constructor */
	public Food(String foodname, String filepath, Integer price,
			Integer vipprice) {
		this.foodname = foodname;
		this.filepath = filepath;
		this.price = price;
		this.vipprice = vipprice;
	}

	/** full constructor */
	public Food(String foodname, String filepath, Integer price,
			Integer vipprice, Set shops, Set shops_1, Set comments,
			Set comments_1) {
		this.foodname = foodname;
		this.filepath = filepath;
		this.price = price;
		this.vipprice = vipprice;
		this.shops = shops;
		this.shops_1 = shops_1;
		this.comments = comments;
		this.comments_1 = comments_1;
	}

	// Property accessors

	public Integer getFoodid() {
		return this.foodid;
	}

	public void setFoodid(Integer foodid) {
		this.foodid = foodid;
	}

	public String getFoodname() {
		return this.foodname;
	}

	public void setFoodname(String foodname) {
		this.foodname = foodname;
	}

	public String getFilepath() {
		return this.filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getVipprice() {
		return this.vipprice;
	}

	public void setVipprice(Integer vipprice) {
		this.vipprice = vipprice;
	}

	public Set getShops() {
		return this.shops;
	}

	public void setShops(Set shops) {
		this.shops = shops;
	}

	public Set getShops_1() {
		return this.shops_1;
	}

	public void setShops_1(Set shops_1) {
		this.shops_1 = shops_1;
	}

	public Set getComments() {
		return this.comments;
	}

	public void setComments(Set comments) {
		this.comments = comments;
	}

	public Set getComments_1() {
		return this.comments_1;
	}

	public void setComments_1(Set comments_1) {
		this.comments_1 = comments_1;
	}

}