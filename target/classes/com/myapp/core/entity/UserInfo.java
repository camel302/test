package com.myapp.core.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.annotations.Parameter;
import org.hibernate.annotations.Type;

import com.myapp.core.base.entity.CoreBaseInfo;
import com.myapp.core.enums.BillState;
import com.myapp.core.enums.Sex;


@Entity
@Table(name="t_pm_user")
public class UserInfo extends CoreBaseInfo{
	private String passWord;
	private boolean isFreeze = false;
	private boolean isAdmin = false;
	private boolean isEnabled = true;
	private BillState billstate;
	private Sex sex;
	@Column(name="fpassword")
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	@Column(name="fisFreeze")
	public boolean isFreeze() {
		return isFreeze;
	}
	public void setFreeze(boolean isFreeze) {
		this.isFreeze = isFreeze;
	}
	@Column(name="fisAdmin")
	public boolean isAdmin() {
		return isAdmin;
	}
	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	@Column(name="fisEnabled")
	public boolean isEnabled() {
		return isEnabled;
	}
	public void setEnabled(boolean isEnabled) {
		this.isEnabled = isEnabled;
	}
	@Column(name="fbillstate",length=50)
	@Type(type="myEnum",parameters={@Parameter(name="enumClass",value="com.myapp.core.enums.BillState")})
	public BillState getBillstate() {
		return billstate;
	}
	public void setBillstate(BillState billstate) {
		this.billstate = billstate;
	}
	@Column(name="fsex",length=4)
	@Type(type="myEnum",
	parameters={@Parameter(name="enumClass",value="com.myapp.core.enums.Sex")})
	public Sex getSex() {
		return sex;
	}
	public void setSex(Sex sex) {
		this.sex = sex;
	}
	
}
