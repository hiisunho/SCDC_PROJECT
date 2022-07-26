package org.scdc.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.scdc.dao.UserDAO;
import org.scdc.vo.MemberVO;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

@Service
public class UserServiceImpl implements UserService {
	
	@Override
	public List<Map<String, Object>> readExcel() {
		List<Map<String,Object>>list= 
				new ArrayList<Map<String,Object>>();
		try {
			//File 객체 만들기
			File f = new File("C:\\data\\sports.xlsx");
			//엑셀 워크 북으로 만들기
			 XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(f));
			 //첫번째 시트와 모든 내용을 행 단위로 접근
			 for(Row row : wb.getSheetAt(0)) {
				 Map<String, Object> map=
						 new HashMap<String,Object>();
				 map.put("name",row.getCell(0));
				 map.put("category",row.getCell(1));
				 list.add(map);
			 }
			 wb.close();
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}

	@Override
	public Workbook makeExcel() {
		Workbook xlsWb = new HSSFWorkbook(); // Excel 2007 이전 버전
        Workbook xlsxWb = new XSSFWorkbook(); // Excel 2007 이상
 
        // *** Sheet-------------------------------------------------
        // Sheet 생성
        Sheet sheet1 = xlsWb.createSheet("firstSheet");
 
        // 컬럼 너비 설정
        sheet1.setColumnWidth(0, 10000);
        sheet1.setColumnWidth(9, 10000);
        // ----------------------------------------------------------
         
        // *** Style--------------------------------------------------
        // Cell 스타일 생성
        CellStyle cellStyle = xlsWb.createCellStyle();
         
        // 줄 바꿈
        cellStyle.setWrapText(true);
         
        // Cell 색깔, 무늬 채우기
        cellStyle.setFillForegroundColor(HSSFColor.LIME.index);
        cellStyle.setFillPattern(CellStyle.BIG_SPOTS);
         
        Row row = null;
        Cell cell = null;
        //----------------------------------------------------------
         
        // 첫 번째 줄
        row = sheet1.createRow(0);
         
        // 첫 번째 줄에 Cell 설정하기-------------
        cell = row.createCell(0);
        
        cell.setCellValue("asdf");
        
        return xlsWb;
        
//        try {
//            File xlsFile = new File("C:/Users/MIT/Desktop/test.xls");
//            FileOutputStream fileOut = new FileOutputStream(xlsFile);
////            xlsWb.write(fileOut);
//            
//            return xlsWb;
//        } catch (FileNotFoundException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        
//        return xlsWb;
	}
}

