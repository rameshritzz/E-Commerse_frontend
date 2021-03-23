package com.niit.camerafront.controller;

import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ecombackend.DAO.cart_DAO;
import com.niit.ecombackend.DAO.product_DAO;
import com.niit.ecombackend.DAO.register_DAO;
import com.niit.ecombackend.model.cart;
import com.niit.ecombackend.model.product;
import com.niit.ecombackend.model.register;

@Controller
public class cartcontroller {
	@Autowired
	register_DAO custdao;
	@Autowired
	product_DAO prodao;
	@Autowired
	cart_DAO cartdao;

	@RequestMapping("/addtocart")
	String addToCart(@RequestParam("proid") int pid, @RequestParam("quantity") int qty, HttpSession httpSession) {
		if (httpSession.getAttribute("userid") != null) {
			register cust = custdao.selectOneregister(httpSession.getAttribute("useremail").toString());
			product pro = prodao.SelectOneproduct(pid);
			ArrayList<cart> cartlist = (ArrayList<cart>) cartdao.selectAll(cust.getReg_Id());
			Iterator<cart> cartiterator = cartlist.listIterator();
			while (cartiterator.hasNext()) {
				cart cart = (cart) cartiterator.next();
				if (cart.getP().getPro_id() == pid) {
					int qty1 = cart.getQuantity() + qty;
					if (qty1 > 5)
						qty1 = 5;
					cart.setQuantity(qty1);
					cart.setTotal(qty1 * pro.getPrice());
					cartdao.updatecart(cart);
					return "redirect:/user/viewcart";
				}
			}
			cart c = new cart();
			c.setP(pro);
			c.setQuantity(qty);
			c.setTotal(qty * pro.getPrice());
			c.setCust(cust);
			cartdao.addcart(c);
			return "redirect:/user/viewcart";
		} else {
			httpSession.setAttribute("pid", pid);
			httpSession.setAttribute("qty", qty);
			return "redirect:/loginpage";
		}
	}

	@RequestMapping("/user/viewcart")
	String viewCart(Model m, HttpSession httpSession) {
		float subtot = 0;
		int itemcount = 0;
		ArrayList<cart> cartlist = (ArrayList<cart>) cartdao
				.selectAll(Integer.parseInt(httpSession.getAttribute("userid").toString()));
		Iterator<cart> cartlistitems = cartlist.listIterator();
		while (cartlistitems.hasNext()) {
			cart cart = (cart) cartlistitems.next();
			subtot = subtot + cart.getTotal();
			itemcount++;
		}
		m.addAttribute("cartlist", cartlist);
		m.addAttribute("subtot", subtot);
		m.addAttribute("shipping", itemcount * 50);
		m.addAttribute("total", subtot + itemcount * 50);
		m.addAttribute("cartpage", true);
		return "index";
	}
}
