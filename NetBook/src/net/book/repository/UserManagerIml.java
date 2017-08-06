package net.book.repository;

import java.util.List;

import net.book.entity.User;

public interface UserManagerIml {
  
	List<User> getAllUser();
	boolean deleteUser(User user);
	
}
