package cn.sqhl.shop.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.sqhl.shop.vo.User;

public interface UserMapper {
    int deleteByPrimaryKey(String id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User queryUser(@Param("map") Map<String, Object> map);
}