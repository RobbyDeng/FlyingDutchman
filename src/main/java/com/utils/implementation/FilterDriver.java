package com.utils.implementation;

import org.apache.hadoop.conf.Configuration;

import java.io.IOException;

public interface FilterDriver {
    boolean IsFileExists(Configuration conf) throws IOException;
    void init() throws ClassNotFoundException, InterruptedException, IOException;
}
