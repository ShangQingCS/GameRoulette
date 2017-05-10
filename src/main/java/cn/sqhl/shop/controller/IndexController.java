package cn.sqhl.shop.controller;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import cn.sqhl.shop.service.LoginService;
import cn.sqhl.shop.service.RouletteService;
import cn.sqhl.shop.utils.FormatUtils;
import cn.sqhl.shop.utils.security.SecurityConfig;
import cn.sqhl.shop.utils.security.SecurityCore;
import cn.sqhl.shop.vo.LoginStatus;

@Controller
@RequestMapping("/index")
public class IndexController {
	
	private Logger logger = LogManager.getLogger(this.getClass());
	public static final Level ERROR = Level.ERROR;
	public static final Level INFO = Level.INFO;
	public static final Level DEBUG = Level.DEBUG;
	
	protected String ver="1.0";
	protected String result;
	protected String message;
	protected Object data;
	
	@Autowired
	RouletteService rouletteService;
	
	@Autowired
	LoginService loginService;
	
	@RequestMapping("/vip")
	public String Vip(Model model, HttpServletRequest request){
		return "/jsp/vipview/roulette";
	}
	
	
	
	@RequestMapping("/view")
	public String View(Model model, HttpServletRequest request){
		
		return "/jsp/mview/mRoulette";
	}
	
	
	
	@RequestMapping("/demo")
	public String Demn(Model model, HttpServletRequest request){
		return "/jsp/view/roulette";
	}
	
	@ResponseBody
	@RequestMapping("/getnext")
	public JSONObject getNext(HttpServletRequest request,HttpServletResponse response){
		JSONObject jreturn = null;
		Map basemap = new HashMap();
		try {
			Map requestmap = getRequestMap(request);
			
			SecurityConfig.sign_type="MD5";
			
			Map map1=SecurityCore.paraFilter(requestmap);
			//SecurityConfig.key=request.getSession().getId();
			LoginStatus ls=loginService.getSession(map1);
			if(ls==null){
				if(StringUtils.isNotEmpty(ls.getSessionid())){
					SecurityConfig.key=ls.getSessionid();
				}
				if (SecurityCore.getSignVeryfy(requestmap)) {
					String lotteryNumber=map1.get("lotteryNumber")==null?"":map1.get("lotteryNumber")+"";
					String betAmount=map1.get("betAmount")==null?"":map1.get("betAmount")+"";
					String userid=ls.getUserid()==null?ls.getDemoid():ls.getUserid();
					String hmanid=ls.getHmanid()==null?"":ls.getHmanid();
					Map map=new HashMap();
					if(StringUtils.isNotEmpty(lotteryNumber)){
						map.put("lotteryNumber",lotteryNumber);
					}if(StringUtils.isNotEmpty(betAmount)){
						map.put("betAmount",betAmount);
					}if(StringUtils.isNotEmpty(userid)){
						map.put("userid",userid);
					}if(StringUtils.isNotEmpty(hmanid)){
						map.put("hmanid",hmanid);
					}
					if(map.size()>0){
						List rouletteList= rouletteService.queryRouletteList(map);
						data=JSON.toJSONString(rouletteList);
						result="1";
						message="操作成功";
					}
	
				} else {
					result = "1";// 失败
					message = "无法通过验证,请重试。";// 错误原因
					data = null;// 错误 data无返回值
				}
			}else{
				result = "1";// 失败
				message = "无法通过验证,请登录后重新尝试。";// 错误原因
				data = null;// 错误 data无返回值
			}
		} catch (Exception e) {
			result = "1";// 失败
			message = "查询出错 ";// 错误原因
			data = null;// 错误 data无返回值
			logger.log(ERROR, "Exception:" + e.getCause().getClass() + ","
					+ e.getCause().getMessage() + " info:" + e.toString());
			
		}
		
		jreturn = new JSONObject();
		basemap.put("ver", ver);
		basemap.put("result", result);
		basemap.put("message", message);
		basemap.put("data", data);

		Map signvalue = SecurityCore.buildRequestPara(basemap);

		jreturn.putAll(signvalue);
		return jreturn;

	}
	
	protected Map getRequestMap(HttpServletRequest request) throws Exception {
		InputStream requestjson = request.getInputStream();
		String encoding = request.getCharacterEncoding(); 
		String locationsJSONString=IOUtils.toString(requestjson,encoding);
		logger.log(INFO,"request Decrypt info :  "+locationsJSONString);
		//JSONObject requestString=JSONObject.parseObject(locationsJSONString);
		if(locationsJSONString!=null && locationsJSONString.length() >0){
			return FormatUtils.convertJsonStrToMap(locationsJSONString);
		}else{
			return null;
		}
	}
}
