package org.scdc.domain;

import lombok.Data;

@Data
public class PageDTO {
	//������ �� ��������, ���İ���, ���۰�,����
	private boolean prev,next;
	private int startPage, endPage;
	
	private int total; //��ü����
	private Criteria cri; //��� ��������, ����������
	
	public PageDTO(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
		
		//(����������/amount)�ø� * amount
		endPage = (int)Math.ceil((cri.getPageNum()/10.0))*10;
		startPage = endPage -9;
		
		//<<     >> �����
		prev = startPage != 1; //ù��° ������ �ٰ� �ƴ϶��(���۰��� 1�� �ƴ�)
		
		//��¥ ������ �������� ��ȣ =�ø�(��ü�۰��� /�������� ������ ����)
		int realEnd = (int)Math.ceil((total*1.0)/cri.getAmount());
		
		if(endPage > realEnd)//������ �������� ��ȣ�� ���� �������� ��ȣ���� ũ�ٸ�
			endPage = realEnd; //������ �������� ��ȣ�� ������������ ������ ����
		
		next = endPage < realEnd; // >>  ������  �� �������� �ǹ�
	}
}
