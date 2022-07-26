package org.scdc.service;

import java.util.List;

import org.scdc.domain.Criteria;
import org.scdc.domain.ExportStateVO;
import org.scdc.domain.ExportVO;
import org.scdc.domain.PartVO;
import org.scdc.domain.ReportVO;
import org.scdc.domain.RequestVO;
import org.scdc.domain.StockVO;
import org.scdc.mapper.ExportMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class ExportServiceIml implements ExportService {
	private ExportMapper mapper;
	
	//1. 요청목록
	@Override
	public List<RequestVO> getRequestList() {
		return mapper.getRequestList();
	}
	
	@Override
	public List<RequestVO> getRequestListWithPaging(Criteria cri) {
		return mapper.getRequestListWithPaging(cri);
	}

	//2.재고목록
	@Override
	public List<StockVO> getStockList() {	
		return mapper.getStockList();
	}
	//2.재고목록  with page
	@Override
	public List<StockVO> getStockListWithPaging(Criteria cri) {	
		return mapper.getStockListWithPaging(cri);
	}
	//3. 출고현황페이지 목록  가져오기
   @Override
   public List<ExportStateVO> getExportState() {
      return mapper.getExportState();
   }

	@Override
	public List<ExportStateVO> getExportStateWithPaging(Criteria cri) {
		return mapper.getExportStateWithPaging(cri);
	}
   //4. 재고금액확인
   @Override
	public List<ReportVO> getReportList() {
		return mapper.getReportList();
	}
   //4.재고금액확인 with page
   @Override
	public List<ReportVO> getReportListWithPaging(Criteria cri) {
		return mapper.getReportListWithPaging(cri);
	}
	
	//5. 출고요청  ->출고
	@Override
	public RequestVO getExport(int supportNo) {
		return mapper.getExport(supportNo);
	}
	//6. 출고저장
	@Override
	public void registerExport(ExportVO vo) {
		mapper.insertExport(vo);
		
	}
	//7.출고현황페이지  저장하기
	@Override
	public void insertStatus(ExportStateVO vo) {
		mapper.insertStatus(vo);			
	}

  //8. 출고현황페이지  업데이트 
   @Override
	public void registerProcess(ExportStateVO vo) {
		mapper.registerProcess(vo);

	}
   
   //9. 재고 총금액 ->sumPrice
   @Override
 	public int sumPrice() {
	   return mapper.sumPrice(); 
   }
 	//10. 품목 개수 ->count
   @Override
 	public int count() {
	   return mapper.count(); 
   }
	   
	
	
	
	
	
	//1-1-1. ��Ϻ��� with page
	@Override
	public List<PartVO> getList(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public List<PartVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}
	
	@Override
	public List<StockVO> getLibrary() {
		// TODO Auto-generated method stub
		return mapper.getLibrary();
	}

	@Override
	public List<StockVO> getSelectedList(String libraryLists) {
		// TODO Auto-generated method stub
		return mapper.getSelectedList(libraryLists);
	}

	@Override
	public List<StockVO> makeExcel() {
		// TODO Auto-generated method stub
		return mapper.makeExcel();
	}

	@Override
	public List<ReportVO> getSelectedReportList(String libraryLists) {
		// TODO Auto-generated method stub
		return mapper.getSelectedReportList(libraryLists);
	}

	@Override
	public List<ReportVO> makeReportExcel() {
		// TODO Auto-generated method stub
		return mapper.makeReportExcel();
	}

}//serviceIml
