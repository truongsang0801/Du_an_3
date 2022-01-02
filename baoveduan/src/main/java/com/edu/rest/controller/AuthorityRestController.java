package com.edu.rest.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.edu.entity.Authority;
import com.edu.service.AuthorityService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/authorities")
public class AuthorityRestController {
	@Autowired
	AuthorityService authorityService;
	
	@GetMapping
	public List<Authority> findAll(@RequestParam("admin")Optional<Boolean> admin){
		// Nếu role là false sẻ trả về DIRE với STAFF
		if(admin.orElse(false)) {
			return authorityService.findAuthoritiesOfAdministrators(); 
		} // Trả về all role
		return authorityService.findAll();
	}
	
	// Thêm role mới
	@PostMapping
	public Authority post(@RequestBody Authority auth) {
		return authorityService.create(auth);
	}
	// Thu hồi role
	@DeleteMapping("{id}")
	public void delete(@PathVariable("id")Integer id) {
		authorityService.delete(id);
	}
}
