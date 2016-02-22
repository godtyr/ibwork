package net.infobank.ibwork.service;

import java.util.List;
import java.util.Map;

import org.apache.poi.xssf.usermodel.XSSFSheet;

import net.infobank.common.common.PageHelper;
import net.infobank.ibwork.vo.ListVo;

public interface TestService {
	
	public int boardTotalCount();
	
	public List<ListVo> boardList(PageHelper pageHelper);
	
	public void boardWrite(Map<String, Object> map);
	
	public Map<String, Object> boardArticle(Map<String, Object> idx);
	
	public void boardDelete(Integer idx);	
	

	
	public List<ListVo> excelDownload();
}
