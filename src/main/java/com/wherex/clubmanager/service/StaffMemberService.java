package com.wherex.clubmanager.service;

import java.util.List;

import com.wherex.clubmanager.entity.StaffMember;

public interface StaffMemberService {
	
	public List<StaffMember> getStaffMembers();

	public void saveStaffMember(StaffMember newStaffMember);

	public StaffMember getStaffMember(int id);

	public void updateStaffMember(StaffMember newStaffMember);

	public void deleteStaffMember(StaffMember newStaffMember);

}
