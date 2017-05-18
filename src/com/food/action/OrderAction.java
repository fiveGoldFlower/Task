package com.food.action;



import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Resource;

import org.apache.coyote.Request;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.food.dao.CustomerDao;
import com.food.dao.FoodDao;
import com.food.dao.OrderDao;
import com.food.dao.ShopDao;
import com.food.model.Customer;
import com.food.model.Food;
import com.food.model.Order;
import com.food.model.Shop;
import com.food.dao.ShopDao;
@Controller @Scope("prototype")
public class OrderAction {
	 @Resource ShopDao shopDao;
	    @Resource CustomerDao customerDao;
	    @Resource FoodDao foodDao;
	     private Shop shop;
	    private List<Shop> shopList;
	    private Customer customer;
	    private Food food;
	    @Resource OrderDao orderDao;
	    private List<Order> orderList;
	    private int total;
	    Iterator<Shop> it ;
	    private Shop a[]=new Shop[50];
	    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	   // List<Order> orde=new ArrayList<Order>();
	  //private  Shop[] counts = Request.getParameterValues(shop);
		public Shop getShop() {
			return shop;
		}

		public void setShop(Shop shop) {
			this.shop = shop;
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
		/*public String addOrder() throws Exception{
			
			Order ord =new Order();
			//ord.setOrderid(x);
    		
           // Shop shop=new Shop();
			//customer = customerDao.queryCustomerInfo(customer.getName()).get(0);
			int i=0;
			customer = customerDao.GetCustomerById(customer.getCustomerid());
	    	shopList = shopDao.QueryShopInfo(customer);
	    	it= shopList.iterator();
	    	while(it.hasNext()){
		    		Shop shop=(Shop)it.next();
		    		a[i]=shop;
		    		i++;
		    		total+=shop.getUnitprice()*shop.getFoodnum();
		    		}
	    	
		    	for(int j=0;j<i;j++){
		    		ord.setShop(a[j]);
		    		System.out.print(a[j]);
		    		ord.setTotal(total);
		    		String time=df.format(new Date());
		    		ord.setTime(time);
		    		
		    		//OrderDao order=new OrderDao();
		    		// @Resource order;
		    		
		    		orderDao.AddOrder(ord);
		    	}
		    
		    	
		    	
	    	
			//ord.setCustomer(customer);
			//ord.setFood(food);
			//因为是“来一份”，所以置为1
			//ord.setFoodnum(1);
			
		
						return "order_message";
	    	}	*/
		
		
		/*显示所有shop*/
	    public String showshop() {
	    	
	        //将系统设定为用户名不重复，因此在系统中查询到第一个该名称用户即可
	    	System.out.println(customer.getName());
	        Customer cus= customerDao.queryCustomerInfo(customer.getName()).get(0);
	        System.out.println(cus);
	        //注意不需要food的查询条件时，下面语句的写法，直接将food的条件置为null
	        shopList = shopDao.QueryShopInfo(cus);

	        return "show";
	    }

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
	    public String queryOrders() throws Exception {
	    	customer = customerDao.GetCustomerById(customer.getCustomerid());
	    	orderList = orderDao.QueryOrderInfo(customer);
	    	System.out.println(orderList);
	    	//shopList = shopDao.QueryShopInfo(customer,food);
	        return "show";
	    }
	    public String deleteShop() throws Exception {
	    	
	    	shopDao.DeleteShop(shop.getShopid());
	        return "shop_message";
	    }

		public List<Order> getOrderList() {
			return orderList;
		}

		public void setOrderList(List<Order> orderList) {
			this.orderList = orderList;
		}

		public int getTotal() {
			return total;
		}

		public void setTotal(int total) {
			this.total = total;
		}


	}


