package com.jinyinwu.lender.test;

/**
 * Created by wangkun23 on 2017/4/17.
 */

import com.jinyinwu.lender.config.AppConfig;
import com.jinyinwu.lender.config.DataSourceConfig;
import com.jinyinwu.lender.config.ShiroCasConfig;
import com.jinyinwu.lender.config.WebConfig;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by Wanglei on 15/10/29.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {AppConfig.class, DataSourceConfig.class})
public class TestBase {

    @Test
    public void empty() {
    }
}
