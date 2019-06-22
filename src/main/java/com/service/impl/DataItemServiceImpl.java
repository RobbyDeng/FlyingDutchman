package com.service.impl;

import com.dao.DataItemDao;
import com.pojo.DataItem;
import com.service.DataItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dell on 2019/3/11.
 */
@Service
public class DataItemServiceImpl implements DataItemService {
    @Autowired
    private DataItemDao dataItemDao;

    public int addDataItem(DataItem dataItem) {
        return dataItemDao.addDataItem(dataItem);
    }

    public int updateDataItem(DataItem dataItem) {
        return dataItemDao.updateDataItem(dataItem);
    }

    public List<DataItem> getAllDataItem() {
        return dataItemDao.getAllDataItem();
    }

    public void deleteDataItemById(int id) {
        dataItemDao.deleteDataItemById(id);
    }

    public DataItem queryDataItemByName(String name) {
        return dataItemDao.queryDataItemByName(name);
    }

    @Override
    public void deleteDataItemBatch(int[] idList) {
        dataItemDao.deleteDataItemBatch(idList);
    }

    @Override
    public void deleteDataItemBatchByDataSource(int[] idList) {
        dataItemDao.deleteDataItemBatchByDataSource(idList);
    }

    @Override
    public void deleteDataItemBatchByDataType(int[] idList) {
        dataItemDao.deleteDataItemBatchByDataType(idList);
    }

    @Override
    public DataItem queryDataItemByModule(String module) {
        return dataItemDao.queryDataItemByModule(module);
    }
}
