package com.niit.camerafront.controller;

import javax.validation.Valid;

import org.hibernate.exception.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ecombackend.DAO.category_DAO;
import com.niit.ecombackend.model.category;


@Controller
@RequestMapping("/admin")
public class categorycontroller {
	@Autowired
	category_DAO catdao;

	@RequestMapping(value = { "/category" })
	String category(Model m) {
		m.addAttribute("editmode", false);
		m.addAttribute("showmess", false);
		m.addAttribute("dispmsg", "Succussful");
		m.addAttribute("categorymodel", new category());
		m.addAttribute("catpage", true);
		return "index";
	}

	@RequestMapping(value = "/addcategory", method = RequestMethod.POST)
	String addcategory(@Valid @ModelAttribute("categorymodel") category c, BindingResult br, Model m) {
		try {
			if (br.hasErrors()) {
				m.addAttribute("showmess", true);
				m.addAttribute("dispmsg", "Pls Check Your Data");
				m.addAttribute("categorymodel", c);

			} else {
				if (catdao.addcategory(c)) {
					m.addAttribute("showmess", true);
					m.addAttribute("dispmsg", "Added Successfuly");
					m.addAttribute("categorymodel", new category());
				} else {
					m.addAttribute("showmess", true);
					m.addAttribute("dispmsg", "Data Not Added");
					m.addAttribute("categorymodel", c);
				}
			}
		} catch (Exception e) {
			if (e instanceof ConstraintViolationException) {
				m.addAttribute("showmess", true);
				m.addAttribute("dispmsg", "Data Already Exists");
				m.addAttribute("categorymodel", c);
			} else {
				m.addAttribute("showmess", true);
				m.addAttribute("dispmsg", "Try after sometime");
				m.addAttribute("categorymodel", c);
			}
		}

		m.addAttribute("catpage", true);
		return "index";
	}

	@RequestMapping("/viewcategory")
	String viewcatpage(Model m) {
		m.addAttribute("categorylist", catdao.selectAll());
		m.addAttribute("viewcatpage", true);
		return "index";
	}

	@RequestMapping("/deletecategory")
	String deletecatpage(@RequestParam("catid") int id, Model m) {
		try {
			if (catdao.deletecategory(catdao.SelectOnecategory(id))) {
				m.addAttribute("showmess", true);
				m.addAttribute("dispmesg", "DATA DELETED");
			} else {
				m.addAttribute("showmess", true);
				m.addAttribute("dispmesg", "UNABLE TO DELETE");
			}
		} catch (Exception e) {
			m.addAttribute("showmess", true);
			m.addAttribute("dispmesg", "UNABLE TO DELETE THE DATA");
		}
		m.addAttribute("categorylist", catdao.selectAll());
		m.addAttribute("viewcatpage", true);
		return "index";

	}

	@RequestMapping("/editcategory")
	String editcatpage(@RequestParam("catid") int id, Model m) {
		m.addAttribute("editmode", true);
		m.addAttribute("showmess", false);
		m.addAttribute("dispmesg", "Edit Successfull");

		m.addAttribute("categorymodel", catdao.SelectOnecategory(id));
		m.addAttribute("catpage", true);
		return "index";
	}

	@RequestMapping(value = "/updatecategory", method = RequestMethod.POST)
	String updateCategory(@Valid @ModelAttribute("categorymodel") category c, BindingResult br, Model m) {
		try {
			if (br.hasErrors()) {
				m.addAttribute("showmess", true);
				m.addAttribute("dispmesg", "PLS CHECK YOUR DATA");
				m.addAttribute("categorymodel", c);
				m.addAttribute("editmode", true);
			} else {
				if (catdao.updatecategory(c)) {
					m.addAttribute("showmess", true);
					m.addAttribute("dispmesg", "UPDATED SUCESSFULLY");
					m.addAttribute("categorymodel", new category());
					m.addAttribute("editmode", false);
				} else {
					m.addAttribute("showmess", true);
					m.addAttribute("dispmesg", "DATA NOT ENTERED");
					m.addAttribute("categorymodel", c);
					m.addAttribute("editmode", true);
				}
			}

		} catch (Exception e) {

			m.addAttribute("showmess", true);
			m.addAttribute("dispmesg", "TRY AFTER SOMETIME");
			m.addAttribute("categorymodel", c);
			m.addAttribute("editmode", true);
		}

		m.addAttribute("catpage", true);
		return "index";

	}
}
