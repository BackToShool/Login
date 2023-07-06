/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.user;

/**
 *
 * @author vieth
 */
public class UserError {
    private String userIDError;
    private String passwordError;
    private String roleIDError;
    private String fullNameError;
    private String error;
    private String confirm;

    public UserError() {
        this.userIDError = "";
        this.passwordError = "";
        this.roleIDError = "";
        this.fullNameError = "";
        this.error = "";
        this.confirm= "";
    }

    public UserError(String userIDError, String passwordError, String roleIDError, String fullNameError, String error) {
        this.userIDError = userIDError;
        this.passwordError = passwordError;
        this.roleIDError = roleIDError;
        this.fullNameError = fullNameError;
        this.error = error;
        this.confirm = confirm;
    }

    public String getConfirm() {
        return confirm;
    }

    public void setConfirm(String confirm) {
        this.confirm = confirm;
    }

    public String getUserIDError() {
        return userIDError;
    }

    public void setUserIDError(String userIDError) {
        this.userIDError = userIDError;
    }

    public String getPasswordError() {
        return passwordError;
    }

    public void setPasswordError(String passwordError) {
        this.passwordError = passwordError;
    }

    public String getRoleIDError() {
        return roleIDError;
    }

    public void setRoleIDError(String roleIDError) {
        this.roleIDError = roleIDError;
    }

    public String getFullNameError() {
        return fullNameError;
    }

    public void setFullNameError(String fullNameError) {
        this.fullNameError = fullNameError;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }
    
}
