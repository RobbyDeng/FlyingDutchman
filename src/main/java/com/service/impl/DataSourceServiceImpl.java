package com.service.impl;

import com.dao.DataSourceDao;
import com.pojo.DataSource;
import com.service.DataSourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dell on 2019/3/11.
 */
@Service
public class DataSourceServiceImpl implements DataSourceService {
    @Autowired
    private DataSourceDao dataSourceDao;

    public int addDataSource(DataSource dataSource) {
        return dataSourceDao.addDataSource(dataSource);
    }

    public int updateDataSource(DataSource dataSource) {
        return dataSourceDao.updateDataSource(dataSource);
    }

    public List<DataSource> getAllDataSource() {
        return dataSourceDao.getAllDataSource();
    }

    public void deleteDataSourceById(int id) {
        dataSourceDao.deleteDataSourceById(id);
    }

    public DataSource queryDataSourceByName(String name){
        return dataSourceDao.queryDataSourceByName(name);
    }

    @Override
    public void deleteDataSourceBatch(int[] idList) {
        dataSourceDao.deleteDataSourceBatch(idList);
    }

    @Override
    public void deleteDataSourceBatchByDataType(int[] idList) {
        dataSourceDao.deleteDataSourceBatchByDataType(idList);
    }

    @Override
    public DataSource queryDataSourceById(int id) {
        return dataSourceDao.queryDataSourceById(id);
    }
}
