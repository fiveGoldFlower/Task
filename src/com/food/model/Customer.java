package com.food.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Customer entity. @author MyEclipse Persistence Tools
 */

public class Customer implements java.io.Serializable {

	// Fields

	private Integer customerid;
	private String name;
	private String password;
	private Integer role;
	private Set shops = new HashSet(0);
	private Set shops_1 = new HashSet(0);
	private Set comments = new HashSet(0);
	private Set comments_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Customer() {
	}

	/** minimal constructor */
	public Customer(String name, String password, Integer role) {
		this.name = name;
		this.password = password;
		this.role = role;
	}

	/** full constructor */
	public Customer(String name, String password, Integer role, Set shops,
			Set shops_1, Set comments, Set comments_1) {
		this.name = name;
		this.password = password;
		this.role = role;
		this.shops = shops;
		this.shops_1 = shops_1;
		this.comments = comments;
		this.comments_1 = comments_1;
	}

	// Property accessors

	public Integer getCustomerid() {
		return this.customerid;
	}

	public void setCustomerid(Integer customerid) {
		this.customerid = customerid;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getRole() {
		return this.role;
	}

	public void setRole(Integer role) {
		this.role = role;
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