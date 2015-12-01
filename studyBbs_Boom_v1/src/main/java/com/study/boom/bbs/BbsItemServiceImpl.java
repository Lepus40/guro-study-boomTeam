package com.study.boom.bbs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("bbsItemService")
public class BbsItemServiceImpl implements BbsItemService
{
	@Autowired
	private BbsItemMapper bbsItemMapper;

	@Override
	public BbsItem findItem(BbsItem item)
	{
		// TODO Auto-generated method stub
		return bbsItemMapper.findItem(item);
	}

	@Override
	public List<BbsItem> findItems(BbsItem item)
	{
		// TODO Auto-generated method stub
		return bbsItemMapper.findItems(item);
	}

	@Override
	public void writeItem(BbsItem item) {
		bbsItemMapper.writeItem(item);		
	}

	@Override
	public void deleteItem(BbsItem item) {
		bbsItemMapper.deleteItem(item);
		
	}

	@Override
	public void updateItem(BbsItem item) {
		bbsItemMapper.updateItem(item);
		
	}

	@Override
	public void addHit(String id) {
		bbsItemMapper.addHit(id);
		
	}
}
