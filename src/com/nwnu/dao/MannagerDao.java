package com.nwnu.dao;

import org.apache.ibatis.annotations.Param;

import com.nwnu.pojo.Mannager;

public interface MannagerDao {
	public Mannager findMannager(@Param("name") String name, @Param("password") String password);
}
