package com.nwnu.service;

import com.nunu.common.utils.Page;
import com.nwnu.pojo.Student;

public interface StudentService {
	public Page<Student> findStudentList(Student student, Integer page, Integer size);

	public Integer insertStudent(Student student);
}
