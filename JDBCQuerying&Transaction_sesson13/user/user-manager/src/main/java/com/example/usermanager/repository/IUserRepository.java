package com.example.usermanager.repository;

import com.example.usermanager.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserRepository {
    void insertUser(User user) throws SQLException;

    User selectUser(int id);

    List<User> selectAllUsers();

    boolean deleteUser(int id) throws SQLException;

    boolean updateUser(User user) throws SQLException;
    List<User> findByCountry(String fCountry);
    User getUserById(int id);
    void insertUserStore(User user);
    void addUserTransaction(User user);
    List<User> selectAllUserByCallable();
    boolean updateUserByCallable(User user);
}
