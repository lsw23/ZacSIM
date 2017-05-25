package com.monorella.srf.branch.expense;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.branch.dto.Expense;


@Repository
public class ExpenseDao {
	@Autowired
    private SqlSessionTemplate sqlSessionTemplate;
	
	//공지사항 검색 메서드
		 public List<Expense> searchExpense(String searchStartDate, String searchEndDate){
			 System.out.println("ExpenseDao->searchExpense ->searchStartDate:" +searchStartDate
					 +"searchEndDate:" + searchEndDate);
				Map<String, String> map = new HashMap<String, String>();
				map.put("searchStartDate", searchStartDate);
				map.put("searchEndDate", searchEndDate);
				List<Expense> expenseList = null;
				expenseList = sqlSessionTemplate.selectList("com.monorella.srf.branch.expense.ExpenseMapper.searchExpense", map);
				return expenseList;
			}
	
	//전체 공지사항의 수를 구하는 메서드
			public int getExpenseCount(){
				return sqlSessionTemplate.selectOne("com.monorella.srf.branch.expense.ExpenseMapper.getExpenseCount");
			}
			
	// 지출리스트 메서드
		public List<Expense> selectExpenseList(int currentPage, int pagePerRow) {
			System.out.println("ExpenseDao-> selectExpenseList-> currentPage: " + currentPage 
					+"pagePerRow: "+pagePerRow);
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("beginRow", (currentPage-1)*pagePerRow);
			map.put("pagePerRow", pagePerRow);
			return sqlSessionTemplate.selectList("com.monorella.srf.branch.expense.ExpenseMapper.selectExpenseList", map);
		}
	
	// 지출입력 메서드
    public int insertExpense(Expense expense) {
    	System.out.println("ExpenseDao->insertExpense()->"+expense);
        return sqlSessionTemplate.insert("com.monorella.srf.branch.expense.ExpenseMapper.insertExpense"
        								, expense);
    }
}
