package com.utils;

import java.io.*;

/**
 * Created by dell on 2019/3/14.
 */
public class TxtFileOperator {
    public static void writeToTxtFile(String fileContent){
        String fileName = "C:\\Users\\dell\\Documents\\Java(Intelij IDEA)\\FlyingDutchmanV2.0\\FlyingDutchman\\spiderSet.txt";
        try
        {
            File f = new File(fileName);
            if (!f.exists())
            {
                f.createNewFile();
            }
            OutputStreamWriter write = new OutputStreamWriter(new FileOutputStream(f),"gbk");
            BufferedWriter writer=new BufferedWriter(write);
            writer.write(fileContent);
            writer.close();
        } catch (Exception e)
        {
            e.printStackTrace();
        }
    }

    public static String readFromFile(){
        String fileName = "C:\\Users\\dell\\Documents\\Java(Intelij IDEA)\\FlyingDutchmanV2.0\\FlyingDutchman\\spiderSet.txt";
        String fileContent = "";
        try
        {
            File f = new File(fileName);
            if(f.isFile()&&f.exists())
            {
                InputStreamReader read = new InputStreamReader(new FileInputStream(f),"gbk");
                BufferedReader reader=new BufferedReader(read);
                String line;
                while ((line = reader.readLine()) != null)
                {
                    fileContent += line;
                }
                read.close();
            }
        } catch (Exception e)
        {
            e.printStackTrace();
        }

        return fileContent;
    }
}
