package com.study.boom.bbs;

import java.io.Serializable;
import java.util.Date;

public class BbsItem implements Serializable
{
	private static final long serialVersionUID = 6401440235924915481L;

	private Long id;
	private String title;
	private String content;
	private String author;
	private String pw;
	private Date writeDate;
	private String delYn;
	private int hit;

	public Long getId()
	{
		return id;
	}

	public void setId(Long id)
	{
		this.id = id;
	}

	public String getTitle()
	{
		return title;
	}

	public void setTitle(String title)
	{
		this.title = title;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public String getAuthor()
	{
		return author;
	}

	public void setAuthor(String author)
	{
		this.author = author;
	}

	public String getPw()
	{
		return pw;
	}

	public void setPw(String pw)
	{
		this.pw = pw;
	}

	public Date getWriteDate()
	{
		return writeDate;
	}

	public void setWriteDate(Date writeDate)
	{
		this.writeDate = writeDate;
	}

	public String getDelYn()
	{
		return delYn;
	}

	public void setDelYn(String delYn)
	{
		this.delYn = delYn;
	}

	public int getHit()
	{
		return hit;
	}

	public void setHit(int hit)
	{
		this.hit = hit;
	}
}
