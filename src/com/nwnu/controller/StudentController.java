package com.nwnu.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nunu.common.utils.AjaxJson;
import com.nwnu.pojo.Student;
import com.nwnu.service.MannagerService;
import com.nwnu.service.StudentService;

@Controller
public class StudentController {
	@Autowired
	private StudentService studentService;
	@Autowired
	private MannagerService mannagerService;

	/**
	 * 查询列表
	 * 
	 * @param student
	 * @param model
	 * @param session
	 * @param page
	 * @param rows
	 * @return
	 */
	@RequestMapping("/listStudent")
	public String listStudent(Student student, Model model, HttpSession session,
			@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "4") Integer rows) {
		model.addAttribute("student", session.getAttribute("USER_SESSION"));
		model.addAttribute("page", studentService.findStudentList(student, page, rows));
		/*
		 * 以下内容通过字典标签实现 //性别字典 List<Dict> sexList=dictService.dictList("sex");
		 * model.addAttribute("sexList", sexList); //民族字典 List<Dict>
		 * nationList=dictService.dictList("nation"); model.addAttribute("nationList",
		 * nationList);
		 */
		// 查找班级
		// List<Clazz> clazzList=clazzService.findClazzAll();
		// model.addAttribute("clazzList", clazzList);

		model.addAttribute("student", student);

		return "student";
	}

	/**
	 * 执行保存
	 * 
	 * @param student
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/saveStudent")
	@ResponseBody
	public AjaxJson saveStudent(Student student, HttpSession session) {
		AjaxJson aj = new AjaxJson();
		String message = "操作成功";
		Integer rows = null;
		try {
			if (StringUtils.isEmpty(student.getCode())) {
				Student student1 = (Student) session.getAttribute("USER_SESSION");
				student1.setCollege(student1.getCollege());
				student1.setClass_name(student1.getClass_name());
				student1.setTime(new Date());
				student1.setName(student1.getName());
				student1.setCode(student1.getCode());
				student1.setNumber(student1.getNumber());
				student1.setProvince(student1.getProvince());
				student1.setCity(student1.getCity());
				student1.setArea(student1.getArea());
				student1.setAn(student1.getAn());
				student1.setBn(student1.getBn());
				student1.setCn(student1.getCn());
				student1.setDn(student1.getDn());
				student1.setEn(student1.getEn());
				student1.setFn(student1.getFn());
				student1.setGn(student1.getGn());
				student1.setHn(student1.getHn());
				student1.setIn(student1.getIn());
				student1.setJn(student1.getJn());
				rows = this.studentService.insertStudent(student1);
				message = "提交成功";
			} else {
				// rows = this.studentService.updateStudent(student);
				message = "提交错误 ";
			}

			if (rows < 0) {
				message = "操作失败";
				aj.setSuccess(false);
			}
		} catch (Exception e) {
			message = "请联系管理员";
			aj.setSuccess(false);
		}
		aj.setMsg(message);
		return aj;
	}

}
