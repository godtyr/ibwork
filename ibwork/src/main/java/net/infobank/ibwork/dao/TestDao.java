package net.infobank.ibwork.dao;


import java.util.List;
import java.util.Map;



import net.infobank.ibwork.vo.ListVo;


public interface TestDao {
	
	public int boardTotalCount();
	
	public List<ListVo> boardList(Map<String, Object> map);	
	
	public void boardWrite(Map<String, Object> map);	
	
	public Map<String, Object> boardArticle(Map<String, Object> idx);
	
	public void boardDelete(Integer idx);
	
	public List<ListVo> boardListAll();

}
