package com.niit.camerafront.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ecombackend.DAO.product_DAO;

@Controller
public class firstcontroller {
	@Autowired
	product_DAO prodao;
	@Autowired
	MailSending mailsender;

	@RequestMapping(value = { "/", "/slider" })
	String dispPage(Model m) {
		m.addAttribute("indexpage", true);
		return "index";
	}

	@RequestMapping(value = { "/contact us" })
	String contact(Model m) {
		m.addAttribute("contact", true);
		return "index";
	}

	@RequestMapping(value = { "/about us" })
	String about(Model m) {
		m.addAttribute("about", true);
		return "index";
	}

	@RequestMapping("/viewproductcart")
	String viewpropage(Model m) {
		m.addAttribute("productlist", prodao.selectAll());

		m.addAttribute("userproductpage", true);
		return "index";
	}

	@RequestMapping("/viewoneproduct")
	String viewonepropage(Model m, @RequestParam("pid") int id) {
		m.addAttribute("oneproduct", prodao.SelectOneproduct(id));

		m.addAttribute("viewonepropage", true);
		return "index";
	}

	@RequestMapping(value = { "/error" })
	String errorpage(Model m) {
		m.addAttribute("errorpage", true);
		return "index";
	}

	@RequestMapping(value = { "/pagenotfound" })
	String notfoundpage(Model m) {
		m.addAttribute("pagefound", true);
		return "index";

	}

	@RequestMapping("/sendemail")
	String sendemail(Model m, HttpServletRequest request) {
		try {
			mailsender.sendMyMail(request.getParameter("email"), "hi", "welcome");
		} catch (Exception e) {
			System.out.print(e);
		} finally {
			System.out.print("fail");
		}
		m.addAttribute("conpage", true);
		return "index";
	}

}