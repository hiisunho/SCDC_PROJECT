package org.scdc.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Criteria {
	//������ ��ȣ, ���������� ����
	private int pageNum=1;
	private int amount=10;
	
	private String startDate;
	private String endDate;
	
	//�⺻������->�⺻�� 1,10
	public Criteria() {

	}
	//�߰� ������ -> ���� �־ �����

}
