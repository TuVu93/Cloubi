package com.example.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.blog.Post;

/**
 * Servlet implementation class ViewPostServlet
 */
@WebServlet("/view")
public class ViewPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  Connection conn;
			try {
				conn = MySQLConn.getMySQLConnection();
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				return;
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				return;
			}
	 
	        String id =  (String) request.getParameter("id");
	 
	        Post post = null;
	 
	        String errorString = null;
	 
	        try {
	        	post = MySQLCommand.findPost(conn, id);
	        } catch (SQLException e) {
	            e.printStackTrace();
	            errorString = e.getMessage();
	        }
	 
	        // If no error.
	        // The post does not exist to edit.
	        // Redirect to homepage.
	        if (errorString != null && post == null) {
	            response.sendRedirect(request.getServletPath() + "/home");
	            return;
	        }
	 
	        // Store errorString in request attribute, before forward to views.
	        request.setAttribute("errorString", errorString);
	        request.setAttribute("post", post);
	 
	        RequestDispatcher dispatcher = request.getServletContext()
	                .getRequestDispatcher("/WEB-INF/jsp/view-post-view.jsp");
	        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
