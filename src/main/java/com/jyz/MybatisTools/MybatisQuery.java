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
import java.util.List;

public class MybatisQuery {
    public boolean Uquery(String username, String password) throws IOException {
        InputStream in = Resources.getResourceAsStream("mybatis-config.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        User user = new User();
        user = sqlSession.selectOne("choke.select", username);
        if (user.getPassword() == null) return false;
        sqlSession.close();
        if (password.equals(user.getPassword())) {
            return true;
        } else {
            return false;
        }

    }

    public boolean Tquery(String username, String password) throws IOException {
        InputStream in = Resources.getResourceAsStream("mybatis-config.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        Teacher teacher = new Teacher();
        teacher = sqlSession.selectOne("choke.select3", username);
        if (teacher.getPassword() == null) return false;
        sqlSession.close();
        if (password.equals(teacher.getPassword())) {
            return true;
        } else {
            return false;
        }

    }

    public int IDquery(String username) throws IOException {
        InputStream in = Resources.getResourceAsStream("mybatis-config.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        User user = new User();
        user = sqlSession.selectOne("choke.select2", username);
        sqlSession.close();
        return user.getId();


    }
    public List Allquery(String username) throws IOException {
        InputStream in = Resources.getResourceAsStream("mybatis-config.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        User user = new User();
        List<User> userList = sqlSession.selectList("choke.select4",username);
        sqlSession.close();
        return userList;
    }
    public List BiQuery(int id)throws IOException{
        InputStream in = Resources.getResourceAsStream("mybatis-config.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        Bishe bishe = new Bishe();
        List<Bishe> bisheList = sqlSession.selectList("choke.select5",id);
        return bisheList;
    }
    public List BiQuery2(String teacher)throws IOException{
        InputStream in = Resources.getResourceAsStream("mybatis-config.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        Bishe bishe = new Bishe();
        List<Bishe> bisheList = sqlSession.selectList("choke.select6",teacher);
        return bisheList;
    }
    public List gunquery(int id) throws IOException {
        InputStream in = Resources.getResourceAsStream("mybatis-config.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        List<Gun> gunList = sqlSession.selectList("choke.select8",id);
        sqlSession.close();
        return gunList;
    }
}