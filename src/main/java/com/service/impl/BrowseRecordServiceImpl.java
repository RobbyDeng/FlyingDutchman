package com.service.impl;

import com.dao.BrowseRecordDao;
import com.pojo.BrowseRecord;
import com.service.BrowseRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dell on 2019/3/3.
 */
@Service
public class BrowseRecordServiceImpl implements BrowseRecordService {
    @Autowired
    private BrowseRecordDao browseRecordDao;

    public int addBrowseRecord(BrowseRecord browseRecord) {
        return browseRecordDao.addBrowseRecord(browseRecord);
    }

    public List<BrowseRecord> queryBrowseRecordById(int userId){
        return browseRecordDao.queryBrowseRecordById(userId);
    }

    public void deleteBrowseRecordById(int userId){
        browseRecordDao.deleteBrowseRecordById(userId);
    }

    public int getNumberOfBrowseRecordById(int userId){
        return browseRecordDao.getNumberOfBrowseRecordById(userId);
    }

    public int getNumberOfBrowseRecord() {
        return browseRecordDao.getNumberOfBrowseRecord();
    }
}
