package cn.sqhl.shop.mapper;

import cn.sqhl.shop.vo.RouletteBasic;

public interface RouletteBasicMapper {
    int deleteByPrimaryKey(String id);

    int insert(RouletteBasic record);

    int insertSelective(RouletteBasic record);

    RouletteBasic selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(RouletteBasic record);

    int updateByPrimaryKey(RouletteBasic record);
}