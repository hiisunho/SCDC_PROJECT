package org.scdc.domain;

import java.util.Date;

import lombok.Data;

@Data
public class RequestVO {
	private int supportNo; //��û��ȣ
	private String partCode;
	private String materialProcess; 
	private Date daySchedule;
	private int requirement; //��û����
	private int stockQuantity; //������
	
}
