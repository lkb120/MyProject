package net.book.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import net.book.entity.User;
import net.book.repository.LoginIml;
import net.book.utils.Myutils;

public class LoginService implements LoginIml {

	
	public boolean isHasUser(String name, String password) {
		List<User> userList=findAll();
		for(User user:userList) {
			
			if(user.getName().equals(name)&&user.getPassword().equals(password)) {
				return true;
			}
		}
		return false;
		
	}
	private List<User> findAll() {
		SqlSession sqlSession = Myutils.getSqlSession();
		List<User> list=null;
		try {
			list=sqlSession.selectList("UserNameSpace.findAll");
			
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}finally {
			sqlSession.commit();
			Myutils.closeSqlSession();
		}
		return list;
	}

	
}
