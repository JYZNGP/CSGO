package com.jyz.servlet;

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

public class DataServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession(false);
        int Sid = (int)session.getAttribute("LoginSid");
        MybatisQuery mybatisQuery = new MybatisQuery();
        List<Gun> gunlist = mybatisQuery.gunquery(Sid);
        req.setAttribute("guninfo", gunlist);
        req.getRequestDispatcher("/data.jsp").forward(req, resp);
    }
}
