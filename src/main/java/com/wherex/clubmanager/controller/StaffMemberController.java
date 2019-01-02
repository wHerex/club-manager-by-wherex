package com.wherex.clubmanager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wherex.clubmanager.entity.StaffMember;
import com.wherex.clubmanager.service.StaffMemberService;

@Controller
@RequestMapping("/staffmembers")
public class StaffMemberController {

	@Autowired
	private StaffMemberService staffMemberService;

	@GetMapping("/list")
	public String listStaffMembers(Model theModel) {

		StaffMember newStaffMember = new StaffMember();

		theModel.addAttribute("newStaffMember", newStaffMember);
				
		List<StaffMember> staffMembers = staffMemberService.getStaffMembers();

		theModel.addAttribute("staffMembers", staffMembers);

		return "staff-members";
	}

	@PostMapping("/saveStaffMember")
	public String saveStaffMember(@ModelAttribute("newStaffMember") StaffMember newStaffMember) {
		staffMemberService.saveStaffMember(newStaffMember);
		return "redirect:/staffmembers/list";
	}

	@PostMapping("/editStaffMember")
	public String editStaffMember(@ModelAttribute("newStaffMember") StaffMember newStaffMember) {

		staffMemberService.updateStaffMember(newStaffMember);
		return "redirect:/staffmembers/list";
	}

	@PostMapping("/deleteStaffMember")
	public String deleteStaffMember(@ModelAttribute("newStaffMember") StaffMember newStaffMember) {
		staffMemberService.deleteStaffMember(newStaffMember);
		return "redirect:/staffmembers/list";
	}

}
