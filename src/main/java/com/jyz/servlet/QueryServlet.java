package com.jyz.servlet;

import com.jyz.MybatisTools.MybatisQuery;
import com.jyz.pojo.Bishe;
import com.jyz.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class QueryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String userid = req.getParameter("query");

        HttpSession session = req.getSession(false);
        String Sn = (String)session.getAttribute("Loginname");
        MybatisQuery mybatisQuery = new MybatisQuery();
        int id = Integer.parseInt(userid);
        List<Bishe> bishe = mybatisQuery.BiQuery(id);
        req.setAttribute("bisheinfo", bishe);
        req.getRequestDispatcher("/ans.jsp").forward(req, resp);
    }
}
