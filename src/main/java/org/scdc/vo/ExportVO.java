package org.scdc.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ExportVO {
	private long Export_No;
	private Date Export_Date;
	private long ExportQuantity;
	private long PartCode;
	
}
