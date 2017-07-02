package CRUD.dao;

import CRUD.model.User;

import java.util.List;

public interface UserDao {
    public void addUser(User user);

    public void updateUser(User user);

    public void removeUser(int id);

    public User getUserById(int id);

    public List<User> listUsers(int page);

    public List<User> getUsersByName(String name);

    public List<Integer> pages();

}
