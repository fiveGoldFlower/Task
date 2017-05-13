package com.food.action;

import java.util.List;
import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.food.dao.CustomerDao;
import com.food.dao.FoodDao;
import com.food.dao.ShopDao;
import com.food.model.Customer;
import com.food.model.Food;
import com.food.model.Shop;
import com.food.dao.ShopDao;
import com.opensymphony.xwork2.ActionContext;
@Controller @Scope("prototype")
public class ShopAction {
	@Resource SessionFactory factory;
	 @Resource ShopDao shopDao;
	    @Resource CustomerDao customerDao;
	    @Resource FoodDao foodDao;
	     private Shop shop;
	    private List<Shop> shopList;
	    private Customer customer;
	    private Food food;
	    
		public Shop getShop() {
			return shop;
		}

		public void setShop(Shop shop) {
			this.shop = shop;
		}
		
		public List<Shop> getShopList() {
			return shopList;
		}

		public void setShopList(List<Shop> shopList) {
			this.shopList = shopList;
		}

		public Customer getCustomer() {
			return customer;
		}

		public void setCustomer(Customer customer) {
			this.customer = customer;
		}

		public Food getFood() {
			return food;
		}

		public void setFood(Food food) {
			this.food = food;
		}
		
		/*添加shop*/
		public String addshop() throws Exception{
			

			customer = customerDao.queryCustomerInfo(customer.getName()).get(0);
			Shop shop =new Shop();
			shop.setCustomer(customer);
			shop.setFood(food);
			//因为是“来一份”，所以置为1
			shop.setFoodnum(1);
			if(customer.getRole()==1){
				shop.setUnitprice(foodDao.GetFoodById(food.getFoodid()).getVipprice()*1);
				shopDao.AddShop(shop);
			}
			else{
				shop.setUnitprice(foodDao.GetFoodById(food.getFoodid()).getPrice()*1);
				shopDao.AddShop(shop);
			}
						return "shop_message";
			
		}
		
		/*显示所有shop*/
	    public String showshop() {
	    	
	        //将系统设定为用户名不重复，因此在系统中查询到第一个该名称用户即可
	    	System.out.println(customer.getName());
	        Customer cus= customerDao.queryCustomerInfo(customer.getName()).get(0);
	       // System.out.println(cus);
	        //注意不需要food的查询条件时，下面语句的写法，直接将food的条件置为null
	        shopList = shopDao.QueryShopInfo(cus);

	        return "show";
	    }
	  /*  public String editShop() throws Exception {
	    	//Shop sho=shopDao.GetShopById(shop.getShopid());
	    //Food	foo=sho.getFood();
	    //System.out.print(foo.getFoodid());
	    	//foodDao.UpdateFood(foo);
	    	shopDao.UpdateShop(shop);  
	    	
	        return "edit_message";
	    }*/
	  
	    /*显示某一shop的详细信息*/
	    public String showDetail() {
	    	
	    	System.out.print(shop.getShopid());
	    	shop = shopDao.GetShopById(shop.getShopid());
	        return "detail_view";
	    }
	    
	    /*显示shop的修改项*/
	    /*public String showEdit() throws Exception {
	    	shop = shopDao.GetshopById(shop.getshopid());
	        return "edit_view";
	    }*/

	    /*编辑shop*/
	    /*public String editshop() throws Exception {
	    	shopDao.Updateshop(shop);
	        return "edit_message";
	    }*/
	    
	    /*删除shop*/
	    /*public String deleteshop() throws Exception {
	    	shopDao.Deleteshop(food.getFoodid());
	        return "delete_message";
	    }*/
	    
	    /*查询shop*/
	  /*  public String queryShops() throws Exception {
	    	customer = customerDao.GetCustomerById(customer.getCustomerid());
	    	shopList = shopDao.QueryShopInfo(customer);
	    	System.out.println(shopList);
	    	//shopList = shopDao.QueryShopInfo(customer,food);
	        return "show";
	    }*/
	    public String deleteShop() throws Exception {
	    	
	    	shopDao.DeleteShop(shop.getShopid());
	        return "message";
	    }


	}


