package com.ulgi.lease.model.vo;

import java.sql.Date;

public class Library {
	private int leaseNo;
	private int bookNo;
	private String userId;
	private Date leaseDate;
	private Date returnDate;
	
	public Library() {}
	
	public Library(int leaseNo, int bookNo, String userId) {
		super();
		this.leaseNo = leaseNo;
		this.bookNo = bookNo;
		this.userId = userId;
	}

	public int getLeaseNo() {
		return leaseNo;
	}

	public int getBookNo() {
		return bookNo;
	}

	public String getUserId() {
		return userId;
	}

	public Date getLeaseDate() {
		return leaseDate;
	}

	public Date getReturnDate() {
		return returnDate;
	}

	@Override
	public String toString() {
		return "Library [leaseNo=" + leaseNo + ", bookNo=" + bookNo + ", userId=" + userId + ", leaseDate=" + leaseDate
				+ ", returnDate=" + returnDate + "]";
	}

}
