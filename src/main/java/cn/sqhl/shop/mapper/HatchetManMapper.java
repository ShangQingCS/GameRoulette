package cn.sqhl.shop.mapper;

import cn.sqhl.shop.vo.HatchetMan;

public interface HatchetManMapper {
    int deleteByPrimaryKey(String id);

    int insert(HatchetMan record);

    int insertSelective(HatchetMan record);

    HatchetMan selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(HatchetMan record);

    int updateByPrimaryKey(HatchetMan record);
}