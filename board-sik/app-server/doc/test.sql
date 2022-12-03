INSERT INTO `location` (`lno`, `rno`, `sno`)
VALUES
  (1, 1, 1),
  (2, 2, 2),
  (3, 3, 3),
  (4, 4, 4),
  (5, 5, 5),
  (6, 6, 6),
  (7, 7, 7),
  (8, 8, 8),
  (9, 9, 9),
  (10, 10, 10);

INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`)
VALUES
  (1, 1, 1, '파티원모집함', 1, '3대측정할 파티원모집함', '2022-10-06 00:00:00', 5, '17:00:00', '2022-10-06'),
  (2, 2, 2, '클라이밍가실분', 1, '망포 동동이클라이밍장 좋아요 커몬요!', '2022-10-06 00:00:00', 5, '10:00:00', '2022-10-06'),
  (3, 3, 3, '배드민턴 치실분?', 1, '동탄호수공원에서 쳐요!', '2022-10-06 00:00:00', 5, '18:00:00', '2022-10-06'),
  (4, 4, 4, '축구하십시더! ', 1, '24명 구해봐요!', '2022-10-06 00:00:00', 5, '17:00:00', '2022-10-06'),
  (5, 5, 5, '농구 고고', 1, '신나게 달려보시져 ', '2022-10-06 00:00:00', 5, '17:00:00', '2022-10-06');


  INSERT INTO `member` (`mno`, `name`, `email`, `pwd`, `nick`, `tel`, `bday`, `sex`, `filepath`, `cdt`, `act`, `black`, `secqno`, `sa`)
VALUES
  (1, '이헌식', 'sik@test.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '흔시기', 1011112222, '1990-02-06', 0, '26920e00-03fa-400d-a287-00460213ce49', '2022-10-06 00:00:00', 0, 0, 1, '셸티'),
  (2, '박병민', 'min@test.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '병미니', 1033334444, '1994-02-06', 0, 'e4797a10-bb17-473e-b8f1-1379804ce6c5', '2022-10-06 00:00:00', 0, 0, 1, '불독'),
  (3, '임은지', 'gi@test.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '이문지', 1055556666, '1994-02-06', 0, '73a5722e-7dae-4b35-adc8-56640d7fde35', '2022-10-06 00:00:00', 0, 0, 1, '웰시코기'),
  (4, '유제동', 'dongdong@test.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '동동이', 1077778888, '1995-02-06', 0, '9bed1978-2b0d-4356-8227-9ae05274a488', '2022-10-06 00:00:00', 0, 0, 1, '말티즈'),
  (5, '최종찬', 'chan@test.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '종차니', 1099991121, '1991-02-06', 0, '4a245719-e75f-4344-8ce4-d92215260da8', '2022-10-06 00:00:00', 0, 0, 1, '치와와'),
  (6, '안치운', 'an@test.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '치우니', 1091991121, '1997-03-06', 0, '4a245719-e75f-4344-8ce4-d92215260da8', '2022-10-06 00:00:00', 0, 0, 1, '도베르만'),
  (7, '황의찬', 'eeeechan@test.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '의차니', 1033391121, '1997-02-11', 0, '4a245719-e75f-4344-8ce4-d92215260da8', '2022-10-06 00:00:00', 0, 0, 1, '진돗개'),
  (8, '주 영', ' joo@test.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '영이', 1098891121, '1991-02-06', 0, '4a245719-e75f-4344-8ce4-d92215260da8', '2022-10-06 00:00:00', 0, 0, 1, '슈바우쳐'),
  (9, '임동현', 'lim@test.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '림동', 1022991121, '1990-03-06', 0, '4a245719-e75f-4344-8ce4-d92215260da8', '2022-10-06 00:00:00', 0, 0, 1, '푸들'),
  (10, '장슬기', 'sulgi@test.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '스기', 1099891121, '1990-06-06', 0, '4a245719-e75f-4344-8ce4-d92215260da8', '2022-10-06 00:00:00', 0, 0, 1, '포메');


    INSERT INTO `sports` (`sno`, `name`)
VALUES
  (1, '헬스'),
  (2, '클라이밍'),
  (3, '배드민턴'),
  (4, '축구'),
  (5, '농구'),

  INSERT INTO `admin` (`adno`, `name`, `email`, `pwd`, `cdt`)
VALUES
  (1, 'admin', 'admin@test.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '2022-10-06 00:00:00');

  
  

INSERT INTO `alert` (`alno`, `mno`, `cont`, `aldt`, `alcheck`)
VALUES
  (1, 1, '모임장으로 부터 댓글이 달렸어요!', '2022-10-06 00:00:00', 1),
  (2, 2, '클라이밍 모임이 승인이 완료되었습니다.', '2022-10-06 00:00:00', 1),
  (3, 3, '다른 사용자가 다음 댓글에 댓글을 달았습니다.', '2022-10-06 00:00:00', 1),
  (4, 4, '3대 무게 .... 답글이 달렸습니다.', '2022-10-06 00:00:00', 1),
  (5, 5, '농구모임이 거절 되었습니다.\n', '2022-10-06 00:00:00', 1),
  (6, 6, '배고파요...답글이 달렸습니다.', '2022-10-06 00:00:00', 1),
  (7, 7, '관리자 댓글이 달렸어요.', '2022-10-06 00:00:00', 1),
  (8, 8, '추천식단은....댓글이 달렸습니다.', '2022-10-06 00:00:00', 1),
  (9, 9, '배고파요...답글이 달렸습니다.', '2022-10-06 00:00:00', 1),
  (10, 10, '농구모임이 거절 되었습니다.', '2022-10-06 00:00:00', 1);

  
  
  개시글당 처리상태 여러개, 게시글 신고 사유도 여러개, 신고한 게시글이 여러개가 될수도 있고 신고한 회원도 여러명 일수도 있고

      멤버 신고     신고번호(PK) 신고자회원번호(FK) 피신고자회원번호(FK) 신고사유번호(FK) 신고일 처리내용 처리일
//처리상태
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (1, 2, 5, 1, '2022-10-06 00:00:00', '승인되지 않았습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (2, 2, 5, 1, '2022-10-06 00:00:00', '블랙처리 되었습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`) VALUES (4, 2, 5, 1, '2022-10-06 00:00:00', '', );
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (5, 2, 6, 1, '2022-10-06 00:00:00', '승인되지 않았습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (6, 2, 6, 1, '2022-10-06 00:00:00', '블랙처리 되었습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`) VALUES (8, 2, 6, 1, '2022-10-06 00:00:00', '', );
//신고 사유
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (9, 2, 5, 2, '2022-10-06 00:00:00', '승인되지 않았습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (10, 2, 6, 3, '2022-10-06 00:00:00', '블랙처리 되었습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`) VALUES (12, 2, 6, 5, '2022-10-06 00:00:00', '', );
//신고 회원
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (13, 2, 5, 1, '2022-10-06 00:00:00', '승인되지 않았습니다..', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (14, 3, 5, 1, '2022-10-06 00:00:00', '블랙처리 되었습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`) VALUES (15, 4, 5, 1, '2022-10-06 00:00:00', '', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (16, 7, 5, 1, '2022-10-06 00:00:00', '승인되지 않았습니다..', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (17, 8, 6, 1, '2022-10-06 00:00:00', '블랙처리 되었습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`) VALUES (18, 9, 6, 1, '2022-10-06 00:00:00', '', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (19, 10, 6, 1, '2022-10-06 00:00:00', '승인되지 않았습니다..', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (20, 11, 6, 1, '2022-10-06 00:00:00', '블랙처리 되었습니다.', '2022-10-06 16:13:33');
//신고한 게시글
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (21, 2, 5, 2, '2022-10-06 00:00:00', '승인되지 않았습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (22, 2, 5, 3, '2022-10-06 00:00:00', '블랙처리 되었습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (23, 2, 5, 4, '2022-10-06 00:00:00', '', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (24, 2, 5, 5, '2022-10-06 00:00:00', '', );

//처리상태
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (1, 2, 5, 1, '2022-10-06 00:00:00', '승인되지 않았습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (2, 2, 5, 1, '2022-10-06 00:00:00', '블랙처리 되었습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`)          VALUES (15, 2, 5, 1, '2022-10-06 00:00:00', '');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (3, 2, 6, 1, '2022-10-06 00:00:00', '승인되지 않았습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (4, 2, 6, 1, '2022-10-06 00:00:00', '블랙처리 되었습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`)          VALUES (16, 2, 6, 1, '2022-10-06 00:00:00', '');
//신고 사유
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (5, 2, 5, 2, '2022-10-06 00:00:00', '승인되지 않았습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (6, 2, 6, 3, '2022-10-06 00:00:00', '블랙처리 되었습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`)          VALUES (17, 2, 6, 5, '2022-10-06 00:00:00', '');
//신고 회원
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (7, 2, 5, 1, '2022-10-06 00:00:00', '승인되지 않았습니다..', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (8, 3, 5, 1, '2022-10-06 00:00:00', '블랙처리 되었습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (9, 7, 5, 1, '2022-10-06 00:00:00', '승인되지 않았습니다..', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`)          VALUES (18, 4, 5, 1, '2022-10-06 00:00:00', '');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (10, 8, 6, 1, '2022-10-06 00:00:00', '블랙처리 되었습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (11, 10, 6, 1, '2022-10-06 00:00:00', '승인되지 않았습니다..', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (12, 11, 6, 1, '2022-10-06 00:00:00', '블랙처리 되었습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`)          VALUES (19, 9, 6, 1, '2022-10-06 00:00:00', '');

//신고한 게시글
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (13, 2, 5, 2, '2022-10-06 00:00:00', '승인되지 않았습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (14, 2, 5, 3, '2022-10-06 00:00:00', '블랙처리 되었습니다.', '2022-10-06 16:13:33');



      모임 댓글               모임댓글번호(PK) 회원번호(FK) 모임 일련번호(FK) 내용 등록일 
  INSERT INTO `party_comment` (`pcno`, `mno`, `pno`, `cont`, `cdt`) VALUES (1, 1, 2, '참여하고싶어요!', '2022-10-06 00:00:00');

  
  INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`)
  , 1, 11 VALUES (65, '여기모여 뭐하러 씀? ', 0,'걍 동네서 운동하면 되는거지 여기 왜 옴 ㅋㅋ', '2022-10-16 14:11:39', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`)
 VALUES (66, 4, 8, '관리자님 문의ㅐ 드려요', 0,'혹시 제 댓글 한번에 지울 수도 있나요?', '2022-10-16 14:11:39', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`)
 VALUES (67, 5, 12, '[옥션] 운동 용품 최저가 모셔요 ', 0,'카톡 kdfjow3 문의 주세요 ^_^ ', '2022-10-16 14:11:39', 0);
  

  
  
  공지           첨부파일번호(PK)  파일경로   게시글번호(FK)
  INSERT INTO `notice_file` (`nfno`, `filepath`, `nno`) VALUES (1, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 1);
  
       모임 첨부파일         모임첨부번호(PK)  파일경로   모임 일련번호(FK)
  INSERT INTO `party_file` (`pfno`, `filepath`, `pno`) VALUES (1, 'http://im age.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 1);
  
  -- 회원 (완료)
INSERT INTO `member` (`mno`, `name`, `id`, `email`, `pwd`, `nick`, `tel`, `bday`, `sex`, `filepath`, `cdt`, `act`, `black`) VALUES (1, '이헌식', 'user1', 'user1@test.com', sha2('1111', 256), '혼시기', 1011111111, '1990-10-18', 1, NULL, '2022-10-18 18:25:26', 1, 0);
INSERT INTO `member` (`mno`, `name`, `id`, `email`, `pwd`, `nick`, `tel`, `bday`, `sex`, `filepath`, `cdt`, `act`, `black`) VALUES (2, '박병민', 'user2', 'user2@test.com', sha2('1111', 256), '병민', 1022222222, '1994-08-14', 1, NULL, '2022-10-18 18:31:31', 1, 0);
INSERT INTO `member` (`mno`, `name`, `id`, `email`, `pwd`, `nick`, `tel`, `bday`, `sex`, `filepath`, `cdt`, `act`, `black`) VALUES (3, '유제동', 'user3', 'user3@test.com', sha2('1111', 256), '제동', 103333333, '1995-05-18', 1, NULL, '2022-10-18 18:32:08', 1, 0);
INSERT INTO `member` (`mno`, `name`, `id`, `email`, `pwd`, `nick`, `tel`, `bday`, `sex`, `filepath`, `cdt`, `act`, `black`) VALUES (4, '최종찬', 'user4', 'user4@test.com', sha2('1111', 256), '종찬', 104444444, '1991-12-01', 1, NULL, '2022-10-18 18:33:15', 1, 0);
INSERT INTO `member` (`mno`, `name`, `id`, `email`, `pwd`, `nick`, `tel`, `bday`, `sex`, `filepath`, `cdt`, `act`, `black`) VALUES (5, '임은지', 'user5', 'user5@test.com', sha2('1111', 256), '은지', 1055555555, '1994-08-26', 0, NULL, '2022-10-18 18:35:21', 1, 0);
INSERT INTO `member` (`mno`, `name`, `id`, `email`, `pwd`, `nick`, `tel`, `bday`, `sex`, `filepath`, `cdt`, `act`, `black`) VALUES (6, '장슬기', 'user6', 'user6@test.com', sha2('1111', 256), '슬기', 106666666, '1990-04-08', 0, NULL, '2022-10-18 18:35:48', 1, 0);
INSERT INTO `member` (`mno`, `name`, `id`, `email`, `pwd`, `nick`, `tel`, `bday`, `sex`, `filepath`, `cdt`, `act`, `black`) VALUES (7, '장현경', 'user7', 'user7@test.com', sha2('1111', 256), '현경', 10777777, '1996-03-05', 0, NULL, '2022-10-18 18:36:16', 1, 0);
INSERT INTO `member` (`mno`, `name`, `id`, `email`, `pwd`, `nick`, `tel`, `bday`, `sex`, `filepath`, `cdt`, `act`, `black`) VALUES (8, '황의찬', 'user8', 'user8@test.com', sha2('1111', 256), '의찬', 10888888, '1996-07-08', 1, NULL, '2022-10-18 18:37:03', 1, 0);
INSERT INTO `member` (`mno`, `name`, `id`, `email`, `pwd`, `nick`, `tel`, `bday`, `sex`, `filepath`, `cdt`, `act`, `black`) VALUES (9, '임동현', 'user9', 'user9@test.com', sha2('1111', 256), '동현', 19898, '1990-06-19', 1, NULL, '2022-10-18 18:37:35', 1, 0);
INSERT INTO `member` (`mno`, `name`, `id`, `email`, `pwd`, `nick`, `tel`, `bday`, `sex`, `filepath`, `cdt`, `act`, `black`) VALUES (10, '박지민', 'user10', 'user10@test.com', sha2('1111', 256), '지민', 10101010, '1999-12-31', 0, NULL, '2022-10-18 18:38:01', 1, 0);
INSERT INTO `member` (`mno`, `name`, `id`, `email`, `pwd`, `nick`, `tel`, `bday`, `sex`, `filepath`, `cdt`, `act`, `black`) VALUES (11, '엄진영', 'user11', 'user11@test.com', sha2('1111', 256), '진영', 10101010, '1979-03-31', 1, NULL, '2022-10-18 18:38:01', 0, 1);
INSERT INTO `member` (`mno`, `name`, `id`, `email`, `pwd`, `nick`, `tel`, `bday`, `sex`, `filepath`, `cdt`, `act`, `black`) VALUES (12, '윤인성', 'user12', 'user12@test.com', sha2('1111', 256), '인성', 10101010, '1980-10-11', 1, NULL, '2022-10-18 18:38:01', 0, 0);

-- 지역 (완료)
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (1, '서울시', '종로구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (2, '서울시', '중구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (3, '서울시', '용산구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (4, '서울시', '성동구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (5, '서울시', '광진구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (6, '서울시', '동대문구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (7, '서울시', '중랑구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (8, '서울시', '성북구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (9, '서울시', '강북구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (10, '서울시', '도봉구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (11, '서울시', '노원구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (12, '서울시', '은평구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (13, '서울시', '서대문구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (14, '서울시', '마포구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (15, '서울시', '양천구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (16, '서울시', '강서구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (17, '서울시', '구로구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (18, '서울시', '금천구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (19, '서울시', '영등포구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (20, '서울시', '동작구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (21, '서울시', '관악구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (22, '서울시', '서초구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (23, '서울시', '강남구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (24, '서울시', '송파구');
INSERT INTO `region` (`rno`, `sido`, `sigu`) VALUES (25, '서울시', '강동구');

-- 운동 종목 (완료)
INSERT INTO `sports` (`sno`, `name`) VALUES (1, '헬스');
INSERT INTO `sports` (`sno`, `name`) VALUES (2, '클라이밍');
INSERT INTO `sports` (`sno`, `name`) VALUES (3, '배드민턴');
INSERT INTO `sports` (`sno`, `name`) VALUES (4, '축구');
INSERT INTO `sports` (`sno`, `name`) VALUES (5, '농구');
INSERT INTO `sports` (`sno`, `name`) VALUES (6, '골프');
INSERT INTO `sports` (`sno`, `name`) VALUES (7, '탁구');
INSERT INTO `sports` (`sno`, `name`) VALUES (8, '야구');
INSERT INTO `sports` (`sno`, `name`) VALUES (9, '러닝');
INSERT INTO `sports` (`sno`, `name`) VALUES (10, '사이클');

-- 병민
-- 장소 (완료)
INSERT INTO `location` (`lno`, `rno`, `sno`) VALUES (1, 1, 1);
INSERT INTO `location` (`lno`, `rno`, `sno`) VALUES (2, 1, 2);
INSERT INTO `location` (`lno`, `rno`, `sno`) VALUES (3, 1, 3);
INSERT INTO `location` (`lno`, `rno`, `sno`) VALUES (4, 2, 2);
INSERT INTO `location` (`lno`, `rno`, `sno`) VALUES (5, 3, 3);
INSERT INTO `location` (`lno`, `rno`, `sno`) VALUES (6, 4, 4);
INSERT INTO `location` (`lno`, `rno`, `sno`) VALUES (7, 5, 5);
INSERT INTO `location` (`lno`, `rno`, `sno`) VALUES (8, 6, 6);
INSERT INTO `location` (`lno`, `rno`, `sno`) VALUES (9, 6, 2);
INSERT INTO `location` (`lno`, `rno`, `sno`) VALUES (10, 6, 3);
INSERT INTO `location` (`lno`, `rno`, `sno`) VALUES (11, 6, 1);
INSERT INTO `location` (`lno`, `rno`, `sno`) VALUES (12, 7, 7);
INSERT INTO `location` (`lno`, `rno`, `sno`) VALUES (13, 8, 5);
INSERT INTO `location` (`lno`, `rno`, `sno`) VALUES (14, 9, 9);
INSERT INTO `location` (`lno`, `rno`, `sno`) VALUES (15, 1, 6);

-- 관리자 (완료)
INSERT INTO `admin` (`adno`, `name`, `id`, `email`, `pwd`, `cdt`) VALUES (1, '관리자', 'admin', 'admin@test.com', sha2('1111', 256), '2022-10-06 00:00:00');

-- 공지사항 (완료)
INSERT INTO `notice` (`nno`, `title`, `cont`, `cdt`, `vw_cnt`) VALUES (1, '여기어때 이용 가이드', '여기어때 이용시 안내 사항 말씀드립니다', '2022-09-06 17:32:39', 2824);
INSERT INTO `notice` (`nno`, `title`, `cont`, `cdt`, `vw_cnt`) VALUES (2, '신고 대상자 안내', '신고 대상자 안내드립니다.', '2022-09-19 14:44:27', 1423);
INSERT INTO `notice` (`nno`, `title`, `cont`, `cdt`, `vw_cnt`) VALUES (3, '일반 회원을 가장한 사업자의 판매 및 홍보 행위 금지 안내', '일반 회원으로 가장하여 판매 및 홍보를 유도하는 글은 경고 없이 삭제 조치 됩니다.', '2022-10-11 22:52:39', 430);
INSERT INTO `notice` (`nno`, `title`, `cont`, `cdt`, `vw_cnt`) VALUES (4, '문의사항 안내', '문의사항은 공지사항 밑 1:1 문의만을 통해 이루어집니다.', '2022-10-11 18:12:00', 933);
INSERT INTO `notice` (`nno`, `title`, `cont`, `cdt`, `vw_cnt`) VALUES (5, '커뮤니티 게시판 안내', '핫딜 게시판은 양식을 지켜 업로드 바랍니다', '2022-10-12 09:00:39', 824);
INSERT INTO `notice` (`nno`, `title`, `cont`, `cdt`, `vw_cnt`) VALUES (6, '여기어때 홈페이지 리뉴얼을 위한 점검안내', '홈페이지 리뉴얼을 위해 점검 기간동안 여기어때 이용에 어려움이 있습니다. 회원 여러분들의 많은 양해 부탁드립니다.', '2022-10-15 10:00:39', 1109);
INSERT INTO `notice` (`nno`, `title`, `cont`, `cdt`, `vw_cnt`) VALUES (7, '[추가점검]여기어때 홈페이지 리뉴얼을 위한 점검안내', '홈페이지 리뉴얼을 위해 점검 후 복구 과정에서 추가적인 시간이 소요되어 추가 점검이 진행될 예정입니다. 회원 여러분들의 많은 양해 부탁드립니다.', '2022-10-15 10:00:39', 1073);

-- 알림 (제동 완료)
INSERT INTO `alert` (`alno`, `mno`, `cont`, `aldt`, `alcheck`) VALUES (1, 1, '회원님의 모임에 신청이 들어 왔습니다.!', '2022-09-10 00:00:00', 1);
INSERT INTO `alert` (`alno`, `mno`, `cont`, `aldt`, `alcheck`) VALUES (2, 2, '3대 측정할 파티원..모임에 승인이 완료되었습니다.', '2022-9-11 00:00:00', 0);
INSERT INTO `alert` (`alno`, `mno`, `cont`, `aldt`, `alcheck`) VALUES (3, 2, '회원님 게시글에 댓글이 달렸습니다.', '2022-10-11 18:12:39', 0);
INSERT INTO `alert` (`alno`, `mno`, `cont`, `aldt`, `alcheck`) VALUES (4, 5, '골프 모임에 거절 됐습니다.', '2022-10-06 00:00:00', 1);
INSERT INTO `alert` (`alno`, `mno`, `cont`, `aldt`, `alcheck`) VALUES (5, 5, '회원님의 모임에 댓글이 달렸습니다..\n', '2022-09-13 00:00:00', 0);
INSERT INTO `alert` (`alno`, `mno`, `cont`, `aldt`, `alcheck`) VALUES (6, 3, '회원님이 참가하신 모임에 후기를 작성해주세요!.', '2022-09-17 00:00:00', 0);
INSERT INTO `alert` (`alno`, `mno`, `cont`, `aldt`, `alcheck`) VALUES (7, 4, '1:1문의의 답변이 왔습니다.', '2022-10-06 00:00:00', 1);
INSERT INTO `alert` (`alno`, `mno`, `cont`, `aldt`, `alcheck`) VALUES (8, 4, '신고하신 ㅇㅇㅇ님이 블랙처리 됐습니다.', '2022-10-06 00:00:00', 1);
INSERT INTO `alert` (`alno`, `mno`, `cont`, `aldt`, `alcheck`) VALUES (9, 4, '회원님 게시글에 댓글이 달렸습니다.', '2022-10-06 00:00:00', 1);
INSERT INTO `alert` (`alno`, `mno`, `cont`, `aldt`, `alcheck`) VALUES (10, 11, '회원님이 ㅇㅇㅇ사유로 인해 블랙처리 되었습니다.', '2022-10-20 00:00:00', 1);

-- 게시판 카테고리 (완료)
INSERT INTO `board_category` (`cateno`, `name`) VALUES (1, '자유게시판');
INSERT INTO `board_category` (`cateno`, `name`) VALUES (2, '식단');
INSERT INTO `board_category` (`cateno`, `name`) VALUES (3, '챌린지');
INSERT INTO `board_category` (`cateno`, `name`) VALUES (4, 'Q&A');
INSERT INTO `board_category` (`cateno`, `name`) VALUES (5, '핫딜게시판');

-- 모임 참여 상태 (완료)
INSERT INTO `party_status` (`psno`, `status`) VALUES (1, '대기');
INSERT INTO `party_status` (`psno`, `status`) VALUES (2, '승인');
INSERT INTO `party_status` (`psno`, `status`) VALUES (3, '거절');
INSERT INTO `party_status` (`psno`, `status`) VALUES (4, '탈퇴');

-- 신고 사유 (완료)
INSERT INTO `tatlle_reason` (`trno`, `reason`) VALUES (1, '불건전한 내용');
INSERT INTO `tatlle_reason` (`trno`, `reason`) VALUES (2, '스팸 및 부적절한 홍보');
INSERT INTO `tatlle_reason` (`trno`, `reason`) VALUES (3, '명예회손 및 비방');
INSERT INTO `tatlle_reason` (`trno`, `reason`) VALUES (4, '초상권 및 저작권 침해');
INSERT INTO `tatlle_reason` (`trno`, `reason`) VALUES (5, '개인정보 도용');
INSERT INTO `tatlle_reason` (`trno`, `reason`) VALUES (6, '기타 사이트 목적에 맞지 않는 행위');

-- 병민 
-- 모임 (완료)
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (1, 1, 1, '종로 3대 파티원모집함', 1, '3대측정할 파티원모집함', '2022-09-09 09:09:00', 5, '11:00:00', '2022-09-16');
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (2, 2, 2, '클라이밍가실분', 1, '종로 동동이클라이밍장 좋아요 커몬요!', '2022-09-11 11:21:00', 5, '18:00:00', '2022-09-20');
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (3, 3, 3, '배드민턴 치실분?', 1, '종로쪽 공원에서 쳐요!', '2022-09-11 12:40:00', 4, '16:00:00', '2022-11-22');
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (4, 2, 4, '중구서 축구하십시더! ', 1, '축구 할 사람(최소풋살 할 사람)만큼 인원 구해봐요!', '2022-09-13 04:34:00', 10, '20:00:00', '2022-11-06');
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (5, 3, 5, '배드민턴 고고', 1, '신나게 달려보시져 ', '2022-09-13 08:04:00', 6, '13:00:00', '2022-10-06');
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (6, 4, 6, '축구 멤버구해요(골키퍼x)', 1, '골키퍼는 제가 하고, 다른 포지션 구합니다.', '2022-09-14 09:00:00', 8, '15:00:00', '2022-11-23');
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (7, 5, 7, '농구 2:2 하실분', 1, '간단하게 2:2로 농구 하러 오시죠', '2022-09-15 23:30:00', 4, '16:00:00', '2022-11-06');
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (8, 6, 8, '스크린 골프 하러갈 분들!!', 1, '스크린 골프 재밌게 배워볼 또래분들 구해요. 저도 여자인데, 남자분들 보단 여자분들 많이 와주세용.', '2022-09-16 15:01:00', 4, '19:00:00', '2022-10-29');
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (9, 2, 9, '클라이밍 지구력 연습 모임', 1, '지구력 테스트 같이 해보고 싶은데, 고민이신분들! 다같이 모여서 연습해봐요.', '2022-10-06 11:11:00', 8, '10:00:00', '2022-12-06');
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (10, 3, 10, '배드민턴 간단하게 치실 분?', 1, '동대문구 근처 사시는 분 신청 주세요~', '2022-10-06 13:20:00', 2, '09:00:00', '2022-11-04');
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (11, 1, 11, '헬스 유산소 같이 해요.', 1, '동대문 쪽 새로 생긴 헬스장에서 유산소 하실 분들 모여요!! 헬린이도 가능!', '2022-10-06 21:03:20', 4, '14:00:00', '2022-10-30');
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (12, 7, 12, '탁구 혼성으로 쳐요.', 1, '중랑쪽에 같이 할 커플분 오세용 ㅎㅎ', '2022-10-08 06:55:00', 4, '14:00:00', '2022-10-25');
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (13, 5, 13, '농구 간단하게 할 분들 있나요?', 1, '저녁에 간단하게 할 분들 편하게 와주세요.', '2022-10-11 22:40:00', 8, '20:00:00', '2022-10-19');
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (14, 9, 14, '러닝팸 모아요!! 런린이도 컴온!', 1, '런린이 분들도 편하게 들어오세요! 자주 모임 만들고 있어요 ㅎㅎ', '2022-10-12 11:07:00', 15, '19:00:00', '2022-10-28');
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (15, 6, 15, '골프 치러 갈 사람 모여라~', 1, '골프 관심 있으신분들 신청 주세요, 종로 쪽에서 진행할 예정입니다!', '2022-10-16 17:30:00', 6, '16:00:00', '2022-10-18');
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (16, 9, 14, '러닝팸 모아요!! 런린이도 대환영!', 1, '런린이 분들도 편하게 들어오세요! 지난 모임도 신규 유입 많았습니당 ㅎㅎㅎㅎ', '2022-10-18 17:30:00', 6, '17:00:00', '2022-10-27');
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (17, 2, 2, '클라이밍가실분~~', 1, '종로 동동이클라이밍장 갈 사람 맘편히 신청하세요. 커몬요!', '2022-10-18 11:21:00', 5, '19:00:00', '2022-10-20');
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (18, 5, 7, '농구 배울 여성분 ㅎ', 0, '농구 배우고 싶은 여성 분  신청 주세요^^', '2022-10-18 11:21:00', 2, '19:00:00', '2022-10-20');
INSERT INTO `party` (`pno`, `sno`, `lno`, `title`, `act`, `cont`, `cdt`, `headcnt`, `ptime`, `pdate`) VALUES (19, 3, 5, '배드민턴 짝궁 구해요~~', 0, '좀 치는 사람 와요,, 못하는 사람 은 좀 뒤로 꺼지시고.. ㅎ ', '2022-10-18 11:21:00', 2, '19:00:00', '2022-10-20');


-- 모임 참여 명단 (제동 완료)
 -- !주최자
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (1, 1, 2, 1);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (2, 2, 2, 1);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (3, 3, 2, 1);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (4, 4, 2, 1);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (5, 5, 2, 1);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (6, 6, 2, 1);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (7, 7, 2, 1);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (8, 8, 2, 1);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (2, 9, 2, 1);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (3, 10, 2, 1);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (3, 11, 2, 1);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (4, 12, 2, 1);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (4, 13, 2, 1);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (4, 14, 2, 1);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (5, 15, 2, 1);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (5, 16, 2, 1);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (6, 17, 2, 1);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (11, 18, 2, 1);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (12, 19, 2, 1);
 -- !참여자 (끝난 모임)
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (2, 1, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (3, 1, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (4, 1, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (1, 2, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (3, 2, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (4, 2, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (5, 2, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (6, 5, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (7, 5, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (8, 5, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (1, 15, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (2, 15, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (3, 15, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (4, 15, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (6, 15, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (7, 13, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (8, 13, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (1, 13, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (2, 13, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (3, 13, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (5, 13, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (6, 13, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (7, 17, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (8, 17, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (1, 17, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (2, 17, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (3, 12, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (5, 12, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (6, 12, 2, 0);
 -- !참여자 (진행전인 모임)
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (1, 16, 1, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (2, 14, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (3, 14, 1, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (4, 8, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (5, 8, 3, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (6, 8, 1, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (7, 11, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (8, 11, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (1, 11, 3, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (2, 11, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (4, 10, 4, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (3, 4, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (1, 4, 4, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (5, 4, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (7, 4, 3, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (8, 4, 1, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (1, 7, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (2, 7, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (3, 7, 1, 0);
  -- !요주인물들 
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (5, 18, 2, 0);
INSERT INTO `party_members` (`mno`, `pno`, `psno`, `auth`) VALUES (6, 19, 3, 0);

-- 모임 후기 (제동 완료) - 완료된 모임에 대해서만 후기 작성하는거임
INSERT INTO `party_review` (`prno`, `mno`, `pno`, `star`, `title`, `cont`, `cdt`) VALUES (1, 1, 2, 5.00, '3대 치고 왔습니다', '벤치 100 스쿼트 120 대드 140 했습니다 얼른 3대 400 찍고싶네요', '2022-10-11 18:12:39');
INSERT INTO `party_review` (`prno`, `mno`, `pno`, `star`, `title`, `cont`, `cdt`) VALUES (2, 7, 5, 4.00, '배드민턴 장 다녀왔습니다', '안전 장치도 잘 되어 있고 좋네요', '2022-10-11 18:12:39');
INSERT INTO `party_review` (`prno`, `mno`, `pno`, `star`, `title`, `cont`, `cdt`) VALUES (3, 6, 5, 5.00, '전직 국대와 경기하니 좋네요', '모임장님이 전 국대셔서 라켓 잡는 법까지 세세하게 알려주셔서 좋았습니다', '2022-10-11 18:12:39');
INSERT INTO `party_review` (`prno`, `mno`, `pno`, `star`, `title`, `cont`, `cdt`) VALUES (4, 6, 15, 3.00, '조기골프 결성', '여러번 해봤는데 마음이 잘 맞아서 매주 조기골프 하기로 했습니다 ^^', '2022-10-11 18:12:39');
INSERT INTO `party_review` (`prno`, `mno`, `pno`, `star`, `title`, `cont`, `cdt`) VALUES (5, 3, 15, 2.00, '좋습니다', '좋아요', '2022-10-11 18:12:39');
INSERT INTO `party_review` (`prno`, `mno`, `pno`, `star`, `title`, `cont`, `cdt`) VALUES (6, 1, 15, 5.00, '골프 모임 굿', '골퍼 준비 중인데 같은 마음으로 모인 분들이여서 좋은 꿀팁 많이 얻고 갑니다', '2022-10-11 18:48:33');
INSERT INTO `party_review` (`prno`, `mno`, `pno`, `star`, `title`, `cont`, `cdt`) VALUES (7, 8, 13, 2.00, '저는 개인적으로 별로네요', '너무 사람들이 저돌적으로 해서 하마터면 다칠뻔 했어요', '2022-10-11 18:48:33');
INSERT INTO `party_review` (`prno`, `mno`, `pno`, `star`, `title`, `cont`, `cdt`) VALUES (8, 8, 17, 5.00, '함께 즐기는 클라이밍', '저는 이렇게 쉬운건지 처음 알았네요 좋은 정보 얻어갑니다', '2022-10-11 18:48:33');
INSERT INTO `party_review` (`prno`, `mno`, `pno`, `star`, `title`, `cont`, `cdt`) VALUES (9, 1, 17, 5.00, '여럿이서하니 좋네요', '항상 혼자 연습했는데 같이 하니까 좋아요~', '2022-10-11 18:48:33');
INSERT INTO `party_review` (`prno`, `mno`, `pno`, `star`, `title`, `cont`, `cdt`) VALUES (10, 6, 12, 5.00, '또래들과 함께 할 수 있어서 좋아요', '또래들하고 하니 참 재밌네요', '2022-10-11 18:48:33');
INSERT INTO `party_review` (`prno`, `mno`, `pno`, `star`, `title`, `cont`, `cdt`) VALUES (11, 5, 12, 4.00, '탁구의 진면목!', '역시 재밌네요 또 모엿으면 좋겠네요', '2022-10-11 18:48:33');
INSERT INTO `party_review` (`prno`, `mno`, `pno`, `star`, `title`, `cont`, `cdt`) VALUES (12, 3, 12, 2.00, '제가 하기 좀 어려운듯..', '너무 고수들이 있어서 아직 제가 할 실력은 안되는거같아요..', '2022-10-11 18:48:33');



-- 병민 
-- 게시글 (완료) 기존 완성에 추가 및 수정 함.
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (1, 1, 4, '유제동', 1,'두두제동', '2022-10-11 18:12:39', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (2, 2, 5, '너무 싫어', 1,'닭가슴살 토나와', '2022-10-11 18:12:39', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (3, 3, 2, '집에 가고싶다', 1,'스쿼트 400개 할때 까지 집 안 감;', '2022-10-11 18:12:39', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (4, 4, 3, '나는 쌔삥', 1,'모든 게 다 쌔삥 다음에 가사 뭐임?', '2022-10-11 18:12:39', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (5, 5, 1, '프로틴 쉐이크 특가', 1,'프로틴 쉐이크 특가 중', '2022-10-11 18:12:39', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (6, 1, 4, '우리집 고양이 봐봐라', 1,'미쳤다 엄청 귀엽다', '2022-10-11 18:34:34', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (7, 2, 5, '저염식 먹으라고 하는 이유', 1,'염분이 지방을 잡고 안 놔주기 때문', '2022-10-11 18:34:34', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (8, 3, 1, '70일차 몸 상태 변화', 1,'제곧내', '2022-10-11 18:34:34', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (9, 4, 2, '쌈장먹을 때', 1,'쌈장 왜 찍어먹지 말래?', '2022-10-11 18:34:34', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (10, 5, 3, '테니스 라켓 할인', 1,'삼성카드 특별 할인', '2022-10-11 18:34:35', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (11, 1, 3, '물경력으로 취업하고 버틸 수 있을지 고민입니다.', 1,'IT공공기관에서 시스템운영(대용량db처리), 인프라부서, 사업관리(PM)부서, 10년 가까이 하다가 퇴직했습니다. ', '2022-10-16 13:33:11', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (12, 1, 8, '요즘 부트캠프들 제대로 교육안해서 난리네요 ', 1,'이번에 부트캠프 모업체에서 교육생이 제대로 안가르쳐서 후불제 교육비 못내겠다고 했더니 소송걸렸다고 하네요. 이번 기회에 코딩 교육기관들 정화되길 기대해 봅니다.', '2022-10-16 13:34:02', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (13, 1, 5, '산딸기 마을 없어졌나요?? ', 1,'혹시 산딸기 마을 없어졌나요?? 산딸기 그러니까 라즈베리파이 가지고 놀면서 가끔 들어가던 곳이었는데 요즘 찾아보니까 안보이네요 흐음', '2022-10-16 13:34:51', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (14, 1, 4, '[연세대학교] 국내 대학 최대 스타트업 축제 START! 업 다이브(~10/11) ', 1,'○ 서류지원: 2022. 09. 20.(화)~2022. 10. 04.(화)', '2022-10-16 13:35:44', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (15, 1, 5, '죄송한데 핸드북이 뭔가요?', 1,'이번에 자바의정석을 사면서 첫장에 공부하는 법이라는 부분에서 핸드북을 참고 하시고 진행해 나가면 된다고 되어있어서요 혹시 기초편에 붙어있는 그 크고 두꺼운책인가요?', '2022-10-16 13:36:18', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (16, 1, 3, '오랜만에 와서 인사하고 갑니다. ', 1,'안녕하세요. 슬랙을 통해서 기존 코초스 맴버들과 지속적인 관계는 이어나갔지만 카페는 오래만에 온것 같네요', '2022-10-16 13:36:55', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (17, 1, 2, '스터디 정말 많이 터지네요...', 1,'3달 전에 인프런 혹은 okky에서 자바의 정석 스터디, 코딩테스트 스터디에 들어갔는데 모두 다 중간에 스터디 방 터지고 최근에 다시 들어간 스프링 스터디도 다시 폭팔 나네요.', '2022-10-16 13:37:24', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (18, 1, 4, 'Ebook 어디꺼 사용하시나요? ', 1,'안녕하세요 혹시 탭이나 모바일로 개발 서적을 보고 싶은데 어디를 선택해야 하는지 모르겠어서요', '2022-10-16 13:37:44', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (19, 1, 3, '혹시 이거 해킹당한건가요? ', 1,'휴대폰 구글원격 프로그램으로 컴퓨터 확인하는 도중 갑자기 파일들 삭제되고 그러길래 컴퓨터 황급히 끄고 집에 와서 확인해보니 동영상처럼 마구잡이로 키보드가 저럽니다... 키보드를 빼면 괜찮구요 ', '2022-10-16 13:38:12', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (20, 1, 10, '오늘은 즐거운 일요일', 1,'뿌시러 갑니다', '2022-10-16 13:40:28', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (21, 1, 9, '스벅에서 커피 한잔', 1,'여유롭네요', '2022-10-16 13:40:53', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (22, 1, 10, '나는 박띠민', 1,'거꾸로하면 기슬장', '2022-10-16 13:41:10', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (23, 2, 4, '아침 점심 저녁 다 계란 토마토 야채 우유 이런거 먹고 가끔 고기 먹을라고 하는데 괜찮을까요? ', 1,'지금 작성해 주신 식단을 보면 규칙적으로 식사를 하시는 것 같은데, 식단 자체가 모두 일반식이 아닌 대체식으로 하는 것으로 보입니다. 다이어트할 때는 양도 중요하지만 영양소 균형이 맞도록 구성을 해야 하기 때문에 처음부터 올바른 식단을 가지고 다이어트를 시작하는 것이 좋습니다.', '2022-10-16 13:42:26', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (24, 2, 2, '저의 다이어트 식단 좀 짜주세요. ', 1,'저는 키가 169cm이고,몸무게가 89kg 인데 저도 다이어트를 식단을 어떻게 해야할지 모르겠고,어떻게 다이어트 식단을 뭘 먹어야 하는지 잘 모르겠어요!', '2022-10-16 13:42:52', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (25, 2, 5, '다이어트 식단 (편식심함 야채랑 과일못머금) 걷기한시간 ', 1,'다이어트 식단 (편식심함 야채랑 과일못머금) 걷기한시간 추천좀., 어제떡볶이 먹고 재봐는데 바로 4키로 찌는데 무슨일인가요ㅋㅋ.. ', '2022-10-16 13:43:23', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (26, 2, 8, '질문 다이어트식단 ', 1,'다이어트 식단 고민인데 아침 사과 저녁 자유식(600칼로리 밑) 저녁 단백질쉐이크 or 닭가슴살 이러면 10키로 빼는데 얼마걸리나요 ', '2022-10-16 13:44:16', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (27, 2, 9, '다이어트 식단 질문', 1,'18살 남자인데 살이 현재 키 176에 71까지 나가는데 65까지빼려고 해서 식단을 짯는데 이식단이면 다이어트식단 인가요? 양배추 한통의 8/1 삶은 달걀 3개 밥 반공기 닭가슴살 한개 매끼니 이렇게먹을려합니다 얼마정도걸릴까요?', '2022-10-16 13:44:55', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (28, 2, 9, '남자 다이어트 식단 ', 1,'남자22살 키167 몸무게 65.6입니다 이렇게 다이어트 식단을 짤려고하는데 괜찮을까요?  아침 샐러드,닭가슴살,구운계란 점심 다이어트 도시락1 바나나1 아몬드10알 저녁 운동후 단백질쉐이크1 바나나1 아몬드10알 ', '2022-10-16 13:45:23', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (29, 2, 4, '다이어트 식단 질문', 1,'안녕하세요 25살 남자입니다. 다이어트 식단 봐주시면 감사하겠습니다. 키는 170.8cm 입니다. 기초대사량은 1466입니다.', '2022-10-16 13:45:46', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (30, 2, 5, '다이어트 식단', 1,'저 중2인데요 ㅠㅠ 다이어트 식단으로 아침에는 바나나 먹고 점심에는 그냥 급식 먹고 저녁에는 닭가슴살100g에 고구마 2개 먹고 운동으론 계단 오르기 15층 까지 할 예정인데,, 뺄 수있을 까요?? 그리고 추천하는 운동 몇가지 답변 부탁 드려요 ㅠㅠ', '2022-10-16 13:46:27', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (31, 2, 2, '원래 한번빠지면 그뒤로 다이어트 식단아니여도 잘안찌나요 폭식은아닌데 빵이랑먹어도 체질이 바뀐건지 잘안쪄서요 활동량이 많아서 그런가요? ', 1,'제곧내', '2022-10-16 13:46:57', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (32, 2, 1, '다이어트 식단', 1,'다이어트 식단 좀 봐주세요 일단 6시에 집나가서 대략 밤10~11시에 퇴근하는 남자입니다 이 일을 시작하고나서는 야식으로 폭식하고 끼니는 제대로 못먹었습니다.. 거의 온종일 앉아만있고 움직이는거라곤 출퇴근할때 걷는게 다 입니다,,,   살은 빼야하는데ㅠㅠ 11월까지 많은 지방들과 인사해야해서 식단 도와주세요ㅜㅜ', '2022-10-16 13:47:38', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (33, 2, 3, '다이어트식단 짜주세요 ', 1,'남자/ 단기간 10키로 감량 목표입니다ㅜㅜ 아오리사과, 방울토마토, 바나나, 계란으로 다이어트 식단 짜주시면 감사하겠습니다 !!', '2022-10-16 13:48:02', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (34, 3, 1, '30일 챌린지 운동법', 1,'제가 요즘30일챌린지운동을하고있는데 ', '2022-10-16 13:48:50', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (35, 3, 4, '헬스 푸쉬업 이후 하나를 못하고 있습니다', 1,'40대 남자입니다.  유튜브에서 헬스 영상을 보다 매일 푸쉬업 100개하기 챌린지 보고 시작했습니다.  정상적으로 2~30개정도는 하는 스타일인데 첫날에 억지로 100개를 채웠습니다. 30개이후 부터는 무릎 푸쉬업으로라도 버티지도 못할만큼 가슴이 바닥에 닿아도 억지로  100개를 채웠습니다.  그러고 4~5일 동안 근육통으로 너무 힘들어서 푸쉬업은 못 했고  통증이 사라진 6일차부터 다시 시작하려는데  푸쉬업 하나를 재대로 못 버티고 픽픽 쓰러져 바닥에 가슴이 꽂힙니다.  8일째인 오늘도 푸쉬업하는데 살이 떨리면서 푸쉬업 하나를 겨우 하네요. 왜 이럴까요', '2022-10-16 13:49:21', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (36, 3, 1, '고강도다이어트짐(만수동헬스장 만수동헬스) 다이어트 챌린지 성공', 1,'제가 운동하는 곳에는 여러 종류의 다이어트 챌린지들이 있어요. 10kg 20kg 30kg 다이어트 등 감량하는 무게에 따라 리워드가 있기도 하고 첫 달에 다이어트하는 양에 따라 또 리워드가 있기도 해요.  그 외에도 운동, 식단 챌린지 등 운동과 다이어트를 자극할 수 있는 것들이 많이 있습니다. 전 여러 가지 중에서 12월 말부터 1월에 걸쳐서 4주 동안 멱살 챌린지라는 다이어트 챌린지를 했어요. 팀을 짜서 팀원이 다 같이 목표한 만큼 감량해야 하는 챌린지인데 저희 팀은 6명이서 총 24.7kg 뺐어요. 1인당 4kg이니까 매주 1kg. 적지 않죠. 성공했습니다. 그래서 고다짐에서 쓸 수 있는 상금을 1인당 60만 원 총 360만 원을 받았어요.', '2022-10-16 13:51:32', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (37, 3, 5, '[다이어트] 여자 바디프로필 준비기간과 과정/ 식단/ 태닝/ 수분조절/ 10주간 -9kg 감량 후기', 1,'지난번 바디프로필 촬영후기에 이어 다이어트 과정을 남겨보려해요 스스로 추억할겸 참고할 남기는 후기 !', '2022-10-16 13:54:08', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (38, 3, 10, '바디 프로필 준비 기간 8주간의 도전!', 1,'블로그 참고', '2022-10-16 13:54:47', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (39, 3, 8, '바디 프로필 챌린지 준비 2탄', 1,'비용 문의는 댓글 남겨주세요', '2022-10-16 13:55:25', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (40, 3, 9, '바프 챌린지 성공', 1,'여러 번의 시도 끝에 큰맘 먹고 PT 끊고 지인의 소개로 저렴하게 바프 촬영했습니다 30대가 넘어가기 전에 해서 다행입니다', '2022-10-16 13:57:01', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (41, 3, 2, '챌린지 어플로 다이어트 중이에요', 1,'안녕하ㅔ요 벌써 두번째 후기네요 매번 찌고 반복하다가 건강한 다이어트 법으로 습관으로 하려고 합니다', '2022-10-16 13:58:05', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (42, 3, 3, '다이어트 챌린지 어플로 만보 걷기 성공', 1,'나이키 런 보다 괜찮은 것 같아요 (광고 아님)', '2022-10-16 13:58:53', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (43, 3, 8, '25회 다이어트 챌린지 식단 10/9 ', 1,'나름 선방했다고 생각합니다', '2022-10-16 13:59:22', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (44, 4, 8, '근육량 질문 드립니다.', 1,'전체 근육량 중 총 골격근량이 어떻게 되나요?', '2022-10-16 14:00:30', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (45, 4, 9, '피쿡 인바디랑 비슷한가요?', 1,'그런 것 같ㄱ기도 하고 아닌 것 같기도 하고', '2022-10-16 14:00:31', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (46, 4, 10, '제 의지박약 어떻게 하면 좋을까요?', 1,'입만 달고사는 벌구같아요', '2022-10-16 14:01:12', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (47, 4, 3, '저도 마찬가지입니다 벌구에요', 1,'이제 다이어트 한다는 소리도 안해도 안할게 뻔해서', '2022-10-16 14:01:31', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (48, 4, 2, '저도 마찬가지입니다2 이제 병이 아닌가 싶어요', 1,'제곧내 답변 부탁드려요', '2022-10-16 14:01:50', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (49, 4, 4, '요즘 개나소나 하는 트레이너 말고 전문 트레이너 있는 센터 있을까요?', 1,'요즘 개나소나 트레이너 하는게 전문 지식도 없으면서 싫으네요', '2022-10-16 14:02:11', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (50, 4, 9, '근육량 유지하면 체지방만 빼는 방법', 1,'회사생활하면서 잘 하시나요?', '2022-10-16 14:02:30', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (51, 4, 10, '그럼 어떻게 하는게 좋을까요?', 1,'제곧내', '2022-10-16 14:02:33', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (52, 4, 3, '구로구에 괜찮은 헬스장 추천 좀 해주세요', 1,'머리 빈 트레이너 말고 전문 지식 가지고 있는 분 원합니다', '2022-10-16 14:04:31', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (53, 4, 1, '운동복 어디서 구매하시나요?', 1,'[사진] 키 180, 몸무게 80 추천해주십시오', '2022-10-16 14:05:04', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (54, 5, 9, '[VOGO] LG 시네빔 빔프로젝터 PF50KA / PF50KS (429,000원) (무료)', 1,'사진참조', '2022-10-16 14:06:11', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (55, 5, 9, '[옥션] 타우린 120ml x 50병 (스클15,750) ', 1,'싼맛에 먹기 좋은 드링크 입니다 50병에 무료배송 마일클럽은 15,750 아니면 17,900원 입니다', '2022-10-16 14:06:36', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (56, 5, 4, '[11번가] 나랑드사이다 345ml x 24캔 (10,710원)', 1,'핫딜게 검색해보니 다른 게시글들에 비해 이 가격은 아쉬움', '2022-10-16 14:07:24', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (57, 5, 5, '[티몬] 켈로그 에너지바K 크런치 싱글 30g x 36개(3박스) (14,930원)', 1,'핫딜게 검색해보니까 12개에 대부분 5천원 중반대 하던데 가격 괜찮아서 올려봄 근데 이벤트 이미지에는 14,925원이라 되어있는데실결제가는 14,930원이네', '2022-10-16 14:07:59', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (58, 5, 8, '[지마켓] 닥터유 에너지바 40g 30개 (19,670원)', 1,'10퍼 오리온 할인쿠폰먹이먼 개당 655원 스클만 배송무료', '2022-10-16 14:08:28', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (59, 5, 8, '[홈플러스] 미국산 초이스 냉장소찜갈비 100g (2,040원) ', 1,'10개 단위로 구매 가능 농협 롯데카드 있으면 홈플페이 카드등록하고 8만이상 7프로 추가할인 유튜브에 백종원소갈비찜 검색해서 따라해봐 개꿀맛', '2022-10-16 14:09:25', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (60, 5, 5, '[쿠팡와우] 웅진식품 815콜라 제로 음료 250ml x 30개 (9,950원)', 1,'싸다 싸', '2022-10-16 14:09:46', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (61, 5, 4, '[G마켓] 아몬드브리즈 오리지널 190ml 48팩 (22,900원)', 1,'-', '2022-10-16 14:10:07', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (62, 5, 3, '[쿠팡] 미주라 요거트비스켓 400g x 2개 (5,560원) (와우회원무료)', 1,'이번에 처음 시켜보는거라 맛은 몰라요', '2022-10-16 14:10:41', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (63, 5, 9, '[티몬] 나랑드사이드제로 1.25L 12개 (9,890원) (무료)', 1,'행사 종료 시간 있는거 보면 저 시간 이후로는 다시 가격 오르는듯  출첵으로 룰렛 돌려서 포인트 얻을수 있으니까 결제 전에 돌리고 같이 쓰셈(보통 10원 걸림) 배송이 10/24 이내 도착 예정이라고 되어있는데 좀 늦게 배달되는듯', '2022-10-16 14:11:08', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (64, 5, 10, '[청춘몰] 단백질파우더1kg(kb나라사랑카드) (1,000원) (3,000원)', 1,'싼거같아서 올려봄', '2022-10-16 14:11:39', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (65, 1, 11, '여기모여 뭐하러 씀? ', 0,'걍 동네서 운동하면 되는거지 여기 왜 옴 ㅋㅋ', '2022-10-16 14:11:39', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (66, 4, 8, '관리자님 문의 드려요', 0,'혹시 제 댓글 한번에 지울 수도 있나요?', '2022-10-16 14:11:39', 0);
INSERT INTO `board` (`bno`, `cateno`, `mno`, `title`, `act`, `cont`, `cdt`, `vw_cnt`) VALUES (67, 5, 12, '[옥션] 운동 용품 최저가 모셔요 ', 0,'카톡 kdfjow3 문의 주세요 ^_^ ', '2022-10-16 14:11:39', 0);

-- 모임 리뷰 
INSERT INTO `party_review_file` (`prfno`, `filepath`, `prno`) VALUES (1, '/Users/parkbyeongmin/git/teamproject-comehere/comehere-app/comehere-server/doc/comehere_party_review_file 1.jpeg', 1);
INSERT INTO `party_review_file` (`prfno`, `filepath`, `prno`) VALUES (2, '/Users/parkbyeongmin/git/teamproject-comehere/comehere-app/comehere-server/doc/comehere_party_review_file 2.jpeg', 3);
INSERT INTO `party_review_file` (`prfno`, `filepath`, `prno`) VALUES (3, '/Users/parkbyeongmin/git/teamproject-comehere/comehere-app/comehere-server/doc/comehere_party_review_file 3.jpeg', 3);
INSERT INTO `party_review_file` (`prfno`, `filepath`, `prno`) VALUES (4, '/Users/parkbyeongmin/git/teamproject-comehere/comehere-app/comehere-server/doc/comehere_party_review_file 4.jpeg', 4);
INSERT INTO `party_review_file` (`prfno`, `filepath`, `prno`) VALUES (5, '/Users/parkbyeongmin/git/teamproject-comehere/comehere-app/comehere-server/doc/comehere_party_review_file 5.jpeg', 5);
INSERT INTO `party_review_file` (`prfno`, `filepath`, `prno`) VALUES (6, '/Users/parkbyeongmin/git/teamproject-comehere/comehere-app/comehere-server/doc/comehere_party_review_file 6.jpeg', 4);

-- 목표
INSERT INTO `plan` (`plno`, `mno`, `title`, `act`, `dday`, `chl`) VALUES (1, 1, '근성장', 1, '2022-10-26', 40.50);
INSERT INTO `plan` (`plno`, `mno`, `title`, `act`, `dday`, `chl`) VALUES (2, 2, '살크업', 0, '2021-01-21', 71.00);
INSERT INTO `plan` (`plno`, `mno`, `title`, `act`, `dday`, `chl`) VALUES (3, 3, '다이어트', 0, '2022-12-31', 49.90);
INSERT INTO `plan` (`plno`, `mno`, `title`, `act`, `dday`, `chl`) VALUES (4, 2, '득근하기', 0, '2023-01-01', 25.76);
INSERT INTO `plan` (`plno`, `mno`, `title`, `act`, `dday`, `chl`) VALUES (5, 5, '체중조절', 0, '2022-11-28', 73.50);
INSERT INTO `plan` (`plno`, `mno`, `title`, `act`, `dday`, `chl`) VALUES (6, 1, '근성장(2차)', 0, '2022-12-22', 45.00);

-- 1:1 문의하기
INSERT INTO `qna` (`qno`, `mno`, `title`, `act`, `cont`, `cdt`, `acont`, `adt`) VALUES (1, 1, '이용 문의 드려요', 0, '모임 설정하는데 지역 설정을 하나만 할 수 있나요?', '2022-10-11 18:12:39', NULL, NULL);
INSERT INTO `qna` (`qno`, `mno`, `title`, `act`, `cont`, `cdt`, `acont`, `adt`) VALUES (2, 3, '탈퇴하면 정보 다 사라지나요?', 1, '탈퇴하려 하는데 탈퇴하면 제가 쓴 글이나 정보 다 사라지나요? 아니면 남아있나요? ', '2022-10-11 18:12:39', '안녕하세요? 여기모여 관리자입니다.\n\n탈퇴 시 회원정보는 삭제되지만 활동내용(게시글, 댓글) 등은 삭제처리가 되지 않습니다.\n\n삭제가 필요한 경우 회원탈퇴 전 개별적으로 삭제 후 회원탈퇴를 진행하시길 바랍니다.\n\n감사합니다.', '2022-10-11 19:10:22');
INSERT INTO `qna` (`qno`, `mno`, `title`, `act`, `cont`, `cdt`, `acont`, `adt`) VALUES (3, 3, '고객센터 번호 알려주세요', 0, '고객센터 번호랑 이용시간 좀 알려주세요 직접 전화해서 물어보게', '2022-10-11 18:12:39', NULL, NULL);
INSERT INTO `qna` (`qno`, `mno`, `title`, `act`, `cont`, `cdt`, `acont`, `adt`) VALUES (4, 4, '이용 문의 드립니다', 1, '게시글 스크랩 어디로 가야 볼 수 있나요?', '2022-10-11 18:12:39', '안녕하세요? 여기모여 관리자입니다.\n\n문의하신 스크랩 내용 보기는 \'마이페이지\'-\'작성글/스크랩\'을 보시면 확인 가능합니다.\n\n감사합니다.', '2022-10-11 19:01:33');
INSERT INTO `qna` (`qno`, `mno`, `title`, `act`, `cont`, `cdt`, `acont`, `adt`) VALUES (5, 5, '저기요', 0, '이거 직접 관리자가 답변해줘요? 아님 컴퓨터 자동 답변이에요?', '2022-10-11 18:12:39', NULL, NULL);
INSERT INTO `qna` (`qno`, `mno`, `title`, `act`, `cont`, `cdt`, `acont`, `adt`) VALUES (6, 3, '탈퇴시 정보가 남아있다는데', 0, '그러면 문의넣으면 제가 하나하나 안 지워도 대신 지워주실 수 있나요?', '2022-10-11 19:00:23', NULL, NULL);
INSERT INTO `qna` (`qno`, `mno`, `title`, `act`, `cont`, `cdt`, `acont`, `adt`) VALUES (7, 5, '바로 답장 안 오는데 그럼 사람이 하는거에요?', 0, '아니면 컴퓨터가 답장하는데 시간이 걸리는거에요?', '2022-10-11 19:16:23', NULL, NULL);

-- 스크랩
INSERT INTO `scrap` (`mno`, `bno`) VALUES (1, 1);
INSERT INTO `scrap` (`mno`, `bno`) VALUES (3, 2);
INSERT INTO `scrap` (`mno`, `bno`) VALUES (3, 3);
INSERT INTO `scrap` (`mno`, `bno`) VALUES (3, 5);
INSERT INTO `scrap` (`mno`, `bno`) VALUES (3, 6);
INSERT INTO `scrap` (`mno`, `bno`) VALUES (3, 7);
INSERT INTO `scrap` (`mno`, `bno`) VALUES (3, 8);
INSERT INTO `scrap` (`mno`, `bno`) VALUES (4, 5);
INSERT INTO `scrap` (`mno`, `bno`) VALUES (4, 8);
INSERT INTO `scrap` (`mno`, `bno`) VALUES (5, 1);
INSERT INTO `scrap` (`mno`, `bno`) VALUES (5, 2);
INSERT INTO `scrap` (`mno`, `bno`) VALUES (5, 4);

-- 장소 후기
INSERT INTO `location_review` (`lrno`, `mno`, `pno`, `title`, `cont`, `star`, `cdt`) VALUES (1, 1, 1, '기구많네요', '기구 진짜 좋아요 강추\n', 4.50, '2022-10-07 19:09:04');
INSERT INTO `location_review` (`lrno`, `mno`, `pno`, `title`, `cont`, `star`, `cdt`) VALUES (2, 2, 2, '클라이밍하면여기', '클라이밍하기좋음 good', 2.10, '2022-10-07 19:09:04');
INSERT INTO `location_review` (`lrno`, `mno`, `pno`, `title`, `cont`, `star`, `cdt`) VALUES (3, 3, 3, '난바람이될거야', '뛰기좋다 nice', 3.00, '2022-10-07 19:09:04');
INSERT INTO `location_review` (`lrno`, `mno`, `pno`, `title`, `cont`, `star`, `cdt`) VALUES (4, 4, 4, '체육실은 영어로', 'GYM', 5.00, '2022-10-07 19:09:04');
INSERT INTO `location_review` (`lrno`, `mno`, `pno`, `title`, `cont`, `star`, `cdt`) VALUES (5, 5, 5, '생각보다 별로네요', '담에 안올랍니다 그닥별로 haha', 1.10, '2022-10-07 19:09:04');
INSERT INTO `location_review` (`lrno`, `mno`, `pno`, `title`, `cont`, `star`, `cdt`) VALUES (6, 1, 2, '요기어디게6', '한방능이백숙마씨따', 3.40, '2022-10-07 19:09:04');
INSERT INTO `location_review` (`lrno`, `mno`, `pno`, `title`, `cont`, `star`, `cdt`) VALUES (7, 2, 3, '요기어디게7', '클라이밍하기좋음 good', 5.00, '2022-10-07 19:09:04');
INSERT INTO `location_review` (`lrno`, `mno`, `pno`, `title`, `cont`, `star`, `cdt`) VALUES (8, 3, 4, '요기어디게8', '뛰기좋다 nice', 1.40, '2022-10-07 19:09:04');
INSERT INTO `location_review` (`lrno`, `mno`, `pno`, `title`, `cont`, `star`, `cdt`) VALUES (9, 4, 5, '요기어디게9', '실내가 좋네 holy', 1.00, '2022-10-07 19:09:04');
INSERT INTO `location_review` (`lrno`, `mno`, `pno`, `title`, `cont`, `star`, `cdt`) VALUES (10, 5, 1, '요기어디게10', '그닥별로 haha', 4.20, '2022-10-07 19:09:04');

-- 병민 
-- 게시글 댓글 (완료)
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (1, 1, 5, '내공냠냠 11', 1, '2022-10-11 18:12:39');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (2, 2, 2, '나는 좋아용 ', 1, '2022-10-11 18:12:39');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (3, 3, 3, '운동하고 싶당 ', 1, '2022-10-11 18:12:39');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (4, 3, 4, '400개 어캐 다함 ㄷㄷ ', 1, '2022-10-11 18:12:39');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (5, 1, 3, '두두두두제동', 1, '2022-10-11 18:12:39');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (6, 5, 4, '근데 댓글 이렇게 하는 거 맞아요?', 1, '2022-10-11 18:12:39');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (7, 4, 2, '댓글 내가 처음이다', 1, '2022-10-11 18:12:39');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (8, 4, 1, '내가 두 번째!!!!', 1, '2022-10-11 18:12:39');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (9, 3, 2, '광고 문의 카톡:eomcs', 1, '2022-10-11 18:12:39');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (10, 4, 3, '게시글 내용 더 없어요? ', 1, '2022-10-11 18:12:39');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (11, 6, 2, '고양이 사진 10장 채우셔야 합니다.', 1, '2022-10-11 18:20:43');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (12, 8, 1, '피드백 환영입니다 ^^', 1, '2022-10-11 18:21:01');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (13, 8, 2, '멋지네요 ^_^ b', 1, '2022-10-11 18:21:58');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (14, 8, 5, '빡시게 하시는 듯 ㄷㄷㄷㄷㄷ 어떻게 운동 하셨어요?', 1, '2022-10-11 18:25:54');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (15, 8, 1, '헬스장 + 홈트 계속 했어요!', 1, '2022-10-11 18:28:34');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (16, 9, 3, '누가 쌈장 찍어 먹지 말라함? 맛알못이네', 1, '2022-10-11 18:29:01');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (17, 9, 2, '어머니께서 쌈장 찍어먹으면 살찐다고 먹지 말라던데', 1, '2022-10-11 18:29:54');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (18, 9, 3, '맛... 있는걸 알고 계시고 못하는게 없으신듯 ^^', 1, '2022-10-11 18:35:47');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (19, 10, 4, '광고아님?', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (20, 11, 1, '그래도 그 정도면 총 경력이 있어서 괜찮지 않나요?', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (21, 11, 2, '총 경력 기간이 문제가 아니라, 경력 대비 실제 능력치에 대한 고민 아님??', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (22, 11, 1, '그건 맞는데 저정도 경험이면 물경력이라 할  만큼 걱정할 건  아니란 거죠 ', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (23, 11, 2, '그건 님 생각이고 작성자는 그렇게 생각해서 고민이라잖아요', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (24, 11, 3, '님들 싸우지 마세요 ㅠ ', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (25, 11, 2, '싸운거 아님 저 사람이 문해력 딸려서 혼자 ㅂㅅ 짓  하는거 여튼 지금이라도 공부하면서 준비하셈', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (26, 11, 1, '? 시비는 본인이 걸고 왜 욕을 하지 어이가 없네', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (27, 30, 4, '요즘 유튜브 잘 나와서 홈트로 검색 해보세요. 광고성으로 보일까봐 검색어만 추천드려요.', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (28, 31, 5, '사람 몸은 항상성이 있어서 최근의 자신의 상태를 기준으로 항상 같은 상태를 유지하려고 하는데, 그 기준을 넘어서서 다이어트를 하고 나면 그 기준이 바뀌니까 그런거 아닐까요?', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (29, 31, 7, '내 몸뚱아린 그냥 막 찌는데 부럽', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (30, 32, 6, '무조건 양을 줄이기보단 영양소 분배를 하는 정도로 시작해야 할 거 같아요. 탄수화물만 줄여도 효과있을거고, 야채류 더 드시고 간식은 과자 말고 견과류로 드세요!', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (31, 33, 5, '단기간에 하는 것 자체가 어려운데... 다른 분들이 식단 봐주실 거에요. 저는 그것만으로 식단 짜라하면 말 못해드림 ㅠ', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (32, 34, 6, '나만 글 짤려 보임? 아님 임시저장된 글 바로 올린건가', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (33, 35, 7, '일단 갑작스럽게 운동을 다시 하다보니 무리가 온거 아닐까요?', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (34, 35, 2, '천천히 해도 되니 한 번에 많이 하려 하지 말고 할 수 있는 개수여도 쪼개서 자세만 신경쓰면서 해보세요. 무릎 푸쉬업으로 시작해도 좋구요.', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (35, 36, 2, '와 노력한 것도 멋있고 상금도 부럽네요... 다음엔 저도 해봐야지', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (36, 36, 4, '이게 되네', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (37, 37, 2, '멋지네영', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (38, 38, 6, '블로그 링크 어딨어요? 게시글에 직접 올려주시지...', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (39, 39, 2, '비용 관련 물어보고 싶은데 알려주세용', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (40, 40, 1, '동갑인데 난 뭐하나(과자를 먹으며)', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (41, 40, 8, '어느 동네에서 하셨어요? 괜찮아 보이네요', 1, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (42, 11, 2, '어쩌라고 ㄲㅈ셈', 0, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (43, 41, 11, '운동 용품 최저가 카톡 문의 주세요', 0, '2022-10-11 18:37:22');
INSERT INTO `board_comment` (`bcno`, `bno`, `mno`, `cont`, `act`, `cdt`) VALUES (44, 30, 8, '유제동 운동 TV 추천할께요 ^_^ 관련 링크도 보내드려요?', 0, '2022-10-11 18:37:22');

-- 게시글 첨부파일 (제동 완료)
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (1, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 1);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (2, 'https://source.unsplash.com/random', 2);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (3, 'https://source.unsplash.com/random', 2);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (4, 'https://source.unsplash.com/random', 3);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (5, 'https://source.unsplash.com/random', 3);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (6, 'https://source.unsplash.com/random', 3);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (7, 'https://source.unsplash.com/random', 4);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (8, 'https://source.unsplash.com/random', 4);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (9, 'https://source.unsplash.com/random', 4);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (10, 'https://source.unsplash.com/random', 4);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (11, 'https://source.unsplash.com/random', 5);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (12, 'https://source.unsplash.com/random', 5);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (13, 'https://source.unsplash.com/random', 5);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (14, 'https://source.unsplash.com/random', 5);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (15, 'https://source.unsplash.com/random', 5);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (16, 'https://source.unsplash.com/random', 10);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (17, 'https://source.unsplash.com/random', 15);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (18, 'https://source.unsplash.com/random', 20);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (19, 'https://source.unsplash.com/random', 25);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (20, 'https://source.unsplash.com/random', 30);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (21, 'https://source.unsplash.com/random', 35);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (22, 'https://source.unsplash.com/random', 40);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (23, 'https://source.unsplash.com/random', 45);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (24, 'https://source.unsplash.com/random', 50);
INSERT INTO `board_file` (`bfno`, `filepath`, `bno`) VALUES (25, 'https://source.unsplash.com/random', 55);

-- 게시글 신고 (제동완료)
INSERT INTO `board_tatlle` (`btno`, `mno`, `decbno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (1, 1, 1, 1, '2022-10-12 00:00:00', '승인되지 않았습니다.', '2022-10-13 19:09:04');
INSERT INTO `board_tatlle` (`btno`, `mno`, `decbno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (2, 1, 1, 2, '2022-10-14 00:00:00', '승인되지 않았습니다.', '2022-10-15 19:09:04');

INSERT INTO `board_tatlle` (`btno`, `mno`, `decbno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (3, 2, 2, 3, '2022-10-12 00:00:00', '승인되지 않았습니다.', '2022-10-13 19:09:04');
INSERT INTO `board_tatlle` (`btno`, `mno`, `decbno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (4, 3, 2, 4, '2022-10-13 00:00:00', '승인되지 않았습니다.', '2022-10-14 19:09:04');
INSERT INTO `board_tatlle` (`btno`, `mno`, `decbno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (5, 4, 2, 5, '2022-10-14 00:00:00', '승인되지 않았습니다.', '2022-10-15 19:09:04');

INSERT INTO `board_tatlle` (`btno`, `mno`, `decbno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (6, 1, 67, 2, '2022-10-17 19:09:04', '', NULL);
INSERT INTO `board_tatlle` (`btno`, `mno`, `decbno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (7, 2, 67, 2, '2022-10-18 19:09:04', '', NULL);
INSERT INTO `board_tatlle` (`btno`, `mno`, `decbno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (8, 3, 65, 6, '2022-10-16 19:09:04', '블랙처리 됐습니다.', '2022-10-18 19:09:04');
INSERT INTO `board_tatlle` (`btno`, `mno`, `decbno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (9, 4, 65, 6, '2022-10-16 19:09:04', '블랙처리 됐습니다.', '2022-10-18 19:09:04');
INSERT INTO `board_tatlle` (`btno`, `mno`, `decbno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (10, 5, 65, 6, '2022-10-17 19:09:04', '블랙처리 됐습니다.', '2022-10-18 19:09:04');
INSERT INTO `board_tatlle` (`btno`, `mno`, `decbno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (11, 6, 65, 6, '2022-10-17 19:09:04', '블랙처리 됐습니다.', '2022-10-18 19:09:04');
INSERT INTO `board_tatlle` (`btno`, `mno`, `decbno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (12, 7, 65, 6, '2022-10-18 19:09:04', '블랙처리 됐습니다.', '2022-10-18 19:09:04');

-- 장소 후기 첨부파일
INSERT INTO `location_review_file` (`lrfno`, `filepath`, `lrno`) VALUES (1, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 1);
INSERT INTO `location_review_file` (`lrfno`, `filepath`, `lrno`) VALUES (2, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 2);
INSERT INTO `location_review_file` (`lrfno`, `filepath`, `lrno`) VALUES (3, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 3);
INSERT INTO `location_review_file` (`lrfno`, `filepath`, `lrno`) VALUES (4, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 4);
INSERT INTO `location_review_file` (`lrfno`, `filepath`, `lrno`) VALUES (5, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 5);

-- 회원 신고
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (1, 2, 1, 1, '2022-10-06 00:00:00', '승인되지 않았습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (2, 3, 2, 2, '2022-10-06 00:00:00', '', NULL);
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (3, 4, 3, 3, '2022-10-06 00:00:00', '승인되지 않았습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (4, 5, 4, 4, '2022-10-06 00:00:00', '', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (5, 1, 5, 5, '2022-10-06 00:00:00', '블랙처리 됐습니다.', '2022-10-11 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (6, 2, 4, 1, '2022-10-06 00:00:00', '승인되지 않았습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (7, 3, 1, 2, '2022-10-06 00:00:00', '', NULL);
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (8, 5, 1, 3, '2022-10-06 00:00:00', '', NULL);
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (9, 2, 3, 4, '2022-10-06 00:00:00', '승인되지 않았습니다.', '2022-10-06 16:13:33');
INSERT INTO `member_tatlle` (`mtno`, `mnoee`, `mnoer`, `trno`, `tdt`, `cont`, `comdt`) VALUES (10, 1, 2, 5, '2022-10-06 00:00:00', '승인되지 않았습니다.', '2022-10-06 16:13:33');

-- 공지사항 첨부파일
INSERT INTO `notice_file` (`nfno`, `filepath`, `nno`) VALUES (1, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 1);
INSERT INTO `notice_file` (`nfno`, `filepath`, `nno`) VALUES (2, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 2);
INSERT INTO `notice_file` (`nfno`, `filepath`, `nno`) VALUES (3, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 3);
INSERT INTO `notice_file` (`nfno`, `filepath`, `nno`) VALUES (4, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 4);
INSERT INTO `notice_file` (`nfno`, `filepath`, `nno`) VALUES (5, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 5);
INSERT INTO `notice_file` (`nfno`, `filepath`, `nno`) VALUES (6, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 1);
INSERT INTO `notice_file` (`nfno`, `filepath`, `nno`) VALUES (7, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 1);
INSERT INTO `notice_file` (`nfno`, `filepath`, `nno`) VALUES (8, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 3);
INSERT INTO `notice_file` (`nfno`, `filepath`, `nno`) VALUES (9, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 3);
INSERT INTO `notice_file` (`nfno`, `filepath`, `nno`) VALUES (10, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 4);

-- 모임 댓글
INSERT INTO `party_comment` (`pcno`, `mno`, `pno`, `cont`, `cdt`) VALUES (1, 1, 2, '참여하고싶어요!', '2022-10-06 00:00:00');
INSERT INTO `party_comment` (`pcno`, `mno`, `pno`, `cont`, `cdt`) VALUES (2, 2, 3, '같이합시다!!', '2022-10-06 00:00:00');
INSERT INTO `party_comment` (`pcno`, `mno`, `pno`, `cont`, `cdt`) VALUES (3, 3, 4, '혹시 고인물들 많나요?!', '2022-10-06 00:00:00');
INSERT INTO `party_comment` (`pcno`, `mno`, `pno`, `cont`, `cdt`) VALUES (4, 4, 5, '와 정말 흥미로워요!', '2022-10-06 00:00:00');
INSERT INTO `party_comment` (`pcno`, `mno`, `pno`, `cont`, `cdt`) VALUES (5, 5, 1, '지금 당장 신청합니다!', '2022-10-06 00:00:00');
INSERT INTO `party_comment` (`pcno`, `mno`, `pno`, `cont`, `cdt`) VALUES (6, 1, 3, '와 참여해야겠네요', '2022-10-06 00:00:00');
INSERT INTO `party_comment` (`pcno`, `mno`, `pno`, `cont`, `cdt`) VALUES (7, 1, 4, '아 고민이 되내요 지역은 가까운데', '2022-10-06 00:00:00');
INSERT INTO `party_comment` (`pcno`, `mno`, `pno`, `cont`, `cdt`) VALUES (8, 3, 5, '시간이 안맞네요 ㅜㅜ 시간 맞을때 신청할게요', '2022-10-06 00:00:00');
INSERT INTO `party_comment` (`pcno`, `mno`, `pno`, `cont`, `cdt`) VALUES (9, 4, 1, '초보도 가능한가요', '2022-10-06 00:00:00');
INSERT INTO `party_comment` (`pcno`, `mno`, `pno`, `cont`, `cdt`) VALUES (10, 5, 1, '처음해보는데 신청가능한가요', '2022-10-06 00:00:00');

-- 모임 첨부파일
INSERT INTO `party_file` (`pfno`, `filepath`, `pno`) VALUES (1, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 1);
INSERT INTO `party_file` (`pfno`, `filepath`, `pno`) VALUES (2, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 1);
INSERT INTO `party_file` (`pfno`, `filepath`, `pno`) VALUES (3, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 3);
INSERT INTO `party_file` (`pfno`, `filepath`, `pno`) VALUES (4, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 4);
INSERT INTO `party_file` (`pfno`, `filepath`, `pno`) VALUES (5, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 5);
INSERT INTO `party_file` (`pfno`, `filepath`, `pno`) VALUES (6, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 1);
INSERT INTO `party_file` (`pfno`, `filepath`, `pno`) VALUES (7, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 4);
INSERT INTO `party_file` (`pfno`, `filepath`, `pno`) VALUES (8, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 3);
INSERT INTO `party_file` (`pfno`, `filepath`, `pno`) VALUES (9, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 5);
INSERT INTO `party_file` (`pfno`, `filepath`, `pno`) VALUES (10, 'http://image.auction.co.kr/itemimage/1a/c2/ec/1ac2ec2fd6.jpg', 5);

-- 댓글 신고
INSERT INTO `comment_tatlle` (`ctno`, `mno`, `bcno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (1, 1, 1, 1, '2022-10-06 19:01:04', '블랙처리 됐습니다', '2022-10-07 19:09:04');
INSERT INTO `comment_tatlle` (`ctno`, `mno`, `bcno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (2, 2, 2, 2, '2022-10-06 19:01:04', '블랙처리 됐습니다', '2022-10-07 19:09:04');
INSERT INTO `comment_tatlle` (`ctno`, `mno`, `bcno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (3, 3, 3, 3, '2022-10-06 19:01:04', '블랙처리 됐습니다', '2022-10-07 19:09:04');
INSERT INTO `comment_tatlle` (`ctno`, `mno`, `bcno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (4, 4, 4, 4, '2022-10-06 19:01:04', '블랙처리 됐습니다', '2022-10-07 19:09:04');
INSERT INTO `comment_tatlle` (`ctno`, `mno`, `bcno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (5, 5, 5, 5, '2022-10-06 19:01:04', '블랙처리 됐습니다', '2022-10-07 19:09:04');
INSERT INTO `comment_tatlle` (`ctno`, `mno`, `bcno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (6, 1, 2, 1, '2022-10-07 19:09:04', '', NULL);
INSERT INTO `comment_tatlle` (`ctno`, `mno`, `bcno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (7, 2, 3, 2, '2022-10-07 19:09:04', '', NULL);
INSERT INTO `comment_tatlle` (`ctno`, `mno`, `bcno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (8, 3, 4, 3, '2022-10-07 19:09:04', '승인되지 않았습니다.', '2022-10-07 19:09:04');
INSERT INTO `comment_tatlle` (`ctno`, `mno`, `bcno`, `trno`, `tdt`, `cont`, `comdt`) VALUES (9, 4, 5, 4, '2022-10-07 19:09:04', '승인되지 않았습니다.', '2022-10-07 19:09:04');

-- 관심지역
INSERT INTO `favorite_region` (`rno`, `mno`) VALUES (4, 2);
INSERT INTO `favorite_region` (`rno`, `mno`) VALUES (5, 4);
INSERT INTO `favorite_region` (`rno`, `mno`) VALUES (6, 2);
INSERT INTO `favorite_region` (`rno`, `mno`) VALUES (7, 5);
INSERT INTO `favorite_region` (`rno`, `mno`) VALUES (12, 1);
INSERT INTO `favorite_region` (`rno`, `mno`) VALUES (13, 3);
INSERT INTO `favorite_region` (`rno`, `mno`) VALUES (20, 4);
INSERT INTO `favorite_region` (`rno`, `mno`) VALUES (21, 5);
INSERT INTO `favorite_region` (`rno`, `mno`) VALUES (25, 1);
INSERT INTO `favorite_region` (`rno`, `mno`) VALUES (25, 3);

-- 관심운동
INSERT INTO `favorite_sport` (`sno`, `mno`) VALUES (1, 3);
INSERT INTO `favorite_sport` (`sno`, `mno`) VALUES (1, 5);
INSERT INTO `favorite_sport` (`sno`, `mno`) VALUES (2, 1);
INSERT INTO `favorite_sport` (`sno`, `mno`) VALUES (2, 4);
INSERT INTO `favorite_sport` (`sno`, `mno`) VALUES (3, 2);
INSERT INTO `favorite_sport` (`sno`, `mno`) VALUES (3, 4);
INSERT INTO `favorite_sport` (`sno`, `mno`) VALUES (4, 2);
INSERT INTO `favorite_sport` (`sno`, `mno`) VALUES (4, 3);
INSERT INTO `favorite_sport` (`sno`, `mno`) VALUES (5, 1);
INSERT INTO `favorite_sport` (`sno`, `mno`) VALUES (5, 5);
