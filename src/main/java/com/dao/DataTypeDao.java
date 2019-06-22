package com.dao;

import com.pojo.DataType;

import java.util.List;

/**
 * Created by dell on 2019/3/11.
 */
public interface DataTypeDao {
    int addDataType(DataType dataType);

    int updateDataType(DataType dataType);

    List<DataType> getAllDataType();

    void deleteDataTypeById(int id);

    DataType queryDataTypeByName(String name);

    void deleteDataTypeBatch(int[] idList);
}
