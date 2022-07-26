package org.scdc.domain;

import java.util.Date;

import lombok.Data;

@Data
public class StockVO {
	private int stock_no;
	private String partCode;
	private String partName;
	private String nickName;
	private String library;
	private String libraryM;
	private int wareQuantity; //입고량
	private int exportQuantity; //출하량
	private int stockQuantity; //재고량
	private Date stock_date;
}
