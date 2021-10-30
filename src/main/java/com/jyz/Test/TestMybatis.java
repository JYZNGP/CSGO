package com.jyz.Test;

import com.jyz.MybatisTools.MybatisInsert;
import com.jyz.MybatisTools.MybatisQuery;
import com.jyz.pojo.Teacher;
import com.jyz.pojo.User;
import org.junit.Test;

import java.io.IOException;

public class TestMybatis {
    @Test
   public void test() throws IOException {
        Teacher teacher = new Teacher();

        MybatisQuery m = new MybatisQuery();
        boolean n = m.Tquery("靳海王","jinhaiwang");
        System.out.println(n+",,,,,,");
    }
    @Test
    public void test2() throws IOException {
        User user = new User();

        MybatisQuery m = new MybatisQuery();
        boolean n = m.Uquery("靳雨泽","jinyuze");
        System.out.println(n+",,,,,,");
    }
}
