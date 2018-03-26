package com.hanson.service;

import java.util.List;
import java.util.Map;

import com.hanson.common.util.Page;
import com.hanson.model.Announce;
import com.hanson.model.YyPagemodel;

public interface AnnounceService {

	public Page<Map<String, Object>> searchAnnounce(
			Page<Map<String, Object>> page, Map<String, Object> map);

	public long selectcount(Map<String, Object> map);

	public Integer insertAnnounce(Announce bean);

	public Integer RecommendSet(Announce bean);

	public Integer deletebean(Integer id);

	public Announce Querybyid(Integer id);

	public List<Announce> bannerList();

	public Integer updatebean(Announce bean);

	public List<Announce> findAnnounce(String title);

	public Announce selectByName(String title);

	public List<YyPagemodel> getAllYyPageModel();
	
	public Integer updateYyPagemodel(YyPagemodel yyPagemodel);
	
	public YyPagemodel QueryYyPagemodelByid(Integer id);
}
