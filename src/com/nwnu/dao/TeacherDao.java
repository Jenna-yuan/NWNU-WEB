package com.nwnu.dao;

import java.util.List;

import com.nwnu.pojo.Teacher;

public interface TeacherDao {
	public List<Teacher> selectTeacherList(Teacher teacher);

	public Integer insertTeacher(Teacher teacher);

	public Integer selectTeacherListCount(Teacher teacher);
}
