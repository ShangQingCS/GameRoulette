package cn.sqhl.shop.service;

import java.util.List;
import java.util.Map;

public interface RouletteService {

	List<Map<String,Object>> queryRouletteList(Map map) throws Exception;
}
