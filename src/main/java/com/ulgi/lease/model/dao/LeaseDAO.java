package com.ulgi.lease.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.ulgi.lease.model.vo.Library;
import com.ulgi.lease.model.vo.Search;

public class LeaseDAO {

	public List<Library> getLeaseList(SqlSession session, int currentPage) {
		int limit = 10;
		int offset = (currentPage-1)*limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		return session.selectList("LibraryMapper.getLeaseList",null, rowBounds);
	}

	public int getLeaseListSize(SqlSession session) {
		return session.selectOne("LibraryMapper.getLeaseListSize");
	}

	public List<Library> getSearchLeaseList(SqlSession session, Search search, int currentPage) {
		int limit = 10;
		int offset = (currentPage-1)*limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		return session.selectList("LibraryMapper.getSearchLeaseList", search, rowBounds);
	}

	public int getLeaseSearchListSize(SqlSession session, Search search) {
		return session.selectOne("LibraryMapper.getLeaseSearchListSize", search);
	}

}
