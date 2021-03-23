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

import com.niit.ecombackend.DAO.seller_DAO;
import com.niit.ecombackend.model.seller;


@Controller
@RequestMapping("/admin")
public class sellercontroller {
	@Autowired
	seller_DAO seldao;
	@RequestMapping(value = { "/seller" })
	String seller(Model m) {
		m.addAttribute("editmode",false);
		m.addAttribute("showmess",false);
		m.addAttribute("dispmsg","Succussful");
		m.addAttribute("sellermodel", new seller());
		m.addAttribute("selpage", true);
		return "index";
	}

	@RequestMapping(value = "/addseller", method = RequestMethod.POST)
	String addseller(@Valid @ModelAttribute("sellermodel") seller b, BindingResult br, Model m) {
		try {
			if (br.hasErrors()) {
				m.addAttribute("showmess", true);
				m.addAttribute("dispmsg", "Pls Check Your Data");
				m.addAttribute("sellermodel", b);

			} else {
				if (seldao.addseller(b)) {
					m.addAttribute("showmess", true);
					m.addAttribute("dispmsg", "Added Successfuly");
					m.addAttribute("sellermodel", new seller());
				} else {
					m.addAttribute("showmess", true);
					m.addAttribute("dispmsg", "Data Not Added");
					m.addAttribute("sellermodel", b);
				}
			}
		} catch (Exception e) {
			if (e instanceof ConstraintViolationException) {
				m.addAttribute("showmess", true);
				m.addAttribute("dispmsg", "Data Already Exists");
				m.addAttribute("sellermodel", b);
			} else {
				m.addAttribute("showmess", true);
				m.addAttribute("dispmsg", "Try after sometime");
				m.addAttribute("sellermodel", b);
			}
		}
		m.addAttribute("editmode", false);
		m.addAttribute("selpage", true);
		return "index";
	}
	@RequestMapping("/viewseller")
	String viewcatpage(Model m) {
		m.addAttribute("sellerlist", seldao.selectAll());
		m.addAttribute("viewselpage", true);
		return "index";
	}
		@RequestMapping("/deleteseller")
		String deleteselpage(@RequestParam("selid") int id, Model m) {
			try {
				if (seldao.deleteseller(seldao.SelectOneseller(id))) {
					m.addAttribute("showmess", true);
					m.addAttribute("dispmsg", "DATA DELETED");
				} else {
					m.addAttribute("showmess", true);
					m.addAttribute("dispmsg", "UNABLE TO DELETE");
				}
			} catch (Exception e) {
				m.addAttribute("showmess", true);
				m.addAttribute("dispmsg", "UNABLE TO DELETE THE DATA");
			}
			m.addAttribute("sellerlist", seldao.selectAll());
			m.addAttribute("viewselpage", true);
			return "index";

		}

		@RequestMapping("/editseller")
		String editselpage(@RequestParam("selid") int id, Model m) {
			m.addAttribute("editmode", true);
			m.addAttribute("showmess", false);
			m.addAttribute("dispmsg", "Edit Successfull");

			m.addAttribute("sellermodel", seldao.SelectOneseller(id));
			m.addAttribute("selpage", true);
			return "index";
		}

		@RequestMapping(value = "/updateseller", method = RequestMethod.POST)
		String updateseller(@Valid @ModelAttribute("sellermodel") seller b, BindingResult br, Model m) {
			try {
				if (br.hasErrors()) {
					m.addAttribute("showmess", true);
					m.addAttribute("dispmsg", "PLS CHECK YOUR DATA");
					m.addAttribute("sellermodel", b);
					m.addAttribute("editmode", true);
				} else {
					if (seldao.updateseller(b)) {
						m.addAttribute("showmess", true);
						m.addAttribute("dispmsg", "UPDATED SUCESSFULLY");
						m.addAttribute("sellermodel", new seller());
						m.addAttribute("editmode", false);
					} else {
						m.addAttribute("showmess", true);
						m.addAttribute("dispmsg", "DATA NOT ENTERED");
						m.addAttribute("sellermodel", b);
						m.addAttribute("editmode", true);
					}
				}

			} catch (Exception e) {

				m.addAttribute("showmess", true);
				m.addAttribute("dispmsg", "TRY AFTER SOMETIME");
				m.addAttribute("sellermodel", b);
				m.addAttribute("editmode", true);
			}

			m.addAttribute("selpage", true);
			return "index";

		}
}
