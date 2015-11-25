package com.study.boom.bbs;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/bbs")
public class BbsItemController
{
	@Autowired
	private BbsItemServiceImpl bbsItemServiceImpl;

	@RequestMapping(value = "")
	public String home(Locale locale, Model model) throws ClassNotFoundException
	{
		BbsItem bbsItem = new BbsItem();
		List<BbsItem> items = bbsItemServiceImpl.findItems(bbsItem);

		for (BbsItem item : items)
		{
			System.out.println("title = "
				+ item.getTitle()
				+ ", itemid = "
				+ item.getId()
				+ ", content = "
				+ item.getContent()
				+ ", author = "
				+ item.getAuthor()
				+ ", pw = "
				+ item.getPw()
				+ ", writeDate = "
				+ item.getWriteDate()
				+ ", delYn = "
				+ item.getDelYn()
				+ ", hit = "
				+ item.getHit());
		}

		return "home";
	}

}
