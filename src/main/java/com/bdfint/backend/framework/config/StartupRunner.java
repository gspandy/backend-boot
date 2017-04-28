package com.bdfint.backend.framework.config;

import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

/**
 * @author lufengc
 * @version 2016/11/18
 */
@Order(value=1)
@Component
public class StartupRunner implements CommandLineRunner {

    @Override
    public void run(String... args) throws Exception {
        System.out.println("服务启动执行，执行加载数据等操作......");
    }
}
