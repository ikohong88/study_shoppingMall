package com.shopping.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SellerInfoVO {
    private Integer si_seq;
    private String si_id;
    private String si_pwd;
    private String si_name;
    private String si_address;
    private String si_email;
    private String si_phone;

    public Integer getSi_seq() {
        return this.si_seq;
    }

    public void setSi_seq(Integer si_seq) {
        this.si_seq = si_seq;
    }

    public String getSi_id() {
        return this.si_id;
    }

    public void setSi_id(String si_id) {
        this.si_id = si_id;
    }

    public String getSi_pwd() {
        return this.si_pwd;
    }

    public void setSi_pwd(String si_pwd) {
        this.si_pwd = si_pwd;
    }

    public String getSi_name() {
        return this.si_name;
    }

    public void setSi_name(String si_name) {
        this.si_name = si_name;
    }

    public String getSi_address() {
        return this.si_address;
    }

    public void setSi_address(String si_address) {
        this.si_address = si_address;
    }

    public String getSi_email() {
        return this.si_email;
    }

    public void setSi_email(String si_email) {
        this.si_email = si_email;
    }

    public String getSi_phone() {
        return this.si_phone;
    }

    public void setSi_phone(String si_phone) {
        this.si_phone = si_phone;
    }

}
