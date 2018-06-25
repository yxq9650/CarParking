package com.yxq.carpark.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.util.CellRangeAddress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yxq.carpark.dto.IncomeData;
import com.yxq.carpark.entity.Income;
import com.yxq.carpark.service.IncomeService;
import com.yxq.carpark.utils.Msg;


@Controller
public class IncomeController {

	@Autowired
	private IncomeService incomeService;

	@ResponseBody
	@RequestMapping("/index/income/findIncomeInfo")
	public Msg findIncomeInfo(@RequestParam("id") Integer id) {
		Income income = incomeService.findById(id);
		if (income != null) {
			return Msg.success().add("income", income);
		}
		return Msg.fail().add("va_msg", "系统出错，找不到该收入信息。");
	}

}
