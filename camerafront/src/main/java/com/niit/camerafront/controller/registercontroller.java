package com.niit.camerafront.controller;

import java.sql.SQLIntegrityConstraintViolationException;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.ecombackend.DAO.register_DAO;
import com.niit.ecombackend.model.register;



@Controller
public class registercontroller {
	@Autowired
	register_DAO regdao;

	@RequestMapping("/register")
	String regpage(Model m) {
		m.addAttribute("showmess", false);
		m.addAttribute("dispmsg", "");
		m.addAttribute("registermodel", new register());

		m.addAttribute("regpage", true);
		return "index";
	}

	@RequestMapping(value = "/addregister", method = RequestMethod.POST)
	String addregister(@Valid @ModelAttribute("registermodel") register c, BindingResult br, Model m) {
		try {
			
			BCryptPasswordEncoder enc=new BCryptPasswordEncoder();
			c.setReg_Pass(enc.encode(c.getReg_Pass()));
			if(br.hasErrors()) {
				
				m.addAttribute("showmess", true);
				m.addAttribute("dispmsg", "PLS CHECK YOUR DATA");
				m.addAttribute("registermodel", c);
			} else {
				if (regdao.addregister(c)) {
					m.addAttribute("showmess", true);
					m.addAttribute("dispmsg", "ADDED SUCESSFULLY");
					m.addAttribute("registermodel", new register());
				} else {
					m.addAttribute("showmess", true);
					m.addAttribute("dispmsg", "DATA NOT ENTERED");
					m.addAttribute("registermodel", c);
				}
			}

		} catch (Exception e) {
			if (e instanceof SQLIntegrityConstraintViolationException) {
				m.addAttribute("showmess", true);
				m.addAttribute("dispmsg", "DATA ALREADY EXISTS");
				m.addAttribute("registermodel", c);
			} else {
				m.addAttribute("showmess", true);
				m.addAttribute("dispmsg", "TRY AFTER SOMETIME");
				m.addAttribute("registermodel", c);
			}
		}

		m.addAttribute("regpage", true);
		return "index";
	}

}
