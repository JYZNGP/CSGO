package com.jyz.servlet;

import com.jyz.MybatisTools.MybatisInsert;
import com.jyz.pojo.Teacher;
import com.jyz.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
               resp.setCharacterEncoding("UTF-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String sex = req.getParameter("sex");

        MybatisInsert mi = new MybatisInsert();

            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            user.setEmail(email);
            user.setSex(sex);
            user.setMoney(0);
            if(mi.UInsert(user)){
                resp.sendRedirect("/index.jsp");
            }else {
                resp.sendRedirect("/reg.jsp");
            }


    }
}
