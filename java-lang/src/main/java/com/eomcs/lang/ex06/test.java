package com.eomcs.lang.ex06;

public class test {
  public static void main(String[] args){
    
    System.out.println("점수를 입력해주세요.");
    java.util.Scanner keyboardInput = new java.util.Scanner(System.in);

    int score = keyboardInput.nextInt();
      keyboardInput.nextLine();
      
      while (true) {
        if ( score >= 100 ){
        System.out.println("A");
break;        } else if ( score >= 90 ){
          System.out.println("A");
break;          } else if ( score >= 80 ){
            System.out.println("B");
break;           } else if ( score >= 70 ){
              System.out.println("C");  
break;           } else if ( score >= 60 ){
               System.out.println("D");
break;            
                  } else
                  System.out.println("F");
                  break;       
              }
          }
        
}
        

        
        
      
    
  
  

  
  