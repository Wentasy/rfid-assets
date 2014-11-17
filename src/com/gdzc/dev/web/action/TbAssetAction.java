package com.gdzc.dev.web.action;

import java.util.List;

import com.gdzc.dev.web.dao.po.TbAsset;
import com.gdzc.dev.web.dao.po.TbAssetinfo;
import com.gdzc.dev.web.service.ITbAssetService;
import com.gdzc.dev.web.service.ITbAssetinfoService;
import com.gdzc.dev.web.util.SharePager;

public class TbAssetAction extends PagerBaseAction {
	private static final long serialVersionUID = 1L;
	private ITbAssetService tbAssetService;
	private ITbAssetinfoService tbAssetinfoService;
	private TbAsset tbAsset;
	private TbAssetinfo tbAssetinfo;
	private List<TbAsset> tbAssetList;
	private List<TbAssetinfo> tbAssetinfoList;
	private String Message;

	public String excute() throws Exception {
		try {
			tbAssetinfoList = tbAssetinfoService.queryAllAssetinfo();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	/**
	 * 添加资产
	 * @return
	 * @throws Exception
	 */
	public String createAsset() 
		throws Exception {
		try {
			tbAsset.setTbAssetinfo(tbAssetinfo);
			tbAssetinfoList = tbAssetinfoService.queryAllAssetinfo();
			tbAssetService.createAsset(tbAsset);
		} catch (Exception e) {
			Message = "添加失败，请稍后再试！";
			e.printStackTrace();
			return "createAssetFalse";
		}
		return queryAllAsset();
	}

	/**
	 * 查询所有资产
	 * @return
	 * @throws Exception
	 */
	public String queryAllAsset() throws Exception {
		try {
			if (this.totalRows == 0) {
				this.totalRows = tbAssetService.countAllAsset();
			}
			SharePager pager = this.paging();
			tbAssetList = tbAssetService.queryAllAsset(pager.getStartRow(),
					pager.getPageSize());
			tbAssetinfoList = tbAssetinfoService.queryAllAssetinfo();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "queryAllAssetSUCCESS";
	}

	/**
	 * 通过资产ID查询资产
	 * @return
	 * @throws Exception
	 */
	public String queryAssetById() throws Exception {
		try {
			tbAsset = tbAssetService.queryAssetById(tbAsset.getTbAssetId());
			tbAssetinfo = tbAssetinfoService.queryAssetinfoById(tbAsset.getTbAssetinfo().getTbAssetinfoId());
			tbAssetinfoList = tbAssetinfoService.queryAllAssetinfo();
			tbAsset.setTbAssetinfo(tbAssetinfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "queryAssetByIdSUCCESS";
	}
	
	/**
	 * 通过资产编号查询资产
	 * 
	 * @return
	 * @throws Exception
	 */
	public String queryAssetByNumber() throws Exception {
		try {
			//tbAssetList = tbAssetService.queryAssetByNumber(tbAsset.getTbAssetNumber());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "queryAssetByNumberSUCCESS";
	}



	/**
	 * 通过资产ID删除资产
	 * @return
	 * @throws Exception
	 */
	public String deleteAssetById() throws Exception {
		try {
			tbAssetService.deleteAssetById(tbAsset.getTbAssetId());
		} catch (Exception e) {
			Message = "删除数据失败，请确认操作正确！";
			e.printStackTrace();
			return queryAllAsset();
		}
		return queryAllAsset();
	}
	/**
	 * 更新资产
	 * @return
	 * @throws Exception
	 */
	public String updateAsset() throws Exception {
		try {
			tbAsset.setTbAssetinfo(tbAssetinfo);
			tbAssetService.updateAsset(tbAsset);
		} catch (Exception e) {
			Message = "更新失败，请稍后再试！";
			e.printStackTrace();
			return queryAssetById();
		}
		return queryAllAsset();
	}

	
	
	public ITbAssetService getTbAssetService() {
		return tbAssetService;
	}

	public void setTbAssetService(ITbAssetService tbAssetService) {
		this.tbAssetService = tbAssetService;
	}

	public ITbAssetinfoService getTbAssetinfoService() {
		return tbAssetinfoService;
	}

	public void setTbAssetinfoService(ITbAssetinfoService tbAssetinfoService) {
		this.tbAssetinfoService = tbAssetinfoService;
	}

	public TbAsset getTbAsset() {
		return tbAsset;
	}

	public void setTbAsset(TbAsset tbAsset) {
		this.tbAsset = tbAsset;
	}

	public TbAssetinfo getTbAssetinfo() {
		return tbAssetinfo;
	}

	public void setTbAssetinfo(TbAssetinfo tbAssetinfo) {
		this.tbAssetinfo = tbAssetinfo;
	}

	public List<TbAsset> getTbAssetList() {
		return tbAssetList;
	}

	public void setTbAssetList(List<TbAsset> tbAssetList) {
		this.tbAssetList = tbAssetList;
	}

	public List<TbAssetinfo> getTbAssetinfoList() {
		return tbAssetinfoList;
	}

	public void setTbAssetinfoList(List<TbAssetinfo> tbAssetinfoList) {
		this.tbAssetinfoList = tbAssetinfoList;
	}

	public String getMessage() {
		return Message;
	}

	public void setMessage(String message) {
		Message = message;
	}
}
