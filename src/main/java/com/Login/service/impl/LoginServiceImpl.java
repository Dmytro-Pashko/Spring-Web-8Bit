package com.Login.service.impl;

import com.Login.model.*;
import com.Login.service.LoginService;
import com.Login.utils.CryptUtil;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("loginService")
public class LoginServiceImpl implements LoginService {

    Logger logger = Logger.getLogger(LoginServiceImpl.class);
    @Autowired(required = false)
    private SessionFactory sessionFactory;


    @Transactional
    @Override
    public boolean validateUser(Login login) {
        User user = getUser(login.getUserlogin());
        if (user == null) {
            return false;
        } else {
            String encodePassword = CryptUtil.md5(login.getPassword());
            logger.info(encodePassword);
            logger.info(login.getPassword());
            if (encodePassword.equals(user.getUserPassword())) {
                return true;
            } else {
                return false;
            }
        }
    }

    @Transactional
    @Override
    public void registerUser(Registration registration) {
        Session session = sessionFactory.getCurrentSession();
        User registerUser = new User(registration);
        logger.info(registerUser.getUserLogin());
        logger.info(registerUser.getUserPassword());
        logger.info(registerUser.getUserEmail());
        logger.info(registerUser.getUserFullName());
        //cryptPassword
        registerUser.setUserPassword(CryptUtil.md5(registerUser.getUserPassword()));
        session.save(registerUser);
    }


    @Transactional(readOnly = true)
    @Override
    public User getUser(String userName) {
        Session session = sessionFactory.getCurrentSession();
        User user = (User) session.get(User.class, userName);
        return user;
    }

    @Transactional(readOnly = true)
    @Override
    public boolean loginAlreadyExist(String loginName) {
        if (getUser(loginName) != null) {
            return true;
        } else
            return false;
    }
}
