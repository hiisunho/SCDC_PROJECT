package org.scdc.service;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.apache.poi.ss.usermodel.Workbook;
import org.scdc.vo.MemberVO;
import org.springframework.stereotype.Service;

@Service
public interface UserService {

	public List<Map<String,Object>> readExcel();
	
	public Workbook makeExcel();
}
