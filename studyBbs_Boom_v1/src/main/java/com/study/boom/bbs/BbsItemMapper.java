package com.study.boom.bbs;

import java.util.List;

public interface BbsItemMapper
{
	public BbsItem findItem(BbsItem item);
	
	public List<BbsItem> findItems(BbsItem item);
	
	public void writeItem(BbsItem item);
	
	public void deleteItem(BbsItem item);
	
	public void updateItem(BbsItem item);
	
	public void addHit(String id);
}
