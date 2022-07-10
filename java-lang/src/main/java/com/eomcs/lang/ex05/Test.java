package com.eomcs.lang.ex05;

    
public class Test {
  public static void main(String[] args) {

        int [] ar = {10,20,30}; // 정수형 4바이트 메모미를 준비해라 . 준비된 메모리에 ar이라는 변수를 만들고 ar[0]번째에 10을 넣고 ar[1]번째에 20을 넣고 ar[2] 번째에 30을 넣어라,.
        
        for(int i=0; i<ar.length; i++)//반복문 for를 이용해서 정수형 4바이트 i를 선언하고 그 i값에 0을 넣어라, i보다 ar.length가 크면 아래 문장을 실행해라. 
        {
            System.out.println("ar[" + i + "]=" + ar[i]);// 다음 ar +i 값 = ar[i] 값을 출력한다음 위의 문장으로 올라가 i++를 해라 그다음 다시 i와 ar.length를 비교하여라  i가 ar.lenght 보다 커질때까지 반복하는구문


    }
 }
}
