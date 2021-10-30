package com.jyz.MybatisTools;

import com.jyz.pojo.Bishe;
import com.jyz.pojo.Gun;
import com.jyz.pojo.Teacher;
import com.jyz.pojo.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import java.io.IOException;
import java.io.InputStream;


public class MybatisInsert {

    public boolean UInsert(User user) throws IOException {
        InputStream in = Resources.getResourceAsStream("mybatis-config.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        sqlSession.insert("choke.insert",user);
        sqlSession.commit();
        sqlSession.close();
        return true;
        }
    public boolean BInsert(Bishe bishe) throws IOException {
        InputStream in = Resources.getResourceAsStream("mybatis-config.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        sqlSession.insert("choke.insert3",bishe);
        sqlSession.commit();
        sqlSession.close();
        return true;
    }
    public boolean TInsert(Teacher teacher) throws IOException {
        InputStream in = Resources.getResourceAsStream("mybatis-config.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        sqlSession.insert("choke.insert2",teacher);
        sqlSession.commit();
        sqlSession.close();
        return true;
    }
    public boolean GInsert(Gun gun) throws IOException {
        InputStream in = Resources.getResourceAsStream("mybatis-config.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        sqlSession.insert("choke.insert4",gun);
        sqlSession.commit();
        sqlSession.close();
        return true;
    }
    }
