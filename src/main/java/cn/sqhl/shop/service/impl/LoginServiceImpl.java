package cn.sqhl.shop.service.impl;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.apache.commons.lang.StringUtils;

import cn.sqhl.shop.mapper.BatchGenerationMapper;
import cn.sqhl.shop.mapper.GameDemoMapper;
import cn.sqhl.shop.mapper.HatchetManMapper;
import cn.sqhl.shop.mapper.LoginStatusMapper;
import cn.sqhl.shop.mapper.UserMapper;
import cn.sqhl.shop.service.LoginService;
import cn.sqhl.shop.utils.MD5Util;
import cn.sqhl.shop.vo.BatchGeneration;
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
	
	@Autowired
	private BatchGenerationMapper batchGenerationMapper;
	
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
		map2.put("username", vipusername);
		HatchetMan hman=hatchetManMapper.queryHatchetMan(map1);
		User user=userMapper.queryUser(map2);
		
		Map retunval=new HashMap();
		if(hman !=null && user!=null){
			return hman;
		}else{
			return null;
		}
	}

	@Transactional
	@Override
	public LoginStatus updateSession(String username, String hname,String demoname, String sessionid) {
		Map map=new HashMap();
		LoginStatus newstatus=new LoginStatus();
		
		BatchGeneration bg=new BatchGeneration();
		
		if(StringUtils.isNotEmpty(username)){
			map.put("userid", username);
			newstatus.setUserid(username);
			bg.setUserid(username);
		}
		if(StringUtils.isNotEmpty(hname)){
			map.put("hmanid",hname);
			newstatus.setHmanid(hname);
			bg.setHatchetMan(hname);
		}
		
		if(StringUtils.isNotEmpty(demoname)){
			map.put("demoid",demoname);
			newstatus.setDemoid(demoname);
			bg.setUserid(username);
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
		
		int j=1;
		if(StringUtils.isNotEmpty(demoname)){
			j=updateBatchGenaration(bg);
		}else if(StringUtils.isNotEmpty(username) && StringUtils.isNotEmpty(hname)){
			j=updateBatchGenaration(bg);
		}
		
		
		
		if(i>0 && j >0){
			return loginStatusMapper.queryStatus(map);
		}else{
			throw new RuntimeException("tansaction 异常 数据回滚");
		}
	}
	
	public LoginStatus querySession(String sessionid){
		Map map=new HashMap();
		map.put("sessionid",sessionid);
		return loginStatusMapper.queryStatus(map);
	}
	
	public int updateBatchGenaration(BatchGeneration bg){
		BatchGeneration bgs=batchGenerationMapper.queryBatchGenr(bg);
		if(bgs!=null){
			bgs.setBatchId(UUID.randomUUID().toString());
			return batchGenerationMapper.updateByPrimaryKeySelective(bgs);
		}else{
			bg.setBatchId(UUID.randomUUID().toString());
			return batchGenerationMapper.insertSelective(bgs);
		}
	}

}
