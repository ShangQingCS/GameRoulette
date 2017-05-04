package cn.sqhl.shop.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.apache.commons.lang.StringUtils;

import cn.sqhl.shop.mapper.GameDemoMapper;
import cn.sqhl.shop.mapper.HatchetManMapper;
import cn.sqhl.shop.mapper.LoginStatusMapper;
import cn.sqhl.shop.mapper.UserMapper;
import cn.sqhl.shop.service.LoginService;
import cn.sqhl.shop.utils.MD5Util;
import cn.sqhl.shop.vo.GameDemo;
import cn.sqhl.shop.vo.HatchetMan;
import cn.sqhl.shop.vo.LoginStatus;
import cn.sqhl.shop.vo.User;

@Service("loginService")
public class LoginServiceImpl implements LoginService{

	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private GameDemoMapper gameDemoMapper;
	
	@Autowired
	private HatchetManMapper hatchetManMapper;
	
	@Autowired
	private LoginStatusMapper loginStatusMapper;
	
	@Override
	public User AuthenticationUser(String username, String password) {
		Map map=new HashMap();
		map.put("username", username);
		map.put("password", MD5Util.MD5(password));
		User user=userMapper.queryUser(map);
		
		Map retunval=new HashMap();
		if(user!=null){
			return user;
		}else{			
			return null;
		}
	}
	
	@Override
	public GameDemo AuthenticationGameDemo(String username, String password) {
		Map map=new HashMap();
		map.put("username", username);
		map.put("password", MD5Util.MD5(password));
		GameDemo user=gameDemoMapper.queryDemo(map);
		
		Map retunval=new HashMap();
		if(user!=null){
			return user;
		}else{			
			return null;
		}
	}

	@Override
	public HatchetMan AuthenticationHatchetMan(String username, String vipusername) {
		Map map1=new HashMap();
		map1.put("username", username);
		Map map2=new HashMap();
		map2.put("vipusername", vipusername);
		HatchetMan hman=hatchetManMapper.queryHatchetMan(map1);
		User user=userMapper.queryUser(map2);
		
		Map retunval=new HashMap();
		if(hman !=null && user!=null){
			return hman;
		}else{
			return null;
		}
	}

	@Override
	public LoginStatus updateSession(String username, String hname,String demoname, String sessionid) {
		Map map=new HashMap();
		LoginStatus newstatus=new LoginStatus();
		
		if(StringUtils.isNotEmpty(username)){
			map.put("userid", username);
			newstatus.setUserid(username);
		}
		if(StringUtils.isNotEmpty(hname)){
			map.put("hmanid",hname);
			newstatus.setHmanid(hname);
		}
		
		if(StringUtils.isNotEmpty(demoname)){
			map.put("demoid",demoname);
			newstatus.setDemoid(demoname);
		}
		//在记录中查找是否有对应的记录
		LoginStatus lstatus=loginStatusMapper.queryStatus(map);
		
		if(StringUtils.isNotEmpty(sessionid)){
			map.put("sessionid",sessionid);
			newstatus.setSessionid(sessionid);
		}
		
		int i=0;
		if(lstatus!=null){//有记录更新 seesionId
			newstatus.setId(lstatus.getId());
			i=loginStatusMapper.updateByPrimaryKeySelective(newstatus);
		}else{//没记录insert 记录
			i=loginStatusMapper.insertSelective(newstatus);
		}
		
		if(i>0){
			return loginStatusMapper.queryStatus(map);
		}else{
			return null;
		}
	}
	
	public LoginStatus querySession(String sessionid){
		Map map=new HashMap();
		map.put("sessionid",sessionid);
		return loginStatusMapper.queryStatus(map);
	}

}
