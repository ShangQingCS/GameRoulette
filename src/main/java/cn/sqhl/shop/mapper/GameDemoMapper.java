package cn.sqhl.shop.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.sqhl.shop.vo.GameDemo;

public interface GameDemoMapper {
    int deleteByPrimaryKey(String id);

    int insert(GameDemo record);

    int insertSelective(GameDemo record);

    GameDemo selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(GameDemo record);

    int updateByPrimaryKey(GameDemo record);
    
    GameDemo queryDemo(@Param("map") Map<String, Object> map);
}