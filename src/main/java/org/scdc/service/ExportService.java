package org.scdc.service;

import java.util.List;

import org.scdc.domain.Criteria;
import org.scdc.domain.ExportStateVO;
import org.scdc.domain.ExportVO;
import org.scdc.domain.PartVO;
import org.scdc.domain.ReportVO;
import org.scdc.domain.RequestVO;
import org.scdc.domain.StockVO;

public interface ExportService {
	
	//리포트 엑셀
	public List<ReportVO> makeReportExcel();
	
	//엑셀
	public List<StockVO> makeExcel();
	
	//대분류별 리포트목록 가져오기
	public List<ReportVO> getSelectedReportList(String libraryLists);
	
	//대분류별로 목록보기
	public List<StockVO> getSelectedList(String libraryLists);
	
	//대분류 가져오기
	public List<StockVO> getLibrary();
	
	//1. 요청목록보기
	public List<RequestVO> getRequestList();
	public List<RequestVO> getRequestListWithPaging(Criteria cri);
	
	//2. 재고리스트보기
	public List<StockVO> getStockList();
	public List<StockVO> getStockListWithPaging(Criteria cri);
	
	//3. 출고현황페이지 보기
	public List<ExportStateVO> getExportState();
	public List<ExportStateVO> getExportStateWithPaging(Criteria cri);
	
	//4.재고금액확인
	public List<ReportVO> getReportList();
	public List<ReportVO> getReportListWithPaging(Criteria cri);
	
	//5. 출고요청 -> 출고
	public RequestVO getExport(int supportNo);
	
	//6. 출고저장
	public void registerExport(ExportVO vo);

	//7. 출고현황 저장하기
	public void insertStatus(ExportStateVO vo );
	//8. 출고현황  업데이트  
	public void registerProcess(ExportStateVO vo);

	//9. 재고 총금액 ->sumPrice
	public int sumPrice();
	//10. 품목 개수 ->count
	public int count(); 

		
		
	//목록보기
	public List<PartVO> getList();
	
	// 목록보기  with page
	public List<PartVO> getList(Criteria cri);	
	
	

}
