package com.nunu.common.utils;

public class BasePojo {
	private Integer id; // 主键
	private Integer start; // 起始行
	private Integer rows; // 所取行数

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getStart() {
		return start;
	}

	public void setStart(Integer start) {
		this.start = start;
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}
}
