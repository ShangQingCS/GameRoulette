package cn.sqhl.shop.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.sqhl.shop.vo.HatchetMan;

public interface HatchetManMapper {
    int deleteByPrimaryKey(String id);

    int insert(HatchetMan record);

    int insertSelective(HatchetMan record);

    HatchetMan selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(HatchetMan record);

    int updateByPrimaryKey(HatchetMan record);
    
    HatchetMan queryHatchetMan(@Param("map") Map<String, Object> map);
}