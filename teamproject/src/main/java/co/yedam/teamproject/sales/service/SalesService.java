package co.yedam.teamproject.sales.service;

import java.util.List;

import co.yedam.teamproject.sales.service.SalesVO;

public interface SalesService {
	List<SalesVO> salesSelectList();
	SalesVO salesSelect(SalesVO vo);
	int salesInsert(SalesVO vo);
	int salesUpdate(SalesVO vo);
	int salesDelete(SalesVO vo);
}
