package com.jyz.servlet;

import com.jyz.MybatisTools.MybatisDelete;
import com.jyz.MybatisTools.MybatisInsert;
import com.jyz.MybatisTools.MybatisQuery;
import com.jyz.pojo.Gun;
import com.jyz.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class BuyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String gunname = req.getParameter("gun");
        String val = req.getParameter("value");
        int value = Integer.parseInt(val);
        HttpSession session = req.getSession(false);
        int Sid = (int) session.getAttribute("LoginSid");
        Gun gun = new Gun();
        gun.setGun(gunname);
        gun.setId(Sid);
        MybatisInsert mybatisInsert = new MybatisInsert();
        MybatisDelete mybatisDelete = new MybatisDelete();
        mybatisDelete.Update(Sid,value);
        if(mybatisInsert.GInsert(gun)){
            String username = (String) session.getAttribute("LoginName");
            MybatisQuery mybatisQuery = new MybatisQuery();
            List<User> userlist = mybatisQuery.Allquery(username);
            req.setAttribute("userinfo", userlist);
            req.getRequestDispatcher("/wel.jsp").forward(req, resp);
        }
    }
}
