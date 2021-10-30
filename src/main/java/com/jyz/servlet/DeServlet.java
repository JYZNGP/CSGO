package com.jyz.servlet;

import com.jyz.MybatisTools.MybatisDelete;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class DeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String whether = req.getParameter("status2");
        HttpSession session = req.getSession(false);
        int Sid = (int)session.getAttribute("LoginSid");
        if(whether.equals("是")){
            MybatisDelete mybatisDelete = new MybatisDelete();
            mybatisDelete.Delete(Sid);
            resp.sendRedirect("/tianbao.jsp");
        }
    }
}
