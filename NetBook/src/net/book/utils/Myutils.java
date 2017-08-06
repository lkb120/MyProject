package net.book.utils;

import java.io.IOException;
import java.io.Reader;
import java.sql.Connection;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import net.book.entity.User;

public class Myutils {
	private static ThreadLocal<SqlSession> threadLocal = new ThreadLocal<SqlSession>();
	private static SqlSessionFactory sqlSessionFactory;
	/**
	 * 加载位于src/mybatis.xml配置文件
	 */
	static{
		try {
			Reader reader = Resources.getResourceAsReader("Dbmapping.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	/**
	 * 禁止外界通过new方法创建 
	 */
	private Myutils(){}
	/**
	 * 获取SqlSession
	 */
	public static SqlSession getSqlSession(){
		//从当前线程中获取SqlSession对象
		SqlSession sqlSession = threadLocal.get();
		//如果SqlSession对象为空
		if(sqlSession == null){
			//在SqlSessionFactory非空的情况下，获取SqlSession对象
			sqlSession = sqlSessionFactory.openSession();
			//将SqlSession对象与当前线程绑定在一起
			threadLocal.set(sqlSession);
		}
		//返回SqlSession对象
		return sqlSession;
	}
	/**
	 * 关闭SqlSession与当前线程分开
	 */
	public static void closeSqlSession(){
		//从当前线程中获取SqlSession对象
		SqlSession sqlSession = threadLocal.get();
		//如果SqlSession对象非空
		if(sqlSession != null){
			//关闭SqlSession对象
			sqlSession.close();
			//分开当前线程与SqlSession对象的关系，目的是让GC尽早回收
			threadLocal.remove();
		}
	}
	
	/**
	 * 测试
	 */
	public static void main(String[] args) {
		String sql="insert into user(id,u_name,u_password) values (1,'流行','1234')";
		Myutils.getSqlSession().insert(sql, User.class);
		
	}
}
