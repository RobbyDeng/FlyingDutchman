package com.dao;

import com.pojo.BrowseRecord;

import java.util.List;

/**
 * Created by dell on 2019/3/3.
 */
public interface BrowseRecordDao {
    int addBrowseRecord(BrowseRecord browseRecord);

    List<BrowseRecord> queryBrowseRecordById(int userId);

    void deleteBrowseRecordById(int userId);

    int getNumberOfBrowseRecordById(int userId);

    int getNumberOfBrowseRecord();
}
