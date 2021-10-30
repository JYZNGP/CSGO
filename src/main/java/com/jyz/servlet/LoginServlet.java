package com.jyz.servlet;

import com.jyz.MybatisTools.MybatisInsert;
import com.jyz.MybatisTools.MybatisQuery;
import com.jyz.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doPost(req, resp);
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        /*String status = req.getParameter("status");*/
        MybatisQuery mybatisQuery = new MybatisQuery();
        /*if(status.equals("学生")) {*/
            if (mybatisQuery.Uquery(username, password)) {
                int Sid = mybatisQuery.IDquery(username);
                List<User> user = mybatisQuery.Allquery(username);
                System.out.println(user);
                HttpSession session = req.getSession();
                session.setAttribute("LoginSid", Sid);
                session.setAttribute("LoginName", username);
                req.setAttribute("userinfo", user);
                req.getRequestDispatcher("/wel.jsp").forward(req, resp);
            }/*else if(t){
            resp.sendRedirect("/query.jsp");
        }*/ else {
                resp.sendRedirect("/error.jsp");
            }

        /*if(status.equals("教师")) {
            if (mybatisQuery.Tquery(username, password)) {
                HttpSession session = req.getSession();
                session.setAttribute("Loginname", username);
                resp.sendRedirect("/query.jsp");
            } else {
                resp.sendRedirect("/error.jsp");
            }
        }*/
    }
}
