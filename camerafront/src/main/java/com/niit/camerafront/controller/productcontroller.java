package com.niit.camerafront.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

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
import org.springframework.web.multipart.MultipartFile;

import com.niit.ecombackend.DAO.category_DAO;
import com.niit.ecombackend.DAO.product_DAO;
import com.niit.ecombackend.DAO.seller_DAO;
import com.niit.ecombackend.model.product;



@Controller
@RequestMapping("/admin")
public class productcontroller {
	@Autowired
	category_DAO catdao;
	@Autowired
	seller_DAO seldao;
	@Autowired
	product_DAO prodao;

	@RequestMapping("/product")
	String productpage(Model m) {
		m.addAttribute("editmode", false);
		m.addAttribute("showmess", false);
		m.addAttribute("dispmsg", "");
		m.addAttribute("catlist", catdao.selectAll());
		m.addAttribute("sellist", seldao.selectAll());
		m.addAttribute("productmodel", new product());
		m.addAttribute("productpage", true);
		return "index";

	}
	void uploadfile(int productId, MultipartFile f) throws IOException {
		String path = "E:\\Ramesh\\camerafront\\src\\main\\webapp\\resources\\images\\";
		path = path + String.valueOf(productId) + ".jpg";
		File f1 = new File(path);
		byte[] b;
		if (!f.isEmpty()) {
			b = f.getBytes();
			if (f1.exists()) {
				f1.delete();
			}
			System.out.println(b);
			BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(new File(path)));
			bs.write(b);
			bs.close();

		}
	}

	void deletefile(int id) throws IOException {
		String path = "E:\\Ramesh\\camerafront\\src\\main\\webapp\\resources\\images\\";
		path = path + String.valueOf(id) + ".jpg";
		File f2 = new File(path);
		if (f2.exists()) {
			f2.delete();
		}

	}
	@RequestMapping(value = "/addproduct", method = RequestMethod.POST)
	String addProduct(@Valid @ModelAttribute("productmodel") product p, BindingResult br, Model m) {
		try {
			if (br.hasErrors()) {
				m.addAttribute("showmess", true);
				m.addAttribute("dispmsg", "Plz Check Something went wrong");
				m.addAttribute("productmodel", p);
			} else {
				if (prodao.addproduct(p)) {
					uploadfile(p.getPro_id(), p.getPimage());
					m.addAttribute("showmess", true);
					m.addAttribute("dispmsg", "Successfully added");
					m.addAttribute("productmodel", new product());
				} else {
					m.addAttribute("showmess", true);
					m.addAttribute("dispmsg", "Not Added");
					m.addAttribute("productmodel", p);
				}
			}
		} catch (Exception e) {
			if (e instanceof ConstraintViolationException) {
				m.addAttribute("showmess", true);
				m.addAttribute("dispmsg", "Data Already exists");
				m.addAttribute("productmodel", p);
			} else {
				m.addAttribute("showmess", true);
				m.addAttribute("dispmsg", "Later");
				m.addAttribute("productmodel", p);
			}
		}
		m.addAttribute("categorylist", catdao.selectAll());
		m.addAttribute("sellerist", seldao.selectAll());
		m.addAttribute("productpage", true);
		return "index";
	}

	@RequestMapping("/viewproduct")
	String viewpropage(Model m) {
		m.addAttribute("productlist", prodao.selectAll());

		m.addAttribute("viewproductpage", true);
		return "index";
	}

	@RequestMapping("/deleteproduct")
	String deletepropage(@RequestParam("proid") int id, Model m) {
		try {
			if (prodao.deleteproduct(prodao.SelectOneproduct(id))) {
				deletefile(id);
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
		m.addAttribute("productlist", prodao.selectAll());
		m.addAttribute("viewproductpage", true);
		return "index";

	}

	@RequestMapping("/editproduct")
	String editpropage(@RequestParam("proid") int id, Model m) {
		m.addAttribute("editmode", true);
		m.addAttribute("showmess", false);
		m.addAttribute("dispmsg", "");
		m.addAttribute("catlist", catdao.selectAll());
		m.addAttribute("sellist", seldao.selectAll());
		m.addAttribute("productmodel", prodao.SelectOneproduct(id));
		m.addAttribute("productpage", true);
		return "index";
	}

	@RequestMapping(value = "/updateproduct", method = RequestMethod.POST)
	String updateProduct(@Valid @ModelAttribute("productmodel") product c, BindingResult br, Model m) {
		try {
			if (br.hasErrors()) {
				m.addAttribute("showmess", true);
				m.addAttribute("dispmsg", "PLS CHECK YOUR DATA");
				m.addAttribute("productmodel", c);
				m.addAttribute("editmode", true);
			} else {
				if (prodao.updateproduct(c)) {
					m.addAttribute("showmess", true);
					m.addAttribute("dispmsg", "UPDATED SUCESSFULLY");
					m.addAttribute("productmodel", new product());
					m.addAttribute("editmode", false);
				} else {
					m.addAttribute("showmess", true);
					m.addAttribute("dispmsg", "DATA NOT ENTERED");
					m.addAttribute("productmodel", c);
					m.addAttribute("editmode", true);
				}
			}

		} catch (Exception e) {

			m.addAttribute("showmess", true);
			m.addAttribute("dispmsg", "TRY AFTER SOMETIME");
			m.addAttribute("productmodel", c);
			m.addAttribute("editmode", true);
		}

		m.addAttribute("editmode", false);
		m.addAttribute("productpage", true);
		m.addAttribute("catlist", catdao.selectAll());
		m.addAttribute("sellist", seldao.selectAll());
		return "index";

	}

}
