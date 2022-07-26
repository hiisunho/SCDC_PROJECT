package org.scdc.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.scdc.domain.Criteria;
import org.scdc.domain.ExportStateVO;
import org.scdc.domain.ExportVO;
import org.scdc.domain.PageDTO;
import org.scdc.domain.PartVO;
import org.scdc.domain.ReportVO;
import org.scdc.domain.RequestVO;
import org.scdc.domain.StockVO;
import org.scdc.service.ExportService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@RequestMapping("export/*")
@Log4j
@AllArgsConstructor

class ExportController {
	
	private ExportService service;	
	
	@GetMapping("stock")
    public void stock(Model model,Criteria cri){
		System.out.println(service);
//		model.addAttribute("stock",service.getStockList());
		model.addAttribute("stock",service.getStockListWithPaging(cri));
		model.addAttribute("pageMaker",new PageDTO(cri,service.count()));
		model.addAttribute("library", service.getLibrary());
	}
	@GetMapping("request")
	public void request(Model model,Criteria cri) {
		//model.addAttribute("request",service.getRequestList());
		model.addAttribute("request",service.getRequestListWithPaging(cri));
		model.addAttribute("pageMaker",new PageDTO(cri,service.count()));
		
	}
	
	@GetMapping("export") //요청하기해서 요청 or 대기에서 요청 -> 삽입 or 아무것도 안한다. 
	public void export(int[] supportNo, String flag,Model model,RedirectAttributes rttr) {
		log.info("어디서부터 요청?"+flag);
		List<RequestVO> exportList = new ArrayList<RequestVO>() ;
		ExportStateVO vo = new ExportStateVO();
		
		for(int code :supportNo) {
			log.info("수집데이터"+code);
			
			RequestVO one=service.getExport(code);
			log.info("출고데이터"+one);
			exportList.add(one);
			
			if(flag==null) {
				
			vo.setSupportNo(code);
			vo.setPartCode(one.getPartCode());
			vo.setMaterialProcess(one.getMaterialProcess());
			vo.setDaySchedule(one.getDaySchedule());
			vo.setRequirement(one.getRequirement());
			vo.setStockQuantity(one.getStockQuantity());
			log.info("출고현황데이터"+vo);
			service.insertStatus(vo);
			}
			
		}
		log.info("보내는 데이터"+exportList);
		model.addAttribute("export",exportList);	
	}
	
	@PostMapping("/export")  
	public String export(int[] exportQuantity,String[] partCode, RedirectAttributes rttr){
		ExportVO vo = new ExportVO();
		ExportStateVO so = new ExportStateVO();
		log.info("전송내용"+exportQuantity);
//
		
		for(int i = 0;i <exportQuantity.length;i++) {
			if(exportQuantity[i]!=0) {
				vo.setPartCode(partCode[i]);
				vo.setExportQuantity(exportQuantity[i]);
				service.registerExport(vo);
			}
			so.setPartCode(partCode[i]);
			service.registerProcess(so);
		}
		
		rttr.addFlashAttribute("export_date",vo.getExport_date());//출고날자 전송
		return "redirect:/export/stock"; //주의 :새로운 url 요청
    }

		
	//출고상황 페이지
	@GetMapping("status")
	 public void status(Model model,Criteria cri) {

//	    model.addAttribute("state" ,service.getExportState());
	    model.addAttribute("state" ,service.getExportStateWithPaging(cri));
		model.addAttribute("pageMaker",new PageDTO(cri,service.count()));
	}
	
	@GetMapping("report")
    public void report(Model model,Criteria cri){
		System.out.println(service);
//		model.addAttribute("report",service.getReportList());	
		model.addAttribute("report",service.getReportListWithPaging(cri));
		model.addAttribute("count",service.count());
		System.out.println(service.count());
		model.addAttribute("sumPrice",service.sumPrice());
		System.out.println(service.sumPrice());
		model.addAttribute("pageMaker",new PageDTO(cri,service.count()));
		model.addAttribute("library", service.getLibrary());
    }	

}//service
