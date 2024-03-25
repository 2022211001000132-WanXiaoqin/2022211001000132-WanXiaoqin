package com.example.WanXiaoqin2022211001000132;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet",
initParams={
        @WebInitParam(name="driver",value="com.mysql.cj.jdbc.Driver"),
@WebInitParam(name="url",value="jdbc:mysql://localhost:3306/userdb"),
@WebInitParam(name="username",value="root"),
@WebInitParam(name="password",value="123456"),
        }
        )
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
        String driver="com.mysql.cj.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/userdb";
        String username="root";
        String password="123456";


        try{
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url,username,password);
            System.out.println(con);
        } catch (ClassNotFoundException | SQLException  e){
            e.printStackTrace() ;
        }
    }

    public void destroy() {
    }
}