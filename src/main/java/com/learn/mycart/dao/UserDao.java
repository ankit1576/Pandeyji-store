package com.learn.mycart.dao;

import com.learn.mycart.entities.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class UserDao {

    private SessionFactory factory;

    public UserDao(SessionFactory factory) {
        this.factory = factory;
    }
     
    //get user by email and password
    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;

        try {
            System.out.println("Email: " + email);
            System.out.println("Password: " + password);

            String query = "from User where userEmail =: e and userPassword=: p";
            Session session = this.factory.openSession();
            Query q = session.createQuery(query);
            q.setParameter("e", email);
            q.setParameter("p", password);
            user = (User) q.uniqueResult();
            session.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }
    public User getUserById(int userId) {
    Session session = this.factory.openSession();
    User user = null;
    try {
        String query = "from User where userId =: id";
        Query q = session.createQuery(query);
        q.setParameter("id", userId);
        user = (User) q.uniqueResult();
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        session.close();
    }
    return user;
}
public void updateUser(User user) {
    Session session = this.factory.openSession();
    Transaction tx = null;
    try {
        tx = session.beginTransaction();
        session.update(user);
        tx.commit();
    } catch (Exception e) {
        if (tx != null) {
            tx.rollback();
        }
        e.printStackTrace();
    } finally {
        session.close();
    }
}


}
