package com.example.loginform.model;

public class EmployeesAcount {
    private String username;
    private String password;

    public EmployeesAcount() {
    }

    public EmployeesAcount(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
