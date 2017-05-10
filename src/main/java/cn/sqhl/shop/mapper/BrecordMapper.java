package cn.sqhl.shop.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.sqhl.shop.vo.Brecord;

public interface BrecordMapper {
    int deleteByPrimaryKey(String id);

    int insert(Brecord record);

    int insertSelective(Brecord record);

    Brecord selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Brecord record);

    int updateByPrimaryKey(Brecord record);
    
    List<Map<String,Object>> selectByBatchId(String batchId);
    
    Double selectSumShares(String batchId);
    
    void selectNextBatList(@Param(value="map") Map<String,Object> map);
}