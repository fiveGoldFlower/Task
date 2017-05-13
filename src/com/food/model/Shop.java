package com.food.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Shop entity. @author MyEclipse Persistence Tools
 */

public class Shop implements java.io.Serializable {

	// Fields

	private Integer shopid;
	private Customer customer;
	private Food food;
	private Integer foodnum;
	private Integer unitprice;
	private Set orders = new HashSet(0);

	// Constructors

	/** default constructor */
	public Shop() {
	}

	/** minimal constructor */
	public Shop(Customer customer, Food food, Integer foodnum, Integer unitprice) {
		this.customer = customer;
		this.food = food;
		this.foodnum = foodnum;
		this.unitprice = unitprice;
	}

	/** full constructor */
	public Shop(Customer customer, Food food, Integer foodnum,
			Integer unitprice, Set orders) {
		this.customer = customer;
		this.food = food;
		this.foodnum = foodnum;
		this.unitprice = unitprice;
		this.orders = orders;
	}

	// Property accessors

	public Integer getShopid() {
		return this.shopid;
	}

	public void setShopid(Integer shopid) {
		this.shopid = shopid;
	}

	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Food getFood() {
		return this.food;
	}

	public void setFood(Food food) {
		this.food = food;
	}

	public Integer getFoodnum() {
		return this.foodnum;
	}

	public void setFoodnum(Integer foodnum) {
		this.foodnum = foodnum;
	}

	public Integer getUnitprice() {
		return this.unitprice;
	}

	public void setUnitprice(Integer unitprice) {
		this.unitprice = unitprice;
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

}