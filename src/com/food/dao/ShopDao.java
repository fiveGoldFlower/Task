package com.food.dao;

import java.util.ArrayList;
import java.util.List;

import com.food.model.Customer;
import com.food.model.Food;
import com.food.model.Shop;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
@Service @Transactional
public class ShopDao {
	@Resource SessionFactory factory;
	
	 /*添加Shop信息*/
    public void AddShop(Shop sh) throws Exception {
    	Session s = factory.getCurrentSession();
    	s.save(sh);
    }
    
    /*删除Shop信息*/
    public void DeleteShop (Integer shopId) throws Exception {
        Session s = factory.getCurrentSession(); 
        Object shop = s.load(Shop.class, shopId);
        s.delete(shop);
    }
    
    /*更新Shop信息*/
    public void UpdateShop(Shop shop) throws Exception {
        Session s = factory.getCurrentSession();
        s.update(shop);
       
    }
    
    /*查询所有Shop信息*/
    public ArrayList<Shop> QueryAllShop() {
        Session s = factory.getCurrentSession();
        String hql = "From Shop";
        Query q = s.createQuery(hql);
        List shopList = q.list();
        return (ArrayList<Shop>) shopList;
    }

    /*根据主键获取对象*/
    public Shop GetShopById(Integer Shopid) {
        Session s = factory.getCurrentSession();
        Shop Shop = (Shop)s.get(Shop.class, Shopid);
        return Shop;
    }
    
    /*根据查询条件查询，一般来说，订单查询时，会根据用户ID查对应的订单，或根据美食的名称查对应的订单*/
    public ArrayList<Shop> QueryShopInfo(Customer customer) {
    	Session s = factory.getCurrentSession();
    	String hql = "From Shop shop where 1=1";
    	if(null != customer && customer.getCustomerid()!=0) 
    		
    		hql = hql + " and shop.customer.customerid  ='" + customer.getCustomerid() + "'";//蓝色字的Shop.customer.customerid表示先查询数据库中的Shop这个表，再找到Shop中customer字段，根据customer中的customerID来查询，黑色部分表示输入的参数。
    	/*if(null != food && null!=food.getFoodname()) 
    		hql = hql + " and shop.food.foodname like '%" + food.getFoodname() + "%'";*/
    	Query q = s.createQuery(hql);
    	List shopList = q.list();
    	return (ArrayList<Shop>) shopList;
    }

}
