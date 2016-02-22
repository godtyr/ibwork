package net.infobank.common.common;

import java.lang.reflect.Field;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.AbstractView;



@Component("ExcelView")
public class ExcelView extends AbstractView {
	
	Logger log = Logger.getLogger(this.getClass());
	
	/** The content type for an Excel response */
    private static final String CONTENT_TYPE = "application/vnd.ms-excel";

    public ExcelView() {
        setContentType(CONTENT_TYPE);
    
    }

    protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {        

        	response.setHeader("Content-Disposition", "attachment; filename=\"" + model.get("fileName") + "\"");
        	response.setHeader("Content-Transfer-Encoding", "binary");        
        	response.setHeader("Connection", "close");
        	
            Workbook workbook = new XSSFWorkbook();
            XSSFSheet sheet = (XSSFSheet) workbook.createSheet();
            
            // 헤더       
           
            XSSFRow header = sheet.createRow(0);  
            
            String[] cellHeader = (String[]) model.get("cellHeader");

            for(int i = 0; i < cellHeader.length; i++) {
            	header.createCell(i).setCellValue(cellHeader[i]);            	
            }
            
            //데이터
            @SuppressWarnings("unchecked")
			List<Object> excelData = (List<Object>) model.get("excelData");
            
            for(int i = 0; i < excelData.size(); i++) {
            	
            	XSSFRow row = sheet.createRow(i+1);
            	
            
            	int cellIdx = 0;
        		for (Field field : excelData.get(i).getClass().getDeclaredFields()){
                    field.setAccessible(true);
                    Object value = field.get(excelData.get(i)); 
                    
                    
                    if (value == null) {
                    	row.createCell(cellIdx).setCellValue("");
                    }else {                    	                    	
                    	if(value instanceof Date) {        
                            
                        	Date dateValue = (Date) field.get(excelData.get(i));                      	
                    		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
                    		String strDate = sdf.format(dateValue);
                        	row.createCell(cellIdx).setCellValue(strDate); 
               
                        }else if(value instanceof Integer) {
                        	int intValue = (int) field.get(excelData.get(i));                      	
                          	row.createCell(cellIdx).setCellValue(intValue);  
               
                        }else{
              
                        	row.createCell(cellIdx).setCellValue(String.valueOf(value));
                        }
                    }
                    
                    cellIdx++;
                    

                    
                }
            }
            


            ServletOutputStream out = response.getOutputStream();
            
            workbook.write(out);

            if (out != null) out.close();
        } catch (Exception e) {
            throw e;
        }
    }

	private void foreach() {
		// TODO Auto-generated method stub
		
	}

}
