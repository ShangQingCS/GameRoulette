package cn.sqhl.shop.mapper;

import cn.sqhl.shop.vo.BatchGeneration;

public interface BatchGenerationMapper {
    int deleteByPrimaryKey(String id);

    int insert(BatchGeneration record);

    int insertSelective(BatchGeneration record);

    BatchGeneration selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(BatchGeneration record);

    int updateByPrimaryKey(BatchGeneration record);
    
    BatchGeneration queryBatchGenr(BatchGeneration record);
}