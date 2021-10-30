package com.jyz.servlet;

import com.jyz.MybatisTools.MybatisDelete;
import com.jyz.MybatisTools.MybatisQuery;
import com.jyz.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class PayServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession(false);
        int Sid = (int) session.getAttribute("LoginSid");
        String username = (String) session.getAttribute("LoginName");
        String param2 = req.getParameter("pay");
        int add = Integer.parseInt(param2);
        MybatisDelete mybatisDelete = new MybatisDelete();
        MybatisQuery mybatisQuery = new MybatisQuery();
        mybatisDelete.Update2(Sid,add);
        List<User> userlist = mybatisQuery.Allquery(username);
        req.setAttribute("userinfo", userlist);
        req.getRequestDispatcher("/wel.jsp").forward(req, resp);
    }
}
