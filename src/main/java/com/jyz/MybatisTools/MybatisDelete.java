package com.jyz.MybatisTools;

import com.jyz.pojo.Bishe;
import com.jyz.pojo.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class MybatisDelete {
    public boolean Delete(int id) throws IOException {
        InputStream in = Resources.getResourceAsStream("mybatis-config.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        Bishe bishe = new Bishe();
        sqlSession.delete("choke.delete1",id);
        sqlSession.commit();
        sqlSession.close();
        return true;
    }
    public boolean Update(int id,int jian) throws IOException {
        InputStream in = Resources.getResourceAsStream("mybatis-config.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        User user = new User();
        user.setJian(jian);
        user.setId(id);
        sqlSession.delete("choke.update1",user);
        sqlSession.commit();
        sqlSession.close();
        return true;
    }
    public boolean Update2(int id,int add) throws IOException {
        InputStream in = Resources.getResourceAsStream("mybatis-config.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        User user = new User();
        user.setJian(add);
        user.setId(id);
        sqlSession.delete("choke.update2",user);
        sqlSession.commit();
        sqlSession.close();
        return true;
    }
}
