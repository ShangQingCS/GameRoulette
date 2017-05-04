package cn.sqhl.shop.mapper;

import cn.sqhl.shop.vo.RouletteChip;

public interface RouletteChipMapper {
    int deleteByPrimaryKey(String id);

    int insert(RouletteChip record);

    int insertSelective(RouletteChip record);

    RouletteChip selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(RouletteChip record);

    int updateByPrimaryKey(RouletteChip record);
}