package net.book.service;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import net.book.entity.User;
import net.book.repository.RegisterIml;
import net.book.utils.Myutils;

@Service
public class RegisterService implements RegisterIml{

	@Override
	public void add(User user) {
		SqlSession sqlSession = null;
		try {
			sqlSession = Myutils.getSqlSession();
			int i = sqlSession.insert("UserNameSpace.add",user);
			if(i>0)
				System.out.println(i);;
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}finally {
			Myutils.closeSqlSession();
		}
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
	public boolean isHas(String username) {
		List<User> list=findAll();
	     for(User user : list) {
	    	 if(user.getName().equals(username))
	    		 return false;
	     }
		return true;
	}
	public void update(User user) {
		SqlSession sqlSession = Myutils.getSqlSession();
		try {
			sqlSession.update("UserNameSpace.update", user);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally {
			sqlSession.commit();
			Myutils.closeSqlSession();
		}
	}
	
	public void delete(User user) {
		SqlSession sqlSession = Myutils.getSqlSession();
		try {
			sqlSession.delete("UserNameSpace.delete", user);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.commit();
			Myutils.closeSqlSession();
		}
	}
   
}
