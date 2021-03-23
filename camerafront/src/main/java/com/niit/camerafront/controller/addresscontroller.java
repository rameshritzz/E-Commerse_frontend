package com.niit.camerafront.controller;

import java.sql.SQLIntegrityConstraintViolationException;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ecombackend.DAO.address_DAO;
import com.niit.ecombackend.DAO.register_DAO;
import com.niit.ecombackend.model.address;
import com.niit.ecombackend.model.register;


@Controller
public class addresscontroller {
	@Autowired
	address_DAO adrdao;
	@Autowired
	register_DAO regdao;
		@RequestMapping("/user/viewaddress")
	String address(Model m,HttpSession httpSession) {
		int userid=Integer.parseInt(httpSession.getAttribute("userid").toString());
		m.addAttribute("addresslist",adrdao.selectAll(userid));
		m.addAttribute("viewaddress", true);
		return "index";
	}
		@RequestMapping(value = { "/user/vaddress" })
		String address(Model m) {
			m.addAttribute("addressmodel", new address());
			m.addAttribute("address", true);
			return "index";
		}
		@RequestMapping("/user/address")
		String addadpage(@Valid @ModelAttribute("addressmodel") address c, BindingResult br, Model m,
				HttpSession httpSession) {
			register r = regdao.selectOneregister(httpSession.getAttribute("useremail").toString());
		      c.setReg_user(r);
			try {
				if (br.hasErrors()) {
					System.out.print(br.toString());
					m.addAttribute("showmess", true);
					m.addAttribute("dispmsg", "PLS CHECK YOUR DATA");
					m.addAttribute("addressmodel", c);
				} else {
					if (adrdao.addaddress(c)) {
						return "redirect:/user/viewaddress";
					} else {
						m.addAttribute("showmess", true);
						m.addAttribute("dispmsg", "DATA NOT ENTERED");
						m.addAttribute("addressmodel", c);
					}
				}

			} catch (Exception e) {
				if (e instanceof SQLIntegrityConstraintViolationException) {
					m.addAttribute("showmess", true);
					m.addAttribute("dispmsg", "DATA ALREADY EXISTS");
					m.addAttribute("addressmodel", c);
				} else {
					m.addAttribute("showmess", true);
					m.addAttribute("dispmsg", "TRY AFTER SOMETIME");
					m.addAttribute("addressmodel", c);
				}
			}
			m.addAttribute("editmode", false);
			m.addAttribute("address", true);

			return "index";
		}

		@RequestMapping("/user/deleteaddress")
		String deletedelpage(@RequestParam("adrid") int id, Model m, HttpSession httpSession) {
			int userid = Integer.parseInt(httpSession.getAttribute("userid").toString());
			try {
				if (adrdao.deleteaddress(adrdao.SelectOneaddress(id))) {

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
			m.addAttribute("addresslist", adrdao.selectAll(userid));
		m.addAttribute("newaddpage", true);
		return "redirect:/user/viewaddress";

	}

		@RequestMapping("/user/editaddress")
		String editpropage(@RequestParam("arid") int id, Model m, HttpSession httpSession) {
		int userid = Integer.parseInt(httpSession.getAttribute("userid").toString());
			m.addAttribute("editmode", true);
			m.addAttribute("showmess", false);
			m.addAttribute("dispmesg", "");
			m.addAttribute("addressmodel", adrdao.SelectOneaddress(id));
			m.addAttribute("address", true);
			return "index";
		}

		@RequestMapping(value = "/user/updateaddress", method = RequestMethod.POST)
		String updateadd(@Valid @ModelAttribute("addressmodel") address c, BindingResult br, Model m,
				HttpSession httpSession) {
			register r = regdao.selectOneregister(httpSession.getAttribute("useremail").toString());
			c.setReg_user(r);;
			try {
				if (br.hasErrors()) {
					m.addAttribute("showmess", true);
					m.addAttribute("dispmesg", "PLS CHECK YOUR DATA");
					m.addAttribute("addressmodel", c);
					m.addAttribute("editmode", true);
			} else {
					if (adrdao.updateaddress(c)) {
						return "redirect:/user/viewaddress";
				} else {
						m.addAttribute("showmess", true);
						m.addAttribute("dispmesg", "DATA NOT ENTERED");
						m.addAttribute("addressmodel", c);
						m.addAttribute("editmode", true);
					}
				}

			} catch (Exception e) {

				m.addAttribute("showmess", true);
				m.addAttribute("dispmesg", "TRY AFTER SOMETIME");
				m.addAttribute("addressmodel", c);
				m.addAttribute("editmode", true);
			}

			m.addAttribute("editmode", false);
		m.addAttribute("address", true);

			return "index";

		}

}
