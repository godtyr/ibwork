package net.infobank.ibwork.service;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.omg.IOP.ServiceContext;
import org.springframework.stereotype.Service;



import net.infobank.common.common.PageHelper;
import net.infobank.ibwork.dao.TestDao;
import net.infobank.ibwork.vo.ListVo;


	
@Service(value = "testService")
public class TestServiceImpl implements TestService {
	
	Logger log = Logger.getLogger(this.getClass());
	
    @Resource(name = "testDao")
    private TestDao testDao;
 
    public List<ListVo> boardList(PageHelper pageHelper) {
    	
    	
    	Map<String, Object> map = new HashMap<String, Object>();
    	map.put("pageHelper", pageHelper);
    	
        return this.testDao.boardList(map);
    }
    
    
    public void boardWrite(Map<String, Object> map) {
    	this.testDao.boardWrite(map);
    }
    
    public Map<String, Object> boardArticle(Map<String, Object> idx) {
    	return this.testDao.boardArticle(idx);
    }
    
    public void boardDelete(Integer idx) {
    	this.testDao.boardDelete(idx);
    }
    
    public int boardTotalCount() {
    	return this.testDao.boardTotalCount();
    }
    

    /** ¿¢¼¿ ´Ù¿î·Îµå **/
    public List<ListVo> excelDownload(){    	
    	return this.testDao.boardListAll();
    	
    }
 
  
}


