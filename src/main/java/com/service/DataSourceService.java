package com.service;

import com.pojo.DataSource;

import java.util.List;

/**
 * Created by dell on 2019/3/11.
 */
public interface DataSourceService {
    int addDataSource(DataSource dataSource);

    int updateDataSource(DataSource dataSource);

    List<DataSource> getAllDataSource();

    void deleteDataSourceById(int id);

    DataSource queryDataSourceByName(String name);

    void deleteDataSourceBatch(int[] idList);

    void deleteDataSourceBatchByDataType(int[] idList);

    DataSource queryDataSourceById(int id);
}
