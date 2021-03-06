package com.myapp.core.base.dao.impl;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Set;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.persister.entity.AbstractEntityPersister;

import com.myapp.core.base.dao.IAbstractBaseDao;
import com.myapp.core.base.entity.CoreBaseBillInfo;
import com.myapp.core.base.entity.CoreBaseInfo;
import com.myapp.core.base.entity.CoreBaseTreeInfo;
import com.myapp.core.base.entity.CoreInfo;
import com.myapp.core.entity.SubsystemTreeInfo;
import com.myapp.core.exception.db.ReadException;
import com.myapp.core.model.PageModel;
import com.myapp.core.uuid.UuidUtils;

/**
 *-----------MySong---------------
 * ©MySong基础框架搭建
 * @author mySong @date 2017年3月27日 
 * @system:
 *
 *-----------MySong---------------
 */
public abstract class AbstractBaseDao implements IAbstractBaseDao {
	private static final Logger log = LogManager.getLogger(AbstractBaseDao.class);
	
	public abstract Session getCurrentSession() ;
	public Object loadEntity(Class claz, String id) {
		if(claz!=null||id!=null){
			return getCurrentSession().load(claz, id);
		}else{
			log.info("加载数据错误：class为空或者id为空");
		}
		return null;
	}
	
	public Object getEntity(Class claz, String id) {
		if(claz!=null||id!=null){
			return getCurrentSession().get(claz, id);
		}else{
			log.info("加载数据错误：class为空或者id为空");
		}
		return null;
	}
	
	public List<CoreInfo> getEntityCollection(Class claz) {
		if(claz!=null) return findByHQL("from "+claz.getSimpleName(),null);
		return null;
	}
	
	public Object saveEntity(Object entity) {
		if(entity!=null){
			Serializable pk = null;
			if(entity instanceof CoreBaseBillInfo){
				pk = ((CoreBaseBillInfo)entity).getId();
			}
			if(pk==null){
				pk = addNewEntity(entity);
			}else{
				pk = getCurrentSession().save(entity);
			}
			if(pk!=null) {
				return entity;
			}
		}
		return null;
	}
	public void deleteEntity(Class claz, String id) {
		if(claz!=null||id!=null){
			deleteEntity(loadEntity(claz,id));
		}
	}
	
	public void deleteEntity(Object entity) {
		if(entity!=null){
			Session session = getCurrentSession();
			session.delete(entity);
			session.flush();
		}
	}
	
	private Query createQuery(String hql, Object[] params){
		Query query = getCurrentSession().createQuery(hql);
		if(params!=null&&params.length>0){
			for(int i=0;i<params.length;i++){
				Object paramObj = params[i];
				if(paramObj!=null) 
					query.setParameter(i, paramObj); 
			}
		}
        return query;
	}
	
	public List findByHQL(String hql, Object[] params) {
		Query query = createQuery(hql,params);  
        if(query!=null) return query.list();
		return null;
	}
	
	private void initTreeNewData(CoreBaseTreeInfo treeInfo){
		if(treeInfo==null) return;
		Date curDate = new Date();
		treeInfo.setCreateDate(curDate);
		treeInfo.setLastUpdateDate(curDate);
		Set<CoreBaseTreeInfo> children =  treeInfo.getChildren();
		if(children!=null&&children.size()>0){
			treeInfo.setLeaf(false);
			for(CoreBaseTreeInfo tInfo:children){
				initTreeNewData(tInfo);
			}
		}else{
			treeInfo.setLeaf(true);
		}
	}
	
	public Serializable addNewEntity(Object entity) {
		if(entity!=null){
			Session session = getCurrentSession();
			if(!(entity instanceof SubsystemTreeInfo)){
				Class claz = entity.getClass();
				String entityClaz = claz.getName();
				String hql = "select id from SubsystemTreeInfo where entityClaz=?";
				List datas = findByHQL(hql,new String[]{entityClaz});
				if(datas==null||datas.size()<=0){
					SubsystemTreeInfo subTree = new SubsystemTreeInfo();
					AbstractEntityPersister cmd = (AbstractEntityPersister) session.getSessionFactory().getClassMetadata(claz);
					subTree.setEntityClaz(entityClaz);
					String tableName = cmd.getTableName();
					subTree.setEntityTable(tableName);
					long seq = UuidUtils.byteArrayToLong(tableName.getBytes());
					subTree.setEntityType(UuidUtils.toHexString(seq, 8));
					subTree.setEntitySeq(new Date().getTime());
					subTree.setSeq(seq);
					session.save(subTree);
				}
			}
			if(entity instanceof CoreBaseTreeInfo){
				initTreeNewData((CoreBaseTreeInfo)entity);
			}else if(entity instanceof CoreBaseInfo){
				CoreBaseInfo cbinfo = (CoreBaseInfo) entity;
				Date curDate = new Date();
				cbinfo.setCreateDate(curDate);
				cbinfo.setLastUpdateDate(curDate);
			}
			Serializable pk = session.save(entity);
			session.flush();
			return pk;
		}
		return null;
	}
	public PageModel toPageQuery(Integer curPage, Integer pageSize, String hql,
			Object[] params) {
		return null;
	}
	
	
}
