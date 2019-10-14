package com.capg.rms.dao;

import java.util.List;

import com.capg.rms.beans.Order;
import com.capg.rms.beans.Product;
import com.capg.rms.beans.Retailer;

public interface RetailerMaintainanceSystemDAO {
	
		public Boolean createProfile(Retailer retailer);
		
		public Product getProduct(int productId);
		
		public Retailer loginProfile(int retailerId,String password);
		
		public Boolean updatePassword(int retailerId , String password);
		
		public List<Order> getOrder(int retailerId);
		
		public Order orderProduct(Order order);

}
