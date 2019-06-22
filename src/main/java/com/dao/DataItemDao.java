package com.dao;

import com.pojo.DataItem;

import java.util.List;

/**
 * Created by dell on 2019/3/11.
 */
public interface DataItemDao {
    int addDataItem(DataItem dataItem);

    int updateDataItem(DataItem dataItem);

    List<DataItem> getAllDataItem();

    void deleteDataItemById(int id);

    DataItem queryDataItemByName(String name);

    void deleteDataItemBatch(int[] idList);

    void deleteDataItemBatchByDataSource(int[] idList);

    void deleteDataItemBatchByDataType(int[] idList);

    DataItem queryDataItemByModule(String module);
}
