package model;

public class User {
    private String acc_id;
    private String acc_email;
    private String acc_password;
    private String acc_fullname;
    private String acc_dob;
    private String acc_gender;
    private String acc_phone;
    private String acc_type;

    public User() {
    }

    public User(String acc_id, String acc_email, String acc_password, String acc_fullname, String acc_dob, String acc_gender, String acc_phone, String acc_type) {
        this.acc_id = acc_id;
        this.acc_email = acc_email;
        this.acc_password = acc_password;
        this.acc_fullname = acc_fullname;
        this.acc_dob = acc_dob;
        this.acc_gender = acc_gender;
        this.acc_phone = acc_phone;
        this.acc_type = acc_type;
    }

    public String getAcc_id() {
        return acc_id;
    }

    public void setAcc_id(String acc_id) {
        this.acc_id = acc_id;
    }

    public String getAcc_email() {
        return acc_email;
    }

    public void setAcc_email(String acc_email) {
        this.acc_email = acc_email;
    }

    public String getAcc_password() {
        return acc_password;
    }

    public void setAcc_password(String acc_password) {
        this.acc_password = acc_password;
    }

    public String getAcc_fullname() {
        return acc_fullname;
    }

    public void setAcc_fullname(String acc_fullname) {
        this.acc_fullname = acc_fullname;
    }

    public String getAcc_dob() {
        return acc_dob;
    }

    public void setAcc_dob(String acc_dob) {
        this.acc_dob = acc_dob;
    }

    public String getAcc_gender() {
        return acc_gender;
    }

    public void setAcc_gender(String acc_gender) {
        this.acc_gender = acc_gender;
    }

    public String getAcc_phone() {
        return acc_phone;
    }

    public void setAcc_phone(String acc_phone) {
        this.acc_phone = acc_phone;
    }

    public String getAcc_type() {
        return acc_type;
    }

    public void setAcc_type(String acc_type) {
        this.acc_type = acc_type;
    }

    @Override
    public String toString() {
        return "User{" + "acc_id=" + acc_id + ", acc_email=" + acc_email + ", acc_password=" + acc_password + ", acc_fullname=" + acc_fullname + ", acc_dob=" + acc_dob + ", acc_gender=" + acc_gender + ", acc_phone=" + acc_phone + ", acc_type=" + acc_type + '}';
    }

}
