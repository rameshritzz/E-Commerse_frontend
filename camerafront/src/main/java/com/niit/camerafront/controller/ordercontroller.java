package com.niit.camerafront.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ecombackend.DAO.address_DAO;
import com.niit.ecombackend.DAO.cart_DAO;
import com.niit.ecombackend.DAO.order_DAO;
import com.niit.ecombackend.DAO.product_DAO;
import com.niit.ecombackend.DAO.register_DAO;
import com.niit.ecombackend.model.address;
import com.niit.ecombackend.model.cart;
import com.niit.ecombackend.model.myorder;
import com.niit.ecombackend.model.product;
import com.niit.ecombackend.model.register;

@Controller
@RequestMapping("/user")
public class ordercontroller {
	
	@Autowired
	address_DAO adrdao;
	@Autowired
	cart_DAO catdao;
	@Autowired
	order_DAO ordao;
	@Autowired
	product_DAO prodao;
	@Autowired
	register_DAO regdao;
	
	@RequestMapping("/placeorder")
	String placeorder(HttpSession httpSession, @RequestParam("addid") int addid) {
		String orderid;
		int userid = Integer.parseInt(httpSession.getAttribute("userid").toString());
		register reg = regdao.selectOneregister(httpSession.getAttribute("useremail").toString());
		ArrayList<cart> cartlist = (ArrayList<cart>) catdao.selectAll(userid);
		address adr = adrdao.SelectOneaddress(addid);
		Iterator<cart> items = cartlist.iterator();
		while (items.hasNext()) {
			cart cart = (cart) items.next();
			product p = cart.getP();
			orderid = "OD-" + String.valueOf(UUID.randomUUID().getMostSignificantBits());
			myorder my = new myorder();
			my.setOrder_id(orderid);
			my.setReg_user(reg);
			my.setAdd(adr);
			my.setDate(new Date());
			my.setPro(cart.getP());
			my.setQty(cart.getQuantity());
			my.setTotal(cart.getTotal());
			if (p.getStock() >= cart.getQuantity()) {
				ordao.addorder(my);
				p.setStock(p.getStock() - cart.getQuantity());
				prodao.updateproduct(p);
				catdao.deletecart(cart);
			} else {
				return "redirect:/user/viewcart";

			}

		}

		return "redirect:/user/viewmyorders";

	}

	@RequestMapping("/viewmyorders")
	String vieworder(Model m, HttpSession httpSession) {
		m.addAttribute("orderpage", true);
		m.addAttribute("orderitems", ordao.selectAll(Integer.parseInt(httpSession.getAttribute("userid").toString())));
		return "index";
	}
	@RequestMapping("/viewoneorder")
	String viewonepropage(Model m, @RequestParam("oid") String id) {
		myorder o = ordao.SelectOneorder(id);
		m.addAttribute("oneorder", ordao.SelectOneorder(id));
		m.addAttribute("shipping",100);
		m.addAttribute("total",o.getTotal()+100);
		m.addAttribute("vieworderpage", true);
		return "index";
	}

}

	


