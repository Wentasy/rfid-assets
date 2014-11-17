package com.gdzc.dev.web.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.gdzc.dev.web.dao.ITbAssetDao;
import com.gdzc.dev.web.dao.po.TbAsset;

public class TbAssetDaoImpl extends HibernateDaoSupport 
implements ITbAssetDao {

	/**
	 * 添加资产
	 * @author zjm
	 * @param tbAsset
	 * @throws Exception
	 */
	public void createAsset(TbAsset tbAsset) 
	throws Exception{
		this.getHibernateTemplate().save(tbAsset);
	}
	
	/**
	 * 根据资产ID查询资产
	 * @param tbAssetId
	 * @return
	 * @throws Exception
	 */
	public TbAsset queryAssetById(long tbAssetId)
	throws Exception {
		Query query = this.getSession().createQuery("from TbAsset where tbAssetId = ?");
		query.setParameter(0, tbAssetId);
		return (TbAsset)query.uniqueResult(); 
	}
	/**
	 * 通过资产信息ID查询资产
	 * @param tbAssetinfoId
	 * @return
	 * @throws Exception
	 */
	public List<TbAsset> queryAssetByAfoId(long tbAssetinfoId)
	throws Exception {
		Query query = this.getSession().createQuery(
		"from TbAsset where tbAssetinfo.tbAssetinfoId = ?");
		query.setParameter(0, tbAssetinfoId);
		return query.list();
	}

	/**
	 * 通过资产信息ID分页查询资产
	 * @param tbAssetinfoId
	 * @return
	 * @throws Exception
	 */
	public List<TbAsset> queryAssetByAfoId(long tbAssetinfoId, int startRows, int pageSize)
	throws Exception {
		Query query = this.getSession().createQuery(
		"from TbAsset where TbAssetinfo.tbAssetinfoId = ?");
		query.setParameter(0, tbAssetinfoId);
		query.setFirstResult(startRows);
		query.setMaxResults(pageSize);
		return query.list();
	}

	/**
	 * 根据资产编号查询资产
	 * @param tbAssetNumber
	 * @return
	 * @throws Exception
	 */
	public List<TbAsset> queryAssetByNumber(int startRows, int pageSize,String tbAssetNumber)
	throws Exception {
		Query query = this.getSession().createQuery(
				"from TbAsset where tbAssetNumber = ?");
		query.setParameter(0, tbAssetNumber);
		return query.list();
	}
	
	/**
	 * 查询所有资产
	 * @return
	 * @throws Exception
	 */
	public List<TbAsset> queryAllAsset()
	throws Exception {
		Query query = this.getSession().createQuery(
		"from TbAsset order by tbAssetId");
		return query.list();
	}

	/**
	 * 分页查询所有资产
	 * @return
	 * @throws Exception
	 */
	public List<TbAsset> queryAllAsset(int startRows, int pageSize)
	throws Exception {
		Query query = this.getSession().createQuery(
			"from TbAsset order by tbAssetId");
		query.setFirstResult(startRows);
		query.setMaxResults(pageSize);
		return query.list();
	}
	
	/**
	 * 根据资产ID删除资产
	 * @param tbAssetId
	 * @throws Exception
	 */
	public void deleteAssetById(long tbAssetId)
	throws Exception {
		this.getHibernateTemplate().delete(
				getHibernateTemplate().get(TbAsset.class, tbAssetId));
	}
	
	/**
	 * 更新资产
	 * @param tbAsset
	 * @throws Exception
	 */
	public void updateAsset(TbAsset tbAsset)
	throws Exception {
		this.getHibernateTemplate().update(tbAsset);
	}

	/**
	 * 统计总共的资产数
	 * @return
	 * @throws Exception
	 */
	public int countAllAsset()
	throws Exception {
		Query query = this.getSession().createQuery("from TbAsset");
		return query.list().size();
	}
	
	
	/**
	 * 通过资产信息ID统计资产总数
	 * @param tbAssetinfoId
	 * @return
	 * @throws Exception
	 */
	public int countAssetByAfoId(long tbAssetinfoId)
	throws Exception {
		Query query = this.getSession().createQuery(
		"from TbAsset where TbAssetinfo.tbAssetinfoId = ?");
		query.setParameter(0, tbAssetinfoId);
		return query.list().size();
	}
	
	/**
	 * 通过资产状态查询资产
	 * @param assetState
	 * @return
	 * @throws Exception
	 */
	public List<TbAsset> queryAssetByState(int startRows, int pageSize,String assetState) throws Exception{
		Query query = this.getSession().createQuery("from TbAsset where tbAssetState = ?");
		query.setParameter(0, assetState);
		return query.list();
		
	}
	
	/**
	 * 通过资产备注查询资产
	 * @param assetRemark
	 * @return
	 * @throws Exception
	 */
	public List<TbAsset> queryAssetByRemark(int startRows, int pageSize,String assetRemark) throws Exception{
		
		Query query = this.getSession().createQuery("from TbAsset where tbAssetRemark = ?");
		query.setParameter(0, assetRemark);
		return query.list();
	}
	
	
	/**
	 * 通过资产状态查询资产
	 * @param assetState
	 * @return
	 */
	public int countAllAssetByState(String assetState){
		Query query = this.getSession().createQuery("from TbAsset where tbAssetState = ?");
		query.setParameter(0, assetState);
		return query.list().size();
	}
	
	/**
	 * 通过资产状态备注资产
	 * @param assetState
	 * @return
	 */
	public int countAllAssetByRemark(String assetRemark){
		Query query = this.getSession().createQuery("from TbAsset where tbAssetRemark = ?");
		query.setParameter(0, assetRemark);
		return query.list().size();
	}
	
	
	/**
	 * 通过资产编号查询资产记录数 -- 返回1 但为了分页效果 这个也要
	 * @param assetNumber
	 * @return
	 * @throws Exception
	 */
	public int countAssetByNumber(String assetNumber)throws Exception{
		Query query = this.getSession().createQuery("from TbAsset where tbAssetNumber = ?");
		query.setParameter(0, assetNumber);
		return query.list().size();
	}
}