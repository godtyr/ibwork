package net.infobank.ibwork.controller;




import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.infobank.common.common.CommandMap;
import net.infobank.common.common.PageHelper;
import net.infobank.ibwork.service.TestService;
import net.infobank.ibwork.vo.ListVo;






@Controller
public class Bbs {
	

	
	Logger log = Logger.getLogger(this.getClass());

	
	
	
	@RequestMapping("/bbs.ib")
	public String hello(Model model){
		model.addAttribute("greeting", "�Խ���");
		return "test/hello";
	}
	
	
	
	@RequestMapping(value="testMapArgumentResolver.ib")
	public ModelAndView testMapArgumentResolver(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("");
	     
	    if(commandMap.isEmpty() == false){
	        Iterator<Entry<String,Object>> iterator = commandMap.getMap().entrySet().iterator();
	        Entry<String,Object> entry = null;
	        while(iterator.hasNext()){
	            entry = iterator.next();
	            log.debug("key : "+entry.getKey()+", value : "+entry.getValue());
	        }
	    }
	    return mv;
	}
	
	
	@Autowired
    private TestService testService;
	
	/* �� ��� */
	@RequestMapping("list.ib")
	public String list(ModelMap model, @RequestParam(value = "page", defaultValue = "0") int page){

		//�Խù� ��ü �Ǽ�
		Integer totalCnt = this.testService.boardTotalCount();
		
		// ����¡ ����
		PageHelper pageHelper = new PageHelper();
		pageHelper.setPageSize(2);
		pageHelper.setPageNo(page);		
    	pageHelper.setTotalCount(totalCnt);
		
		
		model.addAttribute("testList", this.testService.boardList(pageHelper));		
		model.addAttribute("pagenation", pageHelper);		
		
		return "test/list";		
	}
	
	
	/* �� �ۼ��� */
	@RequestMapping("write.ib")
	public String writeForm() {	
		return "test/write";	
	}	
	
	
	/* �� �ۼ� �׼� */	
	@RequestMapping(value="write.ib", method = RequestMethod.POST)
	public String writeAction(CommandMap commandMap) throws Exception {	
		this.testService.boardWrite(commandMap.getMap());
		
		return "redirect:list.ib";
	}	
	
	
	/* �� �� */	
	@RequestMapping(value="article.ib", method = RequestMethod.GET)
	public String article(CommandMap commandMap, Model model) throws Exception {			
		
		model.addAttribute("article", this.testService.boardArticle(commandMap.getMap()));	
		

		return "test/article";
	}
	
	
	/* �� ���� */	
	@RequestMapping(value="delete.ib", method = RequestMethod.GET)
	public String delete(Integer idx) throws Exception {			
		
	    this.testService.boardDelete(idx);			

		return "redirect:list.ib";
	}
	
	
	/* ���� �ٿ�ε� */
	@RequestMapping(value="excel.ib")
    public String createExcel(Model model) {

		String[] cellHeader = {"�ε���", "����", "�ۼ���", "��¥"};		
		model.addAttribute("excelData", this.testService.excelDownload());	
		model.addAttribute("cellHeader", cellHeader);	
		model.addAttribute("fileName", "excel_test.xlsx");	
		

        return "ExcelView";
    }

}













