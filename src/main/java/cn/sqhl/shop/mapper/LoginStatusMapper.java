package cn.sqhl.shop.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.sqhl.shop.vo.LoginStatus;

public interface LoginStatusMapper {
    int deleteByPrimaryKey(String id);

    int insert(LoginStatus record);

    int insertSelective(LoginStatus record);

    LoginStatus selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(LoginStatus record);

    int updateByPrimaryKey(LoginStatus record);
    
    LoginStatus queryStatus(@Param("map") Map<String, Object> map);
}