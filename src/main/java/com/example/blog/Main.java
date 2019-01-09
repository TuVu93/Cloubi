package com.example.blog;

import java.io.IOException;
import java.net.ServerSocket;
import java.util.Optional;

import javax.swing.JOptionPane;

import org.apache.catalina.startup.Tomcat;

public class Main {
    
    public static final Optional<String> PORT = Optional.ofNullable(System.getenv("PORT"));
    public static final Optional<String> HOSTNAME = Optional.ofNullable(System.getenv("HOSTNAME"));
    
    public static void main(String[] args) throws Exception {
    	int port = 0;
    	try {
    		ServerSocket s = create(new int[] {8080, 8081, 8082});
    	    port = s.getLocalPort();
    	    System.out.println("listening on port: " + port);
    	    s.close();
    	} catch (IOException ex) {
    	    System.err.println("no available ports");
    	    JOptionPane.showMessageDialog(null, "No available ports");
    	}
    	if ( port != 0){
    	    JOptionPane.showMessageDialog(null, "Connect to localhost:"+ port);
	        String contextPath = "/" ;
	        String appBase = ".";
	        Tomcat tomcat = new Tomcat();   
	        tomcat.setPort(Integer.valueOf(port));
	        tomcat.setHostname(HOSTNAME.orElse("localhost"));
	        tomcat.getHost().setAppBase(appBase);
	        tomcat.addWebapp(contextPath, appBase);
	        tomcat.start();
	        tomcat.getServer().await();
    	}
    }
	public static ServerSocket create(int[] ports) throws IOException {
	    for (int port : ports) {
	        try {
	            return new ServerSocket(port);
	        } catch (IOException ex) {
	            continue; // try next port
	        }
	    }
	
	    // if the program gets here, no port in the range was found
	    throw new IOException("no free port found");
	}
}