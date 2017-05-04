package cn.sqhl.shop.mapper;

import cn.sqhl.shop.vo.RouletteRole;

public interface RouletteRoleMapper {
    int deleteByPrimaryKey(String id);

    int insert(RouletteRole record);

    int insertSelective(RouletteRole record);

    RouletteRole selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(RouletteRole record);

    int updateByPrimaryKey(RouletteRole record);
}