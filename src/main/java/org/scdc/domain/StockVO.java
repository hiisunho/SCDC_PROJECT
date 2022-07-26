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
	private int wareQuantity; //�԰�
	private int exportQuantity; //���Ϸ�
	private int stockQuantity; //���
	private Date stock_date;
}
