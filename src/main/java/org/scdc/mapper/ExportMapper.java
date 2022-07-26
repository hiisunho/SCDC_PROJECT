package org.scdc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.scdc.domain.Criteria;
import org.scdc.domain.ExportStateVO;
import org.scdc.domain.ExportVO;
import org.scdc.domain.PartVO;
import org.scdc.domain.ReportVO;
import org.scdc.domain.RequestVO;
import org.scdc.domain.StockVO;


public interface ExportMapper {
	
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
	
	 //1.  요청리스트 보기	
	public List<RequestVO> getRequestList();
	public List<RequestVO> getRequestListWithPaging(Criteria cri);
	
	//2. 재고리스트보기
	public List<StockVO> getStockList();
	public List<StockVO> getStockListWithPaging(Criteria cri);
	
	 //3. 출고현황페이지 보기
	public List<ExportStateVO> getExportState();
	public List<ExportStateVO> getExportStateWithPaging(Criteria cri);
	
	//4. 재고금액(리포트)페이지 보기
	public List<ReportVO> getReportList();
	public List<ReportVO> getReportListWithPaging(Criteria cri);
	
	//5..출고요청 -> 출고
	public RequestVO getExport(int supportNo);
	
	//6. 출고  ->tbl_export 저장
	public void insertExport(ExportVO vo);
	
	//7. 출고 현황 (출고요청시 업데이트-출고대기)
	public void insertStatus(ExportStateVO vo );

	//8. 출고후 출고현황페이업데이트   (update)
	public void registerProcess(ExportStateVO vo);
	//9. 재고 총금액 ->sumPrice
	public int sumPrice();
	//10. 품목 개수 ->count
	public int count();  
		 
		 
	   
	   
	///////////////////////쓸모없는  코드   
		
	//1. 목록보기 -> select
	 public List<PartVO> getList();
	 
	 //1-1 목록보기  (페이지  처리))
	 public List<PartVO> getListWithPaging(Criteria cri);
	



	 

}//mapper
