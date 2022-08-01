package com.bitcamp.board.dao;

import com.bitcamp.board.domain.Member;
import com.bitcamp.util.ObjectList;

// 회원 목록을 관리하는 역할
//
public class MemberDao {

  //MemberDao 가 사용할 의존 객체를 선언한다.
  ObjectList list = new ObjectList();

  // ObjectList를 상속 받지 않기 떄문에
  // 목록에 데이터를 추가하고 싶다면
  // MemberDao 클래스 에서 해당 메서드를 직접 정의해야 한다.
  //물론, 실제 작업은 ObjectList가 할 것이다.
  public void insert(Member member) {
    list.add(member);
  }



  // ObjectList의 get()에서 던지는 예외를 이 메서드에서 처리하지 않고
  // 호출자에게 처리를 위임한다.
  // => ListException은 RuntimeException 계열이기 때문에 
  //    메서드 선언부에 표시하지 않아도 된다.
  //    Exception 계열의 예외를 다루는 것 보다 덜 번거롭다.
  // MemberList 에서 MemberDao로 봐꾸는것에 맞춰 
  //메서드의 이름도 데이터에 초점을 맞춰 변경한다.
  public Member findByEmail(String email) {
    for (int i = 0; i < list.size(); i++) {
      Member member = (Member) list.get(i);
      if (member.email.equals(email)) {
        return member;
      }
    }
    return null;
  }

  // ObjectList의 get()에서 던지는 예외를 이 메서드에서 처리하지 않고
  // 호출자에게 처리를 위임한다.
  // => ListException은 RuntimeException 계열이기 때문에 
  //    메서드 선언부에 표시하지 않아도 된다.
  //    Exception 계열의 예외를 다루는 것 보다 덜 번거롭다.
  //


  //
  public boolean delete(String email) {
    for (int i = 0; i < list.size(); i++) {
      Member member = (Member) list.get(i);
      if (member.email.equals(email)) {
        return list.remove(i);
      }
    }
    return false;
  }


  public Member[] findAll() {

    //목록에서 저장된 회원 데이터를 가져온다.
    Object[] arr = list.toArray();

    //Object[]  배열의 값을 Memberp[] 로 옮긴다.

    Member[] members = new Member[arr.length];

    for(int i= 0; i<arr.length; i++) {
      members[i] = (Member) arr[i];

    }
    return members;
  }


}














