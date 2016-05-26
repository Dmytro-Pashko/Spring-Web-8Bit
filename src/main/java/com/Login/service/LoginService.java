package com.Login.service;

import com.Login.model.*;

public interface LoginService {
    boolean validateUser(Login login);
    void registerUser(Registration registration);
    User getUser(String loginName);
    boolean loginAlreadyExist(String loginName);
}
