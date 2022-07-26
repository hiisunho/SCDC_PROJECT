package org.scdc.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ExportStateVO {
	private int req_seq;
	private int supportNo;
	private String partCode;
	private String materialProcess;
	private Date daySchedule;
	private int requirement;
	private int stockQuantity;
	private int confirm;
	private Date export_date;
	

	
}
