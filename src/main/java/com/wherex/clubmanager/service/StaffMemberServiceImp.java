package com.wherex.clubmanager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wherex.clubmanager.dao.StaffMemberDAO;
import com.wherex.clubmanager.entity.StaffMember;

@Service
public class StaffMemberServiceImp implements StaffMemberService {

	@Autowired
	private StaffMemberDAO staffMemberDAO;
	
	
	@Override
	@Transactional
	public List<StaffMember> getStaffMembers() {		
		return staffMemberDAO.getStaffMembers();
	}

	@Override
	@Transactional
	public void saveStaffMember(StaffMember newStaffMember) {
		staffMemberDAO.saveStaffMember(newStaffMember);		
	}

	@Override
	@Transactional
	public StaffMember getStaffMember(int id) {	
		return staffMemberDAO.getStaffMember(id);
	}

	@Override
	@Transactional
	public void updateStaffMember(StaffMember newStaffMember) {
		staffMemberDAO.saveStaffMember(newStaffMember);
		
	}

	@Override
	@Transactional
	public void deleteStaffMember(StaffMember newStaffMember) {
		staffMemberDAO.deleteStaffMember(newStaffMember);
		
	}

	

}
