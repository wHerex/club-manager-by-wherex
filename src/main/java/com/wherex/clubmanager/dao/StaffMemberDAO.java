package com.wherex.clubmanager.dao;

import java.util.List;

import com.wherex.clubmanager.entity.StaffMember;

public interface StaffMemberDAO {
	
	public List<StaffMember> getStaffMembers();

	public void saveStaffMember(StaffMember newStaffMember);

	public StaffMember getStaffMember(int id);

	public void deleteStaffMember(StaffMember newStaffMember);

	

}
