package net.book.service;
import org.apache.ibatis.session.SqlSession;
import net.book.entity.Book;
import net.book.repository.BookManagerIml;
import net.book.utils.Myutils;

public class BookManagerService implements BookManagerIml{

	@Override
	public boolean addBook(Book book) {
		SqlSession sqlSession = Myutils.getSqlSession();
		try {
			int index=sqlSession.insert("BookNameSpace.addBook", book);
			if(index>1)
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.commit();
			Myutils.closeSqlSession();
		}
		return false;
	}

	@Override
	public boolean deleteBook(Book book) {
		SqlSession sqlSession = Myutils.getSqlSession();
		try {
			int index=sqlSession.delete("BookNameSpace.deleteBook", book);
			if(index>1)
			return true;
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
