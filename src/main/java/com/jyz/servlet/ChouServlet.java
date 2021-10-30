package com.jyz.servlet;

import com.jyz.MybatisTools.MybatisDelete;
import com.jyz.MybatisTools.MybatisInsert;
import com.jyz.MybatisTools.MybatisQuery;
import com.jyz.pojo.Gun;
import com.jyz.pojo.User;
import org.junit.Test;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class ChouServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String param1 = req.getParameter("param1");

        HttpSession session = req.getSession(false);
        int Sid = (int) session.getAttribute("LoginSid");
        String username = (String) session.getAttribute("LoginName");
        Gun gun = new Gun();
        gun.setId(Sid);
        gun.setGun(param1);
        User user = new User();
        MybatisInsert mybatisInsert = new MybatisInsert();
        MybatisDelete mybatisDelete = new MybatisDelete();
        MybatisQuery mybatisQuery = new MybatisQuery();
        mybatisDelete.Update(Sid, 500);
        if (mybatisInsert.GInsert(gun)) {
            List<User> userlist = mybatisQuery.Allquery(username);
            req.setAttribute("userinfo", userlist);
            req.getRequestDispatcher("/wel.jsp").forward(req, resp);

        }
    }
}