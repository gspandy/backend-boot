package com.bdfint.backend.framework.config;

import com.bdfint.backend.framework.cache.JedisUtils;
import com.bdfint.backend.modules.sys.utils.UserUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import javax.rmi.CORBA.Util;

/**
 * @author lufengc
 * @version 2016/11/18
 */
@Order(value=1)
@Component
public class StartupRunner implements CommandLineRunner {

    protected Logger logger = LoggerFactory.getLogger(getClass());

    @Override
    public void run(String... args) throws Exception {
        //JedisUtils.delAll();
        logger.info("所有缓存数据已清除");
    }
}
