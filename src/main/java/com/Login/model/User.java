package com.Login.model;

import javax.persistence.*;

/**
 * Created by Antilamer on 11.05.2016.
 */
@Entity
@Table(name = "users")
public class User {
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Id
    @Column(name = "login", unique = true, nullable = false, length = 16)
    private String UserLogin;
    @Column(name = "password", nullable = false, length = 128)
    private String UserPassword;
    @Column(name = "fullName", nullable = false, length = 64)
    private String UserFullName;
    @Column(name = "email", unique = true, nullable = false, length = 64)
    private String UserEmail;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserLogin() {
        return UserLogin;
    }

    public void setUserLogin(String userLogin) {
        UserLogin = userLogin;
    }

    public String getUserPassword() {
        return UserPassword;
    }

    public void setUserPassword(String userPassword) {
        UserPassword = userPassword;
    }

    public String getUserFullName() {
        return UserFullName;
    }

    public void setUserFullName(String userFullName) {
        UserFullName = userFullName;
    }

    public String getUserEmail() {
        return UserEmail;
    }

    public void setUserEmail(String userEmail) {
        this.UserEmail = userEmail;
    }

    public User(Registration registrationForm)
    {
        this.UserLogin = registrationForm.getRegisterlogin();
        this.UserPassword = registrationForm.getRegisterpassword();
        this.UserFullName = registrationForm.getRegisterfullname();
        this.UserEmail = registrationForm.getRegisteremail();
    }

    public User() {

    }
}
