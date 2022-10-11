-- 보안질문 데이터 입력
insert into secq(secqno,sq) values(1,'내가 좋아하는 강아지 품종은?');
insert into secq(secqno,sq) values(2,'내가 다녔던 초등학교 이름은?');
insert into secq(secqno,sq) values(3,'나의 아버지 이름은?');
insert into secq(secqno,sq) values(4,'내가 가장 좋아하는 취미는?');
insert into secq(secqno,sq) values(5'내가 태어난 곳은?');

-- 운동 지역 데이터 입력
insert into region(rno,sido,sigu) values(1,'서울시', '종로구');
insert into region(rno,sido,sigu) values(2,'서울시', '중구');
insert into region(rno,sido,sigu) values(3,'서울시', '용산구');
insert into region(rno,sido,sigu) values(4,'서울시', '성동구');
insert into region(rno,sido,sigu) values(5,'서울시', '광진구');
insert into region(rno,sido,sigu) values(6,'서울시', '동대문구');
insert into region(rno,sido,sigu) values(7,'서울시', '중랑구');
insert into region(rno,sido,sigu) values(8,'서울시', '성북구');
insert into region(rno,sido,sigu) values(9,'서울시', '강북구');
insert into region(rno,sido,sigu) values(10,'서울시', '도봉구');
insert into region(rno,sido,sigu) values(11,'서울시', '노원구');
insert into region(rno,sido,sigu) values(12,'서울시', '은평구');
insert into region(rno,sido,sigu) values(13,'서울시', '서대문구');
insert into region(rno,sido,sigu) values(14,'서울시', '마포구');
insert into region(rno,sido,sigu) values(15,'서울시', '양천구');
insert into region(rno,sido,sigu) values(16,'서울시', '강서구');
insert into region(rno,sido,sigu) values(17,'서울시', '구로구');
insert into region(rno,sido,sigu) values(18,'서울시', '금천구');
insert into region(rno,sido,sigu) values(19,'서울시', '영등포구');
insert into region(rno,sido,sigu) values(20,'서울시', '동작구');
insert into region(rno,sido,sigu) values(21,'서울시', '관악구');
insert into region(rno,sido,sigu) values(22,'서울시', '서초구');
insert into region(rno,sido,sigu) values(23,'서울시', '강남구');
insert into region(rno,sido,sigu) values(24,'서울시', '송파구');
insert into region(rno,sido,sigu) values(25,'서울시', '강동구');
  


-- 회원 데이터 입력
insert into member(mno,name,email,pwd,nick,tel,bday,sex,filepath,cdt,act,black,secqno,sa)
values(1, '이헌식','sik@test.com',
'1111','흔시기','01011112222',
'9002061','0','26920e00-03fa-400d-a287-00460213ce49',
'2022-10-06','0','0','1','셸티');

insert into member(mno,name,email,pwd,nick,tel,bday,sex,filepath,cdt,act,black,secqno,sa)
values(2, '박병민','min@test.com',
'1111','병미니','01033334444',
'9402061','0','e4797a10-bb17-473e-b8f1-1379804ce6c5',
'2022-10-06','0','0','1','불독');

insert into member(mno,name,email,pwd,nick,tel,bday,sex,filepath,cdt,act,black,secqno,sa)
values(3, '임은지','gi@test.com',
'1111','이문지','01055556666',
'9402061','0','73a5722e-7dae-4b35-adc8-56640d7fde35',
'2022-10-06','0','0','1','웰시코기');

insert into member(mno,name,email,pwd,nick,tel,bday,sex,filepath,cdt,act,black,secqno,sa)
values(4, '유제동','dongdong@test.com',
'1111','동동이','01077778888',
'9502061','0','9bed1978-2b0d-4356-8227-9ae05274a488',
'2022-10-06','0','0','1','말티즈');

insert into member(mno,name,email,pwd,nick,tel,bday,sex,filepath,cdt,act,black,secqno,sa)
values(5, '최종찬','chan@test.com',
'1111','종차니','01099991121',
'9102061','0','4a245719-e75f-4344-8ce4-d92215260da8',
'2022-10-06','0','0','1','치와와');



-- 운동 분류 


insert into sports(sno,name) values(1,'헬스');
insert into sports(sno,name) values(2,'클라이밍');
insert into sports(sno,name) values(3,'배드민턴');
insert into sports(sno,name) values(4,'축구');
insert into sports(sno,name) values(5,'농구');


-- 관리자 

insert into admin(adno,name,email,pwd,cdt) 
values(1,'admin','admin@test.com','1111','2022-10-06');


--알림 

insert into alert(alno,mno,cont,aldt,alcheck) 
values(1,1,'댓글이 달렸어요!','2022-10-06','1');

insert into alert(alno,mno,cont,aldt,alcheck) 
values(2,2,'댓글이 달렸어요2!','2022-10-06','1');

insert into alert(alno,mno,cont,aldt,alcheck) 
values(3,3,'댓글이 달렸어요3!','2022-10-06','1');

insert into alert(alno,mno,cont,aldt,alcheck) 
values(4,4,'댓글이 달렸어요4!','2022-10-06','1');

insert into alert(alno,mno,cont,aldt,alcheck) 
values(5,5,'댓글이 달렸어요5!','2022-10-06','1');





-- 장소 location

insert into location(lno,rno,sno) values(1,1,1);
insert into location(lno,rno,sno) values(2,2,2);
insert into location(lno,rno,sno) values(3,3,3);
insert into location(lno,rno,sno) values(4,4,4);
insert into location(lno,rno,sno) values(5,5,5);





-- 모임 part


insert into party(pno,sno,lno,title,act,cont,cdt,headcnt,ptime,pdate)
values(1,1,1,
'파티원모집함','1','3대측정할 파티원모집함',
'2022-10-06','5','17:00',
'2022-10-06');

insert into party(pno,sno,lno,title,act,cont,cdt,headcnt,ptime,pdate)
values(2,2,2,
'클라이밍가실분','1','망포 동동이클라이밍장 좋아요 커몬요!',
'2022-10-06','5','10:00',
'2022-10-06');

insert into party(pno,sno,lno,title,act,cont,cdt,headcnt,ptime,pdate)
values(3,3,3,
'배드민턴 치실분?','1','동탄호수공원에서 쳐요!',
'2022-10-06','5','18:00',
'2022-10-06');

insert into party(pno,sno,lno,title,act,cont,cdt,headcnt,ptime,pdate)
values(4,4,4,
'축구하십시더! ','1','24명 구해봐요!',
'2022-10-06','5','17:00',
'2022-10-06');

insert into party(pno,sno,lno,title,act,cont,cdt,headcnt,ptime,pdate)
values(5,5,5,
'농구 고고','1','신나게 달려보시져 ',
'2022-10-06','5','17:00',
'2022-10-06');

