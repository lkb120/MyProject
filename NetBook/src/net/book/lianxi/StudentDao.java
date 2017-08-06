package net.book.lianxi;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import net.book.utils.Myutils;

public class StudentDao {

	//动态SQL增加
	 public static void addStudent(Student student) {
		 SqlSession sqlSession = Myutils.getSqlSession();
		 try {
			sqlSession.insert("StudentNameSpace.addStudent", student);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally{
			sqlSession.commit();
			Myutils.closeSqlSession();
		}
	 }
	//动态SQL修改
	 
	 public static void updateStudent(Student student) {
		 SqlSession sqlSession = Myutils.getSqlSession();
		 try {
			sqlSession.update("StudentNameSpace.updateStudent", student);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			sqlSession.commit();
			Myutils.closeSqlSession();
		}
	 }
	//动态SQL删除
	 
	 public static void deleteStudent(int... items) {
		 SqlSession sqlSession= Myutils.getSqlSession();
		 try {
			sqlSession.delete("StudentNameSpace.deleteStudent", items);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally {
			sqlSession.commit();
			Myutils.closeSqlSession();
		}
	 }
	//动态SQL查询
	public static List<Student> selectStudent(Integer id,String name,Double sal) {
	   SqlSession sqlSession = Myutils.getSqlSession();
	   List<Student> list=null;
	   try {
		   Map<String,Object> map=new HashMap<String,Object>();
		   map.put("id", id);
		   map.put("name", name);
		   map.put("sal", sal);
		list=sqlSession.selectList("StudentNameSpace.selectStudent", map);
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		sqlSession.commit();
		Myutils.closeSqlSession();
	}
	return list;
	}
	public static void main(String[] args) {

	     //addStudent(new Student(i,"lili",6000D));
		//updateStudent(new Student(1,"hehe",9600D));
      // deleteStudent(1,2);
		List<Student> list=selectStudent(null, "lili", null);
		for(int i=0;i<list.size();i++) {
			System.out.println(list.get(i).getName()+":"+list.get(i).getId()+":"+list.get(i).getSal());
		}
		
	}
}
