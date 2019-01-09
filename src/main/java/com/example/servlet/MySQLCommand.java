package com.example.servlet;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.example.blog.Post;

public class MySQLCommand {

 
    public static List<Post> queryPost(Connection conn) throws SQLException {
    	String sql = "select a.* from blogpost a";
        
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<Post> list = new ArrayList<Post>();
        while (rs.next()) {
        	String id = rs.getString("Id");
            String title = rs.getString("Title");
            String body = rs.getString("Text");
            java.sql.Timestamp time = rs.getTimestamp("Date");
            Date date = new Date(time.getTime());
            Post post = new Post();
            post.setId(id);
            post.setTitle(title);
            post.setBody(body);
            post.setDate(date);
            list.add(post);
        }
        return list;
    }
    
    public static boolean insertPost(Connection conn, Post post) throws SQLException {
 
        PreparedStatement ps = conn
        		.prepareStatement("insert into blogpost values(NULL, ?, ?, CURRENT_TIME())");
 
        ps.setString(1, post.getTitle());
        ps.setString(2, post.getBody());
 
        int i = ps.executeUpdate();
        if (i > 0) {return true;} else return false;
    }
 
    public static Post findPost(Connection conn, String id) throws SQLException {
        String sql = "Select a.* from blogpost a where a.id=?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, id);
 
        ResultSet rs = pstm.executeQuery();
 
        while (rs.next()) {
            String title = rs.getString("title");
            String body = rs.getString("text");
            java.sql.Timestamp time = rs.getTimestamp("Date");
            Date date = new Date(time.getTime());
            Post post = new Post(id, title, body, date);
            return post;
        }
        return null;
    }
 
    public static void updatePost(Connection conn, Post post) throws SQLException {
        String sql = "Update blogpost set Title =?, Text=? where Id=? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, post.getTitle());
        pstm.setString(2, post.getBody());
        pstm.setLong(3, Long.parseLong(post.getId()));
        pstm.executeUpdate();
    }

 
    public static void deletePost(Connection conn, String id) throws SQLException {
        String sql = "Delete From blogpost where id= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setLong(1, Long.parseLong(id));
 
        pstm.executeUpdate();
    }

}