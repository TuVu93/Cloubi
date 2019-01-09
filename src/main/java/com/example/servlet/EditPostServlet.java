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
 * Servlet implementation class EditPostServlet
 */
@WebServlet("/edit")
public class EditPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 
    public EditPostServlet() {
        super();
    }
 
    // Show product edit page.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
                .getRequestDispatcher("/WEB-INF/jsp/edit-post-view.jsp");
        dispatcher.forward(request, response);
 
    }
 
    // After the user modifies the post information, and click Submit.
    // This method will be executed.
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
  		Post post = new Post();
        post.setId((String) request.getParameter("id"));
        post.setTitle(request.getParameter("title"));
        post.setBody(request.getParameter("body"));
        
        String errorString = null;
 
        try {
        	MySQLCommand.updatePost(conn, post);
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
            System.out.println("edit");
        }
        // Store infomation to request attribute, before forward to views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("post", post);
 
        // If error, forward to Edit page.
        if (errorString != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/WEB-INF/views/edit-post-view.jsp");
            dispatcher.forward(request, response);
        }
        // If everything nice.
        // Redirect to the homepage.
        else {
            response.sendRedirect(request.getContextPath() + "/home");
        }
    }
}
