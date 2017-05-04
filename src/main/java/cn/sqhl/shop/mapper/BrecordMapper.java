package cn.sqhl.shop.mapper;

import cn.sqhl.shop.vo.Brecord;

public interface BrecordMapper {
    int deleteByPrimaryKey(String id);

    int insert(Brecord record);

    int insertSelective(Brecord record);

    Brecord selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Brecord record);

    int updateByPrimaryKey(Brecord record);
}