package hdfs;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.*;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.net.URI;
import java.util.Iterator;
import java.util.Map;

public class HdfsClient {
    FileSystem fs = null;
    Configuration conf = null;

    private String SrcPath = new String();
    private String DstPath = new String();
    private String Filename = new String();


    public void setSourcePath(String sourcePath){
        this.SrcPath = sourcePath;
    }
    public void setDestinationPath(String destinationPath){
        this.DstPath = destinationPath;
    }
    public void setFilename(String filename){
        this.Filename = filename;
    }


    @Before
    public void init() throws Exception{

        conf = new Configuration();

        //拿到一个文件系统操作的客户端实例对象
        /*fs = FileSystem.get(conf);*/
        //可以直接传入 uri和用户身份
        fs = FileSystem.get(new URI("hdfs://192.168.43.246:9000"),conf);

    }


    public void upload() throws Exception {
        Thread.sleep(2000);
        setSourcePath("E:\\");
        setDestinationPath("/now/");
        setFilename("datagrip-2018.3.3.exe");
        fs.copyFromLocalFile(new Path(SrcPath+Filename), new Path(DstPath+Filename));
        fs.close();
    }


    @Test
    public void download() throws Exception {
        setSourcePath("/output/");
        setDestinationPath("E:\\data\\");
        setFilename("part-r-00000");
        fs.copyToLocalFile(new Path(SrcPath+Filename), new Path(DstPath+Filename));
    }

    /**
     * 判断文件是否存在
     * @throws Exception
     */
    public boolean exits() throws IOException {
        boolean result = fs.exists(new Path(SrcPath));
        return result;
    }

    /**
     * 读取配置文件
     * @throws Exception
     */

    public void readConf(){
        Iterator<Map.Entry<String, String>> iterator = conf.iterator();
        while (iterator.hasNext()) {
            Map.Entry<String, String> entry = iterator.next();
            System.out.println(entry.getValue() + "--" + entry.getValue());//conf加载的内容
        }
    }

    /**
     * 创建目录
     */
    public void makeDir() throws Exception {
        boolean mkdirs = fs.mkdirs(new Path(SrcPath));
        System.out.println(mkdirs);
    }

    /**
     * 递归删除文件夹下的所有文件
     * @throws Exception
     */
    public void deleteDir() throws Exception{
        boolean delete = fs.delete(new Path(SrcPath), true);//true， 递归删除
        if(delete){
            System.out.println("删除成功！！");
        }
    }

    @Test
    public void listAll() throws Exception{

        FileStatus[] listStatus = fs.listStatus(new Path("/"));
        for (FileStatus fileStatus : listStatus) {
            System.err.println(fileStatus.getPath()+"================="+fileStatus.toString());
        }
        //递归找到所有的文件
        RemoteIterator<LocatedFileStatus> listFiles = fs.listFiles(new Path("/"), true);
        while(listFiles.hasNext()){
            LocatedFileStatus next = listFiles.next();
            String name = next.getPath().getName();
            Path path = next.getPath();
            System.out.println(name + "---" + path.toString());
        }
    }

    public void close() throws IOException {
        fs.close();
        return;

    }


}




