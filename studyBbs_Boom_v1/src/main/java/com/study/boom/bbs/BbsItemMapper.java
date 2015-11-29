package com.study.boom.bbs;

import java.util.List;

import com.study.boom.anno.DefaultMapper;

@DefaultMapper
public interface BbsItemMapper
{
	public List<BbsItem> findItems(BbsItem item);
}
