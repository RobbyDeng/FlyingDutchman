package com.service.impl;

import com.dao.DataTypeDao;
import com.pojo.DataType;
import com.service.DataTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dell on 2019/3/11.
 */
@Service
public class DataTypeServiceImpl implements DataTypeService{
    @Autowired
    private DataTypeDao dataTypeDao;

    public int addDataType(DataType dataType) {
        return dataTypeDao.addDataType(dataType);
    }

    public int updateDataType(DataType dataType) {
        return dataTypeDao.updateDataType(dataType);
    }

    public List<DataType> getAllDataType() {
        return dataTypeDao.getAllDataType();
    }

    public void deleteDataTypeById(int id) {
        dataTypeDao.deleteDataTypeById(id);
    }

    public DataType queryDataTypeByName(String name){
        return dataTypeDao.queryDataTypeByName(name);
    }

    @Override
    public void deleteDataTypeBatch(int[] idList) {
        dataTypeDao.deleteDataTypeBatch(idList);
    }
}
