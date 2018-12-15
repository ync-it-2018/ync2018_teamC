package kr.ync.project.domain;

import java.util.Arrays;
import java.util.Date;

public class BoardVO {
	
	//게시판
	private Integer bno;		//게시판 글 번호
	private String title;		//게시판 글 제목
	private String content;		//게시판 글 내용
	private String writer;		//게시판 글 작성자
	private Date regdate;		//게시판  작성 날짜
	private int viewcnt;		//게시판 뷰 카운트
	private int replycnt;		//게시판 댓글 갯수
	
	private String  R_TITEL;		//댓글 제목
	private int  R_NUM;				//댓글 번호
	private String  R_CONTENTS;		//댓글 내용
	private int  R_VIEWCOUNT;		//댓글 뷰 카운트
	
	private String[] files;
	
		
	public String[] getFiles() {
		return files;
	}
	public void setFiles(String[] files) {
		this.files = files;
	}
	public int getReplycnt() {
		return replycnt;
	}
	public void setReplycnt(int replycnt) {
		this.replycnt = replycnt;
	}
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", title=" + title + ", content="
				+ content + ", writer=" + writer + ", regdate=" + regdate
				+ ", viewcnt=" + viewcnt + ", replycnt=" + replycnt
				+ ", files=" + Arrays.toString(files) + "]";
	}

}