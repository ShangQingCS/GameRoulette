package cn.sqhl.shop.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sqhl.shop.mapper.BrecordMapper;
import cn.sqhl.shop.service.RouletteService;


@Service("rouletteService")
public class RouletteServiceImpl implements RouletteService{
	
	@Autowired
	private BrecordMapper brecordMapper;

	@Override
	public List<Map<String,Object>> queryRouletteList(Map map) throws Exception {
	    brecordMapper.selectNextBatList(map);
	    List<Map<String,Object>>  lists = brecordMapper.selectByBatchId(map.get("BatchId").toString());
		Double sumShares = brecordMapper.selectSumShares(map.get("BatchId").toString());
		Map<String, Object> map2 = new HashMap<>();
		map2.put("sumShares", sumShares);
		lists.add(map2);
		if(lists != null && !lists.isEmpty()){
			return lists;
		}
		return null;
	}
}
