package org.scdc.controller;

import java.util.List;

import org.scdc.domain.ReportVO;
import org.scdc.domain.StockVO;
import org.scdc.service.ExportService;
import org.scdc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/api")
@AllArgsConstructor
public class ApiController {
	
	private ExportService service;

    @RequestMapping("/stock")
    public List<StockVO> stock(String libraryLists){
    	System.out.println("stock 값확인 : " + libraryLists);
    	System.out.println(service.getSelectedList(libraryLists));
		return service.getSelectedList(libraryLists);
    }
    
    @RequestMapping("/report")
    public List<ReportVO> report(String libraryLists){
    	System.out.println("리포트페이지 값확인 : " + libraryLists);
    	System.out.println(service.getSelectedReportList(libraryLists));
		return service.getSelectedReportList(libraryLists);

    }

}