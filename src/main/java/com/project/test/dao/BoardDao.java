package com.project.test.dao;

import java.util.ArrayList;

import com.project.test.dto.BoardDto;

public interface BoardDao {

	public ArrayList<BoardDto> getlist(int rowStart, int rowEnd);

	public BoardDto getcontent(int bno);

	public void uphit(int bno);

	public void write(String title, String writer,  String content);

	public void delete(int bno);

	public void modify(String title, String writer , String content, int bno);

	public int counttotal();

	public ArrayList<BoardDto> getlist_search(String type, String key);

	public int counttotal_search(String key);

}
