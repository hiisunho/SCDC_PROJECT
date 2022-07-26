package org.scdc.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.scdc.domain.PartVO;
import org.scdc.domain.ReportVO;
import org.scdc.domain.StockVO;
import org.scdc.service.ExportService;
import org.scdc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/export")
@AllArgsConstructor
public class ExcelController {

	private ExportService service;
	
	//자재현황테이블 엑셀 만들기
	@GetMapping("/excel")
	public void downloadExcel(HttpServletResponse response) throws IOException {
		
		Workbook workbook = new HSSFWorkbook();
		Sheet sheet = workbook.createSheet("자재재고현황");
		int rowNo = 0;
		
		Row headerRow = sheet.createRow(rowNo++);
		headerRow.createCell(0).setCellValue("품목코드");
		headerRow.createCell(1).setCellValue("품목명");
		headerRow.createCell(2).setCellValue("약칭");
		headerRow.createCell(3).setCellValue("대분류");
		headerRow.createCell(4).setCellValue("중분류");
		headerRow.createCell(5).setCellValue("입고수량");
		headerRow.createCell(6).setCellValue("출고수량");
		headerRow.createCell(7).setCellValue("재고수량");
		
		List<StockVO> list = service.makeExcel();
		for (StockVO partList : list) {
			Row row = sheet.createRow(rowNo++);
			row.createCell(0).setCellValue(partList.getPartCode());
			row.createCell(1).setCellValue(partList.getPartName());
			row.createCell(2).setCellValue(partList.getNickName());
			row.createCell(3).setCellValue(partList.getLibrary());
			row.createCell(4).setCellValue(partList.getLibraryM());
			row.createCell(5).setCellValue(partList.getWareQuantity());
			row.createCell(6).setCellValue(partList.getExportQuantity());
			row.createCell(7).setCellValue(partList.getStockQuantity());
		}
		
		response.setContentType("ms-vnd/excel");
		response.setHeader("Content-Disposition", "attachment;filename=stockList.xls");
		
		workbook.write(response.getOutputStream());
		workbook.close();

	}
	
	//자재현황테이블 엑셀 미리보기
    @RequestMapping("/excelread")
	public void excelread(Model model) {
		model.addAttribute("excelList", service.makeExcel());
		System.out.println(service.makeExcel());
    
    }
    
    
    //리포트테이블 엑셀 만들기
    @GetMapping("/excelReport")
    public void downloadExcelReport(HttpServletResponse response) throws IOException {
    	
    	Workbook workbook = new HSSFWorkbook();
    	Sheet sheet = workbook.createSheet("자재재고현황");
    	int rowNo = 0;
    	
    	Row headerRow = sheet.createRow(rowNo++);
    	headerRow.createCell(0).setCellValue("품목코드");
    	headerRow.createCell(1).setCellValue("품목이름");
    	headerRow.createCell(2).setCellValue("단가");
    	headerRow.createCell(3).setCellValue("재고량");
    	headerRow.createCell(4).setCellValue("재고금액");
    	
    	List<ReportVO> list = service.makeReportExcel();
    	for (ReportVO partList : list) {
    		Row row = sheet.createRow(rowNo++);
    		row.createCell(0).setCellValue(partList.getPartCode());
    		row.createCell(1).setCellValue(partList.getPartName());
    		row.createCell(2).setCellValue(partList.getUnitPrice());
    		row.createCell(3).setCellValue(partList.getStockQuantity());
    		row.createCell(4).setCellValue(partList.getTotalPrice());
    	}
    	
    	response.setContentType("ms-vnd/excel");
    	response.setHeader("Content-Disposition", "attachment;filename=stockList(report).xls");
    	
    	workbook.write(response.getOutputStream());
    	workbook.close();
    	
    }
    
    //리포트테이블 엑셀 미리보기
    @RequestMapping("/excelreadReport")
    public void excelreadReport(Model model) {
    	model.addAttribute("reportExcelList", service.makeReportExcel());
    	System.out.println(service.makeReportExcel());
    	
    }

}
