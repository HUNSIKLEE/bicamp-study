package com.bitcamp.study;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;

public class Server {

  public static void main(String[] args) {
   
    
      try (ServerSocket  ss = new ServerSocket(9999)){
        
        while(true) {
          Socket cs = ss.accept();
          OutputStream os = cs.getOutputStream();
          
          
          DataInputStream dis = new DataInputStream(cs.getInputStream());
          DataOutputStream dos = new DataOutputStream(cs.getOutputStream());
          
          String data = dis.readUTF();
//        System.out.println("server readData["+data+"]");
        
        
        dos.writeUTF("writeData");
        
        
        
        
        }
        
        
      }catch(Exception x) {
        
      }
  }

}
