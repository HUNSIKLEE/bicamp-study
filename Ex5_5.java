package javaStudy;

public class Ex5_5 {


	public static void main(String[] args) {
		// . 큰 금액의 동전을 우선적으로 거슬러 줘야한다
		int[] coinUnit = {500, 100, 50, 10};
		int money = 2680;
		System.out.println("money="+money);

		for(int i=0;i<coinUnit.length;i++) {
			int count = 0;

			for(int j = 0; 1 == 1; j++) {

				money = money - coinUnit[i];
				count++;

				if(money < coinUnit[i] ){

					System.out.println(coinUnit[i] + "원 :" + count);
					break;
				}
			}

		}

	}
}
