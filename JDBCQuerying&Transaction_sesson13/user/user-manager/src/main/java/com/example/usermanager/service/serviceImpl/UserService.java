package com.example.usermanagement.service.serviceImpl;

import com.example.usermanagement.model.User;
import com.example.usermanagement.repository.IUserRepository;
import com.example.usermanagement.repository.repositoryImpl.UserRepository;
import com.example.usermanagement.service.IUserService;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService {
    private IUserRepository userRepository = new UserRepository();
    @Override
    public void insertUser(User user) throws SQLException {
        userRepository.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return userRepository.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return userRepository.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) {
        try {
            return userRepository.deleteUser(id);
        } catch (SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateUser(User user) {
        try {
            return userRepository.updateUser(user);
        }
        catch (SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public List<User> findByCountry(String country) {
        return userRepository.findByCountry(country);
    }
}
