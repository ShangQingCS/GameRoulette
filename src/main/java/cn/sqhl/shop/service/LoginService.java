package cn.sqhl.shop.service;

import cn.sqhl.shop.vo.GameDemo;
import cn.sqhl.shop.vo.HatchetMan;
import cn.sqhl.shop.vo.LoginStatus;
import cn.sqhl.shop.vo.User;

public interface LoginService {
	public User AuthenticationUser(String username,String password);
	public GameDemo AuthenticationGameDemo(String username, String password);
	public HatchetMan AuthenticationHatchetMan(String username,String vipusername);
	public LoginStatus updateSession(String username, String vipusername,String demoname, String sessionid);
	public LoginStatus querySession(String sessionid);
}
