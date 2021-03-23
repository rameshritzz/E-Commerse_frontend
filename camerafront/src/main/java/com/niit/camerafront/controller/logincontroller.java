package com.niit.camerafront.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ecombackend.DAO.register_DAO;
import com.niit.ecombackend.model.register;



@Controller
public class logincontroller {
	@Autowired
	register_DAO regdao;

	@RequestMapping(value = { "/loginpage" })
	String regPage(Model m) {
		m.addAttribute("showmess", false);
		m.addAttribute("dispmsg", "");
		m.addAttribute("logpage", true);
		return "index";
	}

	@RequestMapping(value = { "/floginpage" })
	String failregPage(Model m) {
		m.addAttribute("showmess", false);
		m.addAttribute("dispmsg", "Bad Credential");
		m.addAttribute("logpage", true);
		return "index";
	}

	@RequestMapping("/loginsuccess")
	String loginsuccess(Model m, HttpSession httpSession) {
		String Username = SecurityContextHolder.getContext().getAuthentication().getName();
		String Userrole = SecurityContextHolder.getContext().getAuthentication().getAuthorities().toString();
		if (Userrole.equals("[ROLE_ADMIN]")) {
			httpSession.setAttribute("username", "Administrator");
			httpSession.setAttribute("userrole", "Admin");
			return "redirect:/admin/category";
		} else {
			register c = regdao.selectOneregister(Username);
			httpSession.setAttribute("username", c.getReg_Name());
			httpSession.setAttribute("userrole", "User");
			httpSession.setAttribute("useremail",c.getReg_Email());
			httpSession.setAttribute("userid",c.getReg_Id());
			if(httpSession.getAttribute("qty")!=null)
			{
				int proid=Integer.parseInt(httpSession.getAttribute("pid").toString());
				int qty=Integer.parseInt(httpSession.getAttribute("qty").toString());
				return "redirect:/addtocart?proid="+proid+"&quantity="+qty;

			}
			else
			{
				return "redirect:/";
			}

		}
	}}