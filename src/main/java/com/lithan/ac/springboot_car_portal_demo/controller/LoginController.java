package com.lithan.ac.springboot_car_portal_demo.controller;

import java.util.List;


import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lithan.ac.springboot_car_portal_demo.entities.Car;
import com.lithan.ac.springboot_car_portal_demo.entities.Role;
import com.lithan.ac.springboot_car_portal_demo.entities.User;
import com.lithan.ac.springboot_car_portal_demo.services.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	

	//Load the Login Page
    @GetMapping("cus_login_page")
    public String onLogin() {
        return "login";
    }


    //For Login Error
    @GetMapping("login_error")
    public String onLoginError(Model model) {
        String error_msg = "Incorrect username or password. Try Again.";
        System.out.println("Incorrect username or password. ");
        model.addAttribute("error_string", error_msg);
        return "login";
    }
    
    //For Register
    @GetMapping("new")
	public String newUserForm(Map<String, Object> model) {
    	System.out.println("new Login Controller");
		User user = new User();
		model.put("user", user);
		return "new_user";
	}
    
    //Save register user to database
	@PostMapping("save")
	public String saveStore(@ModelAttribute("user") User user, Model model) {
		System.out.println("/save Login Controller");
		userService.save(user);
		String register_success = "<h5> Registeration Successful! </h5>";
		model.addAttribute("register_success", register_success);
		return "new_user";
	}
	
	
    @GetMapping("users")
    public String viewUsers(Model model) {
        List<User> users = userService.listAll();
        if(!CollectionUtils.isEmpty(users)) {
            model.addAttribute("userlists", users);
        }
        return "all_user";
    }
    
    
    @GetMapping("about")
    public String about() {
        return "aboutUs";
    }
    
    
    @GetMapping("contact")
    public String contact() {
        return "contactUs";
    }
    
    @GetMapping("dashboardu")
    public String dashboardu(Model model) {
        // Retrieve the current user from the database
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User currentUser = userService.getUserByName(auth.getName());

        // Check if the user is null before using it
        if (currentUser != null) {
            // Log user details for debugging
            System.out.println("User Dashboard - Name: " + currentUser.getName() +
                    ", Username: " + currentUser.getUserName() +
                    ", Password: " + currentUser.getPassword());

            // Add the user to the model
            model.addAttribute("user", currentUser);
        }

        return "user_dashboard";
    }



    @GetMapping("dashboarda")
    public String dashboarda(Model model) {
        // Retrieve the current user from the database
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User currentUser = userService.getUserByName(auth.getName());

        // Add the user to the model
        model.addAttribute("user", currentUser);

        return "admin_dashboard";
    }
    
    @GetMapping("editpr")
	public String editProfileForm(@RequestParam long id, Model model) {
		System.out.println("Update profile controller method");
		User user = userService.get(id);
		model.addAttribute("user", user);
		return "updateProfile";
	}


    @PostMapping("/updatePro")
    public String updateProfile(@ModelAttribute("user") User updatedUser, Model model) {
        // Retrieve the current user from the database
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User currentUser = userService.getUserByName(auth.getName());

        // Update the user details
        currentUser.setName(updatedUser.getName());
        currentUser.setUserName(updatedUser.getUserName());
        currentUser.setPassword(updatedUser.getPassword());

        Set<Role> roles = currentUser.getRoles();
        if (containsRole(roles, "Users")) {
            // Update user profile
            userService.updateUserProfile(currentUser);
            model.addAttribute("user", currentUser); // Add the user to the model
            return "user_dashboard";
        } else if (containsRole(roles, "Administrator")) {
            // Update admin profile
            userService.updateAdminProfile(currentUser);
            model.addAttribute("user", currentUser); // Add the user to the model
            return "admin_dashboard";
        } else {
            // Handle unknown roles or other cases
            return "redirect:/login"; // Redirect to login page or handle appropriately
        }
    }



    private boolean containsRole(Set<Role> roles, String name) {
        for (Role role : roles) {
            if (role.getName().equals(name)) {
                return true;
            }
        }
        return false;
    }

    
}
