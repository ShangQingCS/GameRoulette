package cn.sqhl.shop.mapper;

import cn.sqhl.shop.vo.Trecord;

public interface TrecordMapper {
    int deleteByPrimaryKey(String id);

    int insert(Trecord record);

    int insertSelective(Trecord record);

    Trecord selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Trecord record);

    int updateByPrimaryKey(Trecord record);
}