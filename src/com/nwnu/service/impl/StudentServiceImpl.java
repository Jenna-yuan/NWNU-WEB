package com.nwnu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nunu.common.utils.Page;
import com.nwnu.dao.StudentDao;
import com.nwnu.pojo.Student;
import com.nwnu.service.StudentService;

@Service
@Transactional
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao studentDao;

	@Override
	public Page<Student> findStudentList(Student student, Integer page, Integer rows) {

		Page<Student> result = new Page<Student>();
		student.setStart((page - 1) * rows);
		student.setRows(rows);
		result.setRows(this.studentDao.selectStudentList(student));

		result.setTotal(this.studentDao.selectStudentListCount(student));
		result.setPage(page);
		result.setSize(rows);
		return result;
	}

	@Override
	public Integer insertStudent(Student student) {
		return this.studentDao.insertStudent(student);
	}

}
