package com.struts2.test;

import java.util.Locale;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	private static final long serialVersion = 1L;
	
	private String flag;
	
	public String getFlag() {
		return flag;
	}
	
	public void setFlag(String flag) {
		this.flag = flag;
	}
	
	public String ha() throws Exception{
		this.flag = ServletActionContext.getRequest().getParameter("flag");
		Locale l = Locale.getDefault();
		if(this.flag == null) {
			l = new Locale("zh", "CN");
		}else if(this.flag.equals("2")) {
			l = new Locale("zh", "CN");
		}else if(this.flag.equals("1")) {
			l = new Locale("en", "US");
		}
		ActionContext.getContext().setLocale(l);
		return "success";
	}
}
