package net.book.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import net.book.entity.Book;
import net.book.entity.Order;
import net.book.repository.ShowBookIml;
import net.book.utils.Myutils;

public class ShowBookService implements ShowBookIml {

	public List<Book> getAllBook() {
		SqlSession session=Myutils.getSqlSession();
		List<Book> bookList=null;
		try {
			bookList=session.selectList("BookNameSpace.getAllBook");
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally {
			session.commit();
			Myutils.closeSqlSession();
		}
		return bookList;
	}
	public List<Book> getAllBooks() {
		SqlSession session=Myutils.getSqlSession();
		List<Book> bookList=null;
		try {
			bookList=session.selectList("BookNameSpace.getAllBooks");
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();;
		}finally {
			session.commit();
			Myutils.closeSqlSession();
		}
		return bookList;
	}
	
    public static void main(String[] args){
    	List<Book> bookList=new ShowBookService().getAllBook();
        System.out.println(bookList.size());
    }


}
