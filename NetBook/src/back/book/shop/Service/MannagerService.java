package back.book.shop.Service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import net.book.entity.Mannager;
import net.book.repository.MannagerIml;
import net.book.utils.Myutils;


public class MannagerService implements MannagerIml{

	@Override
	public boolean search(Mannager mannager) {
		SqlSession sqlSession =Myutils.getSqlSession();
		try {
			Mannager man=sqlSession.selectOne("ManagerNameSpace.search", mannager);
			if(man.getName().equals(mannager.getName())) {
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
    public static void main(String[] args) {
    	Mannager man=new Mannager();
    	man.setName("admin");
    	System.out.println(new MannagerService().search(man));
    }
	


   
}
