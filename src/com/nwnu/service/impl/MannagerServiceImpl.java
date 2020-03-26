package com.nwnu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nwnu.dao.MannagerDao;
import com.nwnu.pojo.Mannager;
import com.nwnu.service.MannagerService;

@Service
public class MannagerServiceImpl implements MannagerService {
	@Autowired
	private MannagerDao mannagerDao;

	@Override
	public Mannager findMannager(String name, String password) {
		Mannager mannager = this.mannagerDao.findMannager(name, password);
		return mannager;
	}
}
