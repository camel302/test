package com.myapp.core.model;

import java.util.List;

public class PageBean<T> {
	
	private List<T> list; //通过hql从数据库分页查询出来的list集合
    
    private int allRows; //总记录数
    
    private int totalPage; //总页数
    
    private int currentPage; //当前页
    
    private int pageSize; //每页记录数

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	public int getAllRows() {
		return allRows;
	}

	public void setAllRows(int allRows) {
		this.allRows = allRows;
	}

	public int getTotalPage() {
		totalPage = (allRows % pageSize == 0)? (allRows / pageSize): (allRows / pageSize) + 1;
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	
	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

    /**
     * 得到当前开始记录号
     * @return
     */
    public int getCurrentPageOffset()  {
        int offset = pageSize * (currentPage - 1);
        
        return offset;
    }
    
}
