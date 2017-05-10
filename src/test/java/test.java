import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import org.springframework.util.StringUtils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import cn.sqhl.shop.utils.security.SecurityConfig;
import cn.sqhl.shop.utils.security.SecurityCore;


public class test {
	public static void main(String[] args) {
		
		Map basemap=new HashMap();
		
		Map param=new HashMap();
//		param.put("level", "");
//		param.put("parent_id", "");
//		param.put("pagesize", "10");
//		param.put("nowpage", "0");
//		basemap.put("servicecode", "3620170315045");//商品分类查询
		
//		param.put("type", "ATTACH_TYPE");
//		param.put("pcode", "");
//		param.put("pagesize", "");
//		param.put("nowpage", "");
//		basemap.put("servicecode", "3620170315045");//字典查询
		
//		param.put("user_id", "");
//		param.put("user_name", "13213213");
//		param.put("coupon_status", "");
//		param.put("pagesize", "10");
//		param.put("nowpage", "0");
//		basemap.put("servicecode", "3620170315035");//会员优惠券查询
		
//		param.put("kind", "0");
//		param.put("location", "0");
//		param.put("type", "50");
//		param.put("start_time", "2017-3-2 00:00:01");
//		param.put("end_time", "2017-7-28 23:59:59");
//		param.put("pagesize", "10");
//		param.put("nowpage", "0");
//		basemap.put("servicecode", "3620170315003");//广告查询
		
//		param.put("event_name", "优惠活动");
//		param.put("event_id", "2");
//		param.put("start_time", "2017-3-1 00:00:01");
//		param.put("end_time", "2017-3-10 23:59:59");
//		param.put("pagesize", "10");
//		param.put("nowpage", "0");
//		basemap.put("servicecode", "3620170315004");//活动查询
		
//		param.put("category_id", "0b3874d6-ff0a-4637-99b8-e50b2dd937c7");
//		basemap.put("servicecode", "3620170315023");//分类属性-属性值接口
		
		
//		param.put("goods_id", "1112");
//		basemap.put("servicecode", "3620170315022");//商品属性-属性值接口
		
//		param.put("brand_id", "");
//		param.put("brand_name", "");
//		param.put("cate_id", "197246e8-a89d-4468-8356-f30577427058");
//		param.put("pagesize", "10");
//		param.put("nowpage", "0");
//		basemap.put("servicecode", "3620170315047");//分类品牌查询


//		param.put("contactid", "");
//		param.put("userid", "");
//		param.put("type", "1");
//		param.put("pagesize", "10");
//		param.put("nowpage", "0");
//		basemap.put("servicecode", "3620170315013");//评论查询接口
		

//		param.put("Btime", "");
//		param.put("Etime", "");
//		param.put("Bamount", "");
//		param.put("Eamount", "");
//		param.put("userid", "2");
//		param.put("way", "");
//		param.put("type", "");
//		param.put("kind", "");
//		param.put("status", "");
//		param.put("pagesize", "10");
//		param.put("nowpage", "0");
//		basemap.put("servicecode", "3620170315015");//交易流水查询接口
		
		
//		param.put("kindid", "");
//		param.put("keyvalue", "回答");
//		param.put("pagesize", "10");
//		param.put("nowpage", "0");
//		basemap.put("servicecode", "3620170315025");//常见问题查询接口
		
		
//		param.put("prentid", "3");
//		param.put("pagesize", "10");
//		param.put("nowpage", "0");
//		basemap.put("servicecode", "3620170315048");//常见问题分类查询接口
		
		
//		param.put("userid", "1");
//		param.put("pagesize", "10");
//		param.put("nowpage", "0");
//		basemap.put("servicecode", "3620170315037");//浏览历史查询接口
		
		
//		param.put("userid", "1");
//		param.put("pagesize", "10");
//		param.put("nowpage", "0");
//		basemap.put("servicecode", "3620170315039");//收藏查询接口
		
//		param.put("userid", "1");
//		param.put("pagesize", "10");
//		param.put("nowpage", "0");
//		basemap.put("servicecode", "3620170315043");//购物车查询接口
		
//		param.put("userid", "1");
//		param.put("pagesize", "10");
//		param.put("nowpage", "0");
//		basemap.put("servicecode", "3620170315049");//商品搜索历史查询接口
		
//		param.put("kindid", "0b3874d6-ff0a-4637-99b8-e50b2dd937c7");
//		param.put("keyvalue", "");
//		param.put("pagesize", "10");
//		param.put("nowpage", "0");
//		basemap.put("servicecode", "3620170315002");//商品列表查询接口
		
//		param.put("userid", "user1");
//		param.put("pagesize", "10");
//		param.put("nowpage", "0");
//		basemap.put("servicecode", "3620170315011");//收货地址查询接口 
		
//		param.put("parentid", "0");
//		param.put("pagesize", "10");
//		param.put("nowpage", "0");
//		basemap.put("servicecode", "3620170315020");//省市县查询接口  
		

//		param.put("receiveid", "1");
//		param.put("receivephone", "18101954697");
//		param.put("receivename", "senl");
//		param.put("smscontent", "欢迎注册成为***会员~");
//		param.put("smstype", "1");
//		param.put("pagesize", "10");
//		param.put("nowpage", "0");
//		basemap.put("servicecode", "3620170315024");//短信发送接口
		
		basemap.put("lotteryNumber", "10");
		basemap.put("betAmount", "10");
		SecurityConfig.sign_type="MD5";
		SecurityConfig.key="595D0F41C567A59FD148F24418F5CB8A";
		
//		basemap.put("data", JSON.toJSONString(param));
		
		Map signvalue=SecurityCore.buildRequestPara(basemap);
		JSONObject jo=new JSONObject();
		jo.putAll(signvalue);
		System.out.println(jo.toJSONString());
		
//		String info="[{\"cateName\":\"惠普\",\"cateOrder\":\"1\",\"id\":\"200490ee-6908-4438-bb11-f1e654e759c1\",\"levels\":\"2\",\"memo\":\"惠普描述\",\"parentId\":\"c6d227c0-c3c9-45c1-a84d-73d5c06fe446\",\"updateTime\":1489050359000},{\"cateName\":\"外星人\",\"cateOrder\":\"2\",\"id\":\"6739ec9e-46f9-40e4-adfb-92a6166622ca\",\"levels\":\"2\",\"memo\":\"外星人描述\",\"parentId\":\"c6d227c0-c3c9-45c1-a84d-73d5c06fe446\",\"updateTime\":1489050440000},{\"cateCode\":\"代码1\",\"cateName\":\"所有类别\",\"cateOrder\":\"1\",\"id\":\"id1\",\"levels\":\"0\",\"memo\":\"所有类别\"},{\"cateName\":\"电脑\",\"cateOrder\":\"3\",\"createTime\":1489041677000,\"id\":\"c6d227c0-c3c9-45c1-a84d-73d5c06fe446\",\"levels\":\"1\",\"memo\":\"电脑描述\",\"parentId\":\"id1\"},{\"cateCode\":\"代码2\",\"cateName\":\"电器\",\"cateOrder\":\"1\",\"id\":\"id2\",\"levels\":\"1\",\"memo\":\"电器描述\",\"parentId\":\"id1\"},{\"cateCode\":\"代码3\",\"cateName\":\"食物\",\"cateOrder\":\"2\",\"id\":\"id3\",\"levels\":\"1\",\"memo\":\"食物描述\",\"parentId\":\"id1\"},{\"cateCode\":\"类代码\",\"cateName\":\"冰箱\",\"cateOrder\":\"1\",\"id\":\"id4\",\"levels\":\"2\",\"memo\":\"冰箱描述\",\"parentId\":\"id2\"},{\"cateCode\":\"类代码\",\"cateName\":\"电视机\",\"cateOrder\":\"2\",\"id\":\"id5\",\"levels\":\"2\",\"memo\":\"电视机描述\",\"parentId\":\"id2\"},{\"cateCode\":\"类代码\",\"cateName\":\"洗衣机\",\"cateOrder\":\"3\",\"id\":\"id6\",\"levels\":\"2\",\"memo\":\"洗衣机描述\",\"parentId\":\"id2\"},{\"cateCode\":\"类代码\",\"cateName\":\"饺子\",\"cateOrder\":\"1\",\"id\":\"id7\",\"levels\":\"2\",\"memo\":\"饺子描述\",\"parentId\":\"id3\"}]";
//		
//		Object obj=JSON.parse(info);
//		
//		System.out.println(((JSONArray)obj).get(0));
	}
}
