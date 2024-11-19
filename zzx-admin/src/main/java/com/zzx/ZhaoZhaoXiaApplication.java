package com.zzx;

import org.dromara.x.file.storage.spring.EnableFileStorage;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 * 
 * @author ruoyi
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
@EnableFileStorage
public class ZhaoZhaoXiaApplication
{
    public static void main(String[] args)
    {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(ZhaoZhaoXiaApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  找找侠启动成功   ლ(´ڡ`ლ)ﾞ  \n" );
    }
}
