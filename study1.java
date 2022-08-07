package javaStudy;

import java.util.Scanner;

public class study1 {

	public static void main(String[] args) {


		// 1~n 까지 출력하기

		// 1. 입력받기

		Scanner s = new Scanner(System.in);

		//int num = s.nextInt();

		s.close();

		for(int k=1; k<=10;k++) {
			for(int i=1; i<=10;i++) {
				if(10 -k >=i) {
					System.out.print(" ");
				}else {
					System.out.print("*");
				}

			}
			System.out.print("\n");
		}
	}
}
