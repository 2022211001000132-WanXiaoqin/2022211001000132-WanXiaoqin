package com.WanXiaoqin.week2.demo;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class HelloWorldServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException{
        PrintWriter writer= response.getWriter();
        writer.println("Name : WanXiaoqin\n"+
                "Id : 2022211001000132\n" +
                "Date and Time : Sun March 10 11:50:27 CST 2024\n");



        }

    public void doPost(HttpServletRequest request, HttpServletResponse response) {

    }
}