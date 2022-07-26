package org.scdc.domain;

import lombok.Data;

@Data
public class ReportVO {
	private String partCode;
	private String partName;
	private String nickName;
	private String library;
	private String librarym;
	private int unitPrice;
	private int wareQuantity;
	private int exportQuantity;
	private int stockQuantity;	
	private int totalPrice;
}
