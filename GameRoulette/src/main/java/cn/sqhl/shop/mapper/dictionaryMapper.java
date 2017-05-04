package cn.sqhl.shop.mapper;

import cn.sqhl.shop.vo.dictionary;

public interface dictionaryMapper {
    int deleteByPrimaryKey(String id);

    int insert(dictionary record);

    int insertSelective(dictionary record);

    dictionary selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(dictionary record);

    int updateByPrimaryKey(dictionary record);
}