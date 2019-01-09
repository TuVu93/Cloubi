package com.example.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.blog.Post;

/**
 * Servlet implementation class AddPostServlet
 */
@WebServlet("/new")
public class AddPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 RequestDispatcher dispatcher = request.getServletContext()
                 .getRequestDispatcher("/WEB-INF/jsp/new-post-view.jsp");
         dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        Post post = new Post();
        String title = request.getParameter("title");
        String body = request.getParameter("body");
        
    	post.setTitle(title);
    	post.setBody(body);
    	try {
        	Connection conn = MySQLConn.getMySQLConnection();
        	
        	if (MySQLCommand.insertPost(conn, post)) {response.sendRedirect(request.getContextPath() + "/home");}
 
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("Add");
        }
 
        out.close();
	}

}
