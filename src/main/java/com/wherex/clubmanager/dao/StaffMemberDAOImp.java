package com.wherex.clubmanager.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.wherex.clubmanager.entity.StaffMember;


@Repository
public class StaffMemberDAOImp implements StaffMemberDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<StaffMember> getStaffMembers() {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<StaffMember> theQuery = currentSession.createQuery("from StaffMember",StaffMember.class);
		
		List<StaffMember> staffMembers = theQuery.getResultList();
		
		return staffMembers;
	}

	@Override
	public void saveStaffMember(StaffMember newStaffMember) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		
		currentSession.saveOrUpdate(newStaffMember);	
	}

	@Override
	public StaffMember getStaffMember(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		StaffMember tempStaffMember = currentSession.get(StaffMember.class, id);
		return tempStaffMember;
	}

	@Override
	public void deleteStaffMember(StaffMember newStaffMember) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.delete(newStaffMember);
		
	}

	
	
	

	

}
