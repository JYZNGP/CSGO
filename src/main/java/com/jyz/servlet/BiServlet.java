package com.jyz.servlet;

import com.jyz.MybatisTools.MybatisDelete;
import com.jyz.MybatisTools.MybatisInsert;
import com.jyz.pojo.Bishe;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class BiServlet extends HttpServlet {
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
        String subject = req.getParameter("Bishe");
        String nature = req.getParameter("type1");
        String shape = req.getParameter("type2");
        String whethernew = req.getParameter("type3");
        String whetheroffc = req.getParameter("type4");
        String reason = req.getParameter("reason");
        String source = req.getParameter("source");
        String teacher = req.getParameter("teacher");
        Bishe bishe = new Bishe();
        bishe.setId(Sid);
        bishe.setSubject(subject);
        bishe.setNature(nature);
        bishe.setShape(shape);
        bishe.setWhethernew(whethernew);
        bishe.setWhetheroffc(whetheroffc);
        bishe.setReason(reason);
        bishe.setSource(source);
        bishe.setTeacher(teacher);
        MybatisInsert mybatisInsert = new MybatisInsert();
        if(mybatisInsert.BInsert(bishe))
        {
            resp.sendRedirect("/success.jsp");
        }else{resp.sendRedirect("/error.jsp");}
    }
}
