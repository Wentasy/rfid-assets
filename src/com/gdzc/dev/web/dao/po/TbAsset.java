package com.gdzc.dev.web.dao.po;

/**
 * TbAsset entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TbAsset implements java.io.Serializable {

	// Fields

	private Long tbAssetId;
	private TbAssetinfo tbAssetinfo;
	private String tbAssetState;
	private String tbAssetRemark;
	private String tbAssetNumber;

	// Constructors

	/** default constructor */
	public TbAsset() {
	}

	/** minimal constructor */
	public TbAsset(TbAssetinfo tbAssetinfo, String tbAssetState,
			String tbAssetNumber) {
		this.tbAssetinfo = tbAssetinfo;
		this.tbAssetState = tbAssetState;
		this.tbAssetNumber = tbAssetNumber;
	}

	/** full constructor */
	public TbAsset(TbAssetinfo tbAssetinfo, String tbAssetState,
			String tbAssetRemark, String tbAssetNumber) {
		this.tbAssetinfo = tbAssetinfo;
		this.tbAssetState = tbAssetState;
		this.tbAssetRemark = tbAssetRemark;
		this.tbAssetNumber = tbAssetNumber;
	}

	// Property accessors

	public Long getTbAssetId() {
		return this.tbAssetId;
	}

	public void setTbAssetId(Long tbAssetId) {
		this.tbAssetId = tbAssetId;
	}

	public TbAssetinfo getTbAssetinfo() {
		return this.tbAssetinfo;
	}

	public void setTbAssetinfo(TbAssetinfo tbAssetinfo) {
		this.tbAssetinfo = tbAssetinfo;
	}

	public String getTbAssetState() {
		return this.tbAssetState;
	}

	public void setTbAssetState(String tbAssetState) {
		this.tbAssetState = tbAssetState;
	}

	public String getTbAssetRemark() {
		return this.tbAssetRemark;
	}

	public void setTbAssetRemark(String tbAssetRemark) {
		this.tbAssetRemark = tbAssetRemark;
	}

	public String getTbAssetNumber() {
		return this.tbAssetNumber;
	}

	public void setTbAssetNumber(String tbAssetNumber) {
		this.tbAssetNumber = tbAssetNumber;
	}

}