package CRUD.dao;

import CRUD.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {
    private static final int onPage = 5;

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(user);
     }

    @Override
    public void updateUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(user);
    }

    @Override
    public void removeUser(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User user = (User) session.load(User.class, new Integer(id));

        if(user !=null){
            session.delete(user);
        }
    }

    @Override
    public User getUserById(int id) {
        Session session =this.sessionFactory.getCurrentSession();
        User user = session.load(User.class, new Integer(id));

        return user;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<User> listUsers(int page) {
        Session session = this.sessionFactory.getCurrentSession();

        if(page>pages().size())page=pages().size();

        Query query = session.createQuery("from User");
        query.setFirstResult((page-1)*onPage);
        query.setMaxResults(onPage);

        List<User> userList = query.list();

        return userList;
    }

    @Override
    public List<Integer> pages() {
        Session session = this.sessionFactory.getCurrentSession();
        List<User> userList = session.createQuery("from User").list();

        List<Integer> pages = new ArrayList<>();

        for (int i = 1; i <= userList.size()/onPage ; i++) {
            pages.add(i);
        }

        if(pages.size()*onPage<userList.size()) pages.add(pages.size()+1);

        return pages;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<User> getUsersByName(String name) {

        Session session = this.sessionFactory.getCurrentSession();

        Query query = session.createQuery("from  User where name like :NAME");
        query.setParameter("NAME", "%" + name + "%");

        List<User> userList = query.list();

        return userList;
    }
}
