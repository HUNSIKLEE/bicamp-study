//FileInputStream: boolean 값 읽기


package com.bitcamp.study;

import java.io.FileInputStream;
import com.bitcamp.util.DataInputStream;

public class Test01_in {

  public static void main(String[] args) throws Exception{
    FileInputStream in = new FileInputStream("test.data");
    DataInputStream in2 = new DataInputStream(in);


    byte b = in2.readByte();
    short s = in2.readShort();
    int i = in2.readInt();
    long l = in2.readLong();
    float f = in2.readFloat();
    double d = in2.readDouble();
    boolean bool = in2.readBoolean();
    String str1 = in2.readUTF();
    String str2 = in2.readUTF();


    System.out.println(b);
    System.out.println(s);
    System.out.println(i);
    System.out.println(l);
    System.out.println(f);
    System.out.println(d);
    System.out.println(bool);
    System.out.println(str1);
    System.out.println(str2);
    //    boolean b1 = in.read() == 1 ? true : false;
    //    boolean b2 = in.read() == 1 ? true : false;
    //
    //    System.out.println(b1);
    //    System.out.println(b2);


    //    // float 값 읽기
    //    int temp = (in.read() << 24) + (in.read() << 16) + (in.read() << 8) + in.read();
    //    //int 변수에 저장된 것을 float  변수에 담기
    //    float f = Float.intBitsToFloat(temp);
    //    System.out.printf("%f\n" , f);
    //
    //
    //    //double 값 읽기
    //    long temp2 = (((long)in.read()) << 56) 
    //        + ((long)in.read() << 48) 
    //        + ((long)in.read() << 40) 
    //        + ((long)in.read() << 32) 
    //        +((long)in.read() << 24) 
    //        +((long)in.read() << 16) 
    //        +((long)in.read()<< 8) 
    //        +in.read();
    //    //int 변수에 저장된 것을 float  변수에 담기
    //
    //
    //    double d = Double.longBitsToDouble(temp2);
    //    System.out.printf("%f\n" , d);
    //
    //
    //    // 파일 데이터를 끝까지 읽기
    //    // => -1을 리턴할 때까지 읽으면 된다.
    //    // => read() 메서드는 더이상 읽을 바이트가 없다면 -1을 리턴한다.
    //
    //    //바이트를 담을 배열을 준비한다.
    //    byte[] arr = new byte[10];
    //
    //    // 배열 크기만큼 바이트를 읽어서 담는다. 
    //    // => 파일의 크기 보다 배열이 클 경우 파일 크기만큼만 읽는다.
    //    int len = in.read(arr, 3 , 7);
    //
    //    System.out.println("읽은 개수는 : "+ len);
    //
    //    for (int i = 0; i <arr.length; i++) {
    //      System.out.printf("%02x\n", arr[i]);
    //    }
    //    int b;
    //

    //    while ((b = in.read()) != -1 ) {
    //      System.out.printf("%08x\n", b);
    //    }




    //    int b = in.read(); // 1바이트를 읽어서 int 메모리에 담는것. int 라고 4바이트를 읽는것이 아니다.
    //    result += b << 24;
    //    System.out.printf("%08x\n", b);
    //
    //
    //
    //    b = in.read(); // 1바이트를 읽어서 int 메모리에 담는것. int 라고 4바이트를 읽는것이 아니다.
    //    result += b << 16;
    //    System.out.printf("%08x\n", b);
    //
    //    b = in.read(); // 1바이트를 읽어서 int 메모리에 담는것. int 라고 4바이트를 읽는것이 아니다.
    //    result += b << 8;
    //    System.out.printf("%08x\n", b);
    //
    //    b = in.read(); // 1바이트를 읽어서 int 메모리에 담는것. int 라고 4바이트를 읽는것이 아니다.
    //    result += b ;
    //    System.out.printf("%08x\n", b);
    //    System.out.printf("%08x\n", result);
    //
    //    //읽을 바이트가 없다면 -1을 리턴한다.
    //    b = in.read(); 
    //    System.out.printf("%08x, %d\n", b,b);


    in2.close();
    in.close();
    System.out.println("실행 완료");
  }
}
