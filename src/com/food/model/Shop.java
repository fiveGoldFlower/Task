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
	private String time;
	private Set orders = new HashSet(0);
	private Set orders_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Shop() {
	}

	/** minimal constructor */
	public Shop(Customer customer, Food food, Integer foodnum,
			Integer unitprice, String time) {
		this.customer = customer;
		this.food = food;
		this.foodnum = foodnum;
		this.unitprice = unitprice;
		this.time = time;
	}

	/** full constructor */
	public Shop(Customer customer, Food food, Integer foodnum,
			Integer unitprice, String time, Set orders, Set orders_1) {
		this.customer = customer;
		this.food = food;
		this.foodnum = foodnum;
		this.unitprice = unitprice;
		this.time = time;
		this.orders = orders;
		this.orders_1 = orders_1;
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

	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

	public Set getOrders_1() {
		return this.orders_1;
	}

	public void setOrders_1(Set orders_1) {
		this.orders_1 = orders_1;
	}

}