package net.book.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import net.book.entity.User;
import net.book.repository.UserManagerIml;
import net.book.utils.Myutils;

public class UserManagerService implements UserManagerIml{

	@Override
	public List<User> getAllUser() {
		SqlSession sqlSession = Myutils.getSqlSession();
		List<User> userList=null;
		try {
			userList=sqlSession.selectList("UserNameSpace.findAll");
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.commit();
			Myutils.closeSqlSession();
		}
		return userList;
	}

	@Override
	public boolean deleteUser(User user) {
		SqlSession sqlSession = Myutils.getSqlSession();
		try {
			int index=sqlSession.delete("UserNameSpace.deleteUser",user);
		    if(index>1) {
		    	return true;
		    }
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.commit();
			Myutils.closeSqlSession();
		}
		return false;
	}

}
