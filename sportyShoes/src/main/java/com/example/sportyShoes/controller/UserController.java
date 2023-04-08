package com.example.sportyShoes.controller;

import java.net.URI;
import java.time.LocalDate;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import org.springframework.web.util.UriComponentsBuilder;

import com.example.sportyShoes.entity.Purchase;
import com.example.sportyShoes.entity.Shoe;
import com.example.sportyShoes.entity.ShoeCategory;
import com.example.sportyShoes.entity.User;
import com.example.sportyShoes.repository.AdminCategoryRepository;
import com.example.sportyShoes.repository.AdminShoesRepository;
import com.example.sportyShoes.repository.PurchaseDetailsRepository;
import com.example.sportyShoes.repository.UserRepository;

@Controller
public class UserController {
	
	@Autowired
	private UserRepository userrepo;
	
	@Autowired
	private AdminCategoryRepository categoryrepo;
	
	@Autowired
	private AdminShoesRepository shoesrepo;
	
	@Autowired
	private PurchaseDetailsRepository purrepo;
	
	
	@RequestMapping("/addShoes")
	public ModelAndView register(@Param("shoesid") Integer shoesid,HttpServletRequest request) {
		HttpSession session= request.getSession();
		Object user = session.getAttribute("user");
		User user3 = (User) user;
		Integer userid = user3.getId();
		
		Optional<User> user1 = userrepo.findById(userid);
		User user2 = user1.get();
		
		Optional<Shoe> shoe = shoesrepo.findById(shoesid);
		Shoe shoe1 = shoe.get();
		
		Optional<ShoeCategory> category = categoryrepo.findById(shoe1.getCategory().getId());
		ShoeCategory category1 = category.get();
		
		Purchase purchase = new Purchase();
		purchase.setUser(user2);
		purchase.setCategory(category1);
		purchase.setDate(LocalDate.now());
		purrepo.save(purchase);
		
		URI uri= UriComponentsBuilder.fromPath("/userHome").build().toUri();
		
		RedirectView redirectView = new RedirectView(uri.toString(),true);
		
		
		return new ModelAndView(redirectView);
	}
}
