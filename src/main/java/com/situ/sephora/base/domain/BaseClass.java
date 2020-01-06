package com.situ.sephora.base.domain;

import java.io.Serializable;
import java.util.Date;

public class BaseClass implements Serializable {
	private static final long serialVersionUID = 1L;
	private Long rowId;//主键
	private Integer activeFlag;//数据是否有效
	private String createBy;//创建人
	private Date createDate;//创建日期
	private String updateBy;//更新人
	private Date updateDate;//更新日期
	public Long getRowId() {
		return rowId;
	}
	public void setRowId(Long rowId) {
		this.rowId = rowId;
	}
	public Integer getActiveFlag() {
		return activeFlag;
	}
	public void setActiveFlag(Integer activeFlag) {
		this.activeFlag = activeFlag;
	}
	public String getCreateBy() {
		return createBy;
	}
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getUpdateBy() {
		return updateBy;
	}
	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	
}
