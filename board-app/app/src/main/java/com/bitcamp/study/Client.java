package com.bitcamp.study;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.Socket;

public class Client {

  public static void main(String[] args) {

    try(Socket socket = new Socket("127.0.0.1" , 9999)) {
      
      String writeData = "test";
      
     DataOutputStream dos = new DataOutputStream(socket.getOutputStream());
     dos.writeUTF(writeData);
     
     DataInputStream dis = new DataInputStream(socket.getInputStream());
     String readData = dis.readUTF();
     
      
    }catch(Exception x) {
      
    }
    
    
    
    
    
  }

  //  // Object --> JSON 문자열
  //  Gson gson = new Gson();
  //
  //  String json = gson.toJson(b);
  //
  //  System.out.println(json);
  //
  //  Board b2 = gson.fromJson(json, Board.class);
  //
  //  System.out.println(b2);
  //
  //
  //  System.out.println(b == b2);
  //}

}
