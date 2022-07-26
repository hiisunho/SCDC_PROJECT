package org.scdc.domain;

import java.util.Date;

import lombok.Data;

@Data
public class RequestVO {
	private int supportNo; //요청번호
	private String partCode;
	private String materialProcess; 
	private Date daySchedule;
	private int requirement; //요청수량
	private int stockQuantity; //재고수량
	
}
