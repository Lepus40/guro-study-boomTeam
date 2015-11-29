package com.study.boom.bbs;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping(value = "/bbs")
public class BbsItemController
{
	@Autowired
	private BbsItemServiceImpl bbsItemServiceImpl;

	@RequestMapping(value = "/list")
	public String home(
		ModelMap map,
		@RequestParam(value = "type", required = false) String type,
		@RequestParam(value = "query", required = false) String query,
		@RequestParam(value = "start", defaultValue = "1", required = false) Long start,
		@RequestParam(value = "end", defaultValue = "10", required = false) Long end) throws ClassNotFoundException
	{
		try
		{
			BbsItem bbsItem = new BbsItem();
			List<BbsItem> items = bbsItemServiceImpl.findItems(bbsItem);
			
			map.addAttribute("jsonData", new ObjectMapper().writeValueAsString(items));
		}
		catch (IOException e)
		{
			e.printStackTrace();
		}
		return "bbs/list";
	}

}
