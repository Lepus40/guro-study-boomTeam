package com.study.boom.bbs;

import java.util.List;

public interface BbsItemService
{
	public BbsItem findItem(BbsItem item);
	
	public List<BbsItem> findItems(BbsItem item);
}
