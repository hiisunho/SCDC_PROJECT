package org.scdc.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ExportVO {
	private int export_no;
	private Date export_date;
	private int exportQuantity;
	private String partCode;
}
