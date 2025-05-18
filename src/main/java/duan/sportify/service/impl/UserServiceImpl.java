package duan.sportify.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import duan.sportify.dao.AuthorizedDAO;
import duan.sportify.dao.UserDAO;
import duan.sportify.entities.Authorized;
import duan.sportify.entities.Users;
import duan.sportify.service.AuthorizedService;
import duan.sportify.service.UserService;

@SuppressWarnings("unused")
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserDAO userDAO;

	@Override
	public List<Users> findAll() {
		// TODO Auto-generated method stub
		return userDAO.findAll();
	}

	@Override
	public Users create(Users users) {
		// TODO Auto-generated method stub
		return userDAO.save(users);
	}

	@Override
	public Users update(Users users) {
		// TODO Auto-generated method stub
		return userDAO.save(users);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		userDAO.deleteById(id);
	}

	@Override
	public Users findById(String id) {
		// TODO Auto-generated method stub
		return userDAO.findById(id).get();
	}

	@Override
	public Users findByUsername(String username) {
		// TODO Auto-generated method stub
		return userDAO.findByUsername(username);
	}

	@Override
	public void updateUserLocation(String username, double latitude, double longitude) {
		try {
			Users user = userDAO.findById(username).orElse(null);
			if (user != null) {
				user.setLatitude(latitude);
				user.setLongitude(longitude);
				userDAO.save(user);
			}
		} catch (Exception e) {
			// Log lỗi và tiếp tục
			e.printStackTrace();
		}
	}
	
}
