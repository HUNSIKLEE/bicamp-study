-- 회원
DROP TABLE IF EXISTS app_member RESTRICT;

-- 게시글
DROP TABLE IF EXISTS app_board RESTRICT;

-- 첨부파일
DROP TABLE IF EXISTS app_board_file RESTRICT;

-- 운동 분류
DROP TABLE IF EXISTS app_sports RESTRICT;

-- 운동 지역
DROP TABLE IF EXISTS app_region RESTRICT;

-- 모임
DROP TABLE IF EXISTS app_gathering RESTRICT;

-- 장소
DROP TABLE IF EXISTS app_location RESTRICT;

-- 모임후기
DROP TABLE IF EXISTS app_gathering_review RESTRICT;

-- 나의 목표
DROP TABLE IF EXISTS app_plan RESTRICT;

-- 댓글
DROP TABLE IF EXISTS app_board_comment RESTRICT;

-- 공지사항
DROP TABLE IF EXISTS app_notice RESTRICT;

-- 1:1 문의 질문
DROP TABLE IF EXISTS app_qa RESTRICT;

-- 관리자
DROP TABLE IF EXISTS app_admin RESTRICT;

-- 관심지역
DROP TABLE IF EXISTS app_favorite_region RESTRICT;

-- 관심 운동
DROP TABLE IF EXISTS app_favorite_sport RESTRICT;

-- 모임참여명단
DROP TABLE IF EXISTS app_gathering_members RESTRICT;

-- 모임 첨부파일
DROP TABLE IF EXISTS app_gathering_file RESTRICT;

-- 모임후기 첨부파일
DROP TABLE IF EXISTS app_gathering_review_file RESTRICT;

-- 모임 댓글
DROP TABLE IF EXISTS app_gathering_comment RESTRICT;

-- 장소후기 첨부파일
DROP TABLE IF EXISTS app_location_review_file RESTRICT;

-- 장소후기
DROP TABLE IF EXISTS app_location_review RESTRICT;

-- 알림
DROP TABLE IF EXISTS app_allim RESTRICT;

-- 게시글신고
DROP TABLE IF EXISTS app_board_declaration RESTRICT;

-- 스크랩
DROP TABLE IF EXISTS app_board_scrap RESTRICT;

-- 모임 회차
DROP TABLE IF EXISTS app_gathering_count RESTRICT;

-- 회원신고
DROP TABLE IF EXISTS app_member_declaration RESTRICT;

-- 게시글카테고리
DROP TABLE IF EXISTS app_board_category RESTRICT;

-- 댓글신고
DROP TABLE IF EXISTS app_board_comment_declaration RESTRICT;

-- 첨부파일2
DROP TABLE IF EXISTS app_board_file2 RESTRICT;

-- 보안질문
DROP TABLE IF EXISTS app_boanqna RESTRICT;

-- 회원
CREATE TABLE app_member (
  mno      INTEGER      NOT NULL COMMENT '회원번호', -- 회원번호
  name     VARCHAR(50)  NOT NULL COMMENT '이름', -- 이름
  email    VARCHAR(40)  NOT NULL COMMENT '이메일', -- 이메일
  pwd      VARCHAR(100) NOT NULL COMMENT '암호', -- 암호
  nickname VARCHAR(255) NOT NULL COMMENT '닉네임', -- 닉네임
  pnumber  INTEGER      NOT NULL COMMENT '휴대전화', -- 휴대전화
  bdate    DATE         NOT NULL COMMENT '생년월일', -- 생년월일
  gender   BOOLEAN      NOT NULL COMMENT '성별', -- 성별
  filepath VARCHAR(255) NULL     COMMENT '파일경로', -- 파일경로
  cdt      DATETIME     NOT NULL DEFAULT now() COMMENT '등록일', -- 등록일
  act      BOOLEAN      NOT NULL DEFAULT 1 COMMENT '활성화여부', -- 활성화여부
  blist    BOOLEAN      NOT NULL DEFAULT 0 COMMENT '블랙여부', -- 블랙여부
  sa       VARCHAR(255) NOT NULL COMMENT '보안답변', -- 보안답변
  scqno    INTEGER      NULL     COMMENT '보안질문번호' -- 보안질문번호
)
COMMENT '회원';

-- 회원
ALTER TABLE app_member
  ADD CONSTRAINT PK_app_member -- 회원 기본키
    PRIMARY KEY (
      mno -- 회원번호
    );

-- 회원 유니크 인덱스
CREATE UNIQUE INDEX UIX_app_member
  ON app_member ( -- 회원
    email ASC -- 이메일
  );

-- 회원 유니크 인덱스2
CREATE UNIQUE INDEX UIX_app_member2
  ON app_member ( -- 회원
    nickname ASC -- 닉네임
  );

-- 회원 인덱스
CREATE INDEX IX_app_member
  ON app_member( -- 회원
    name ASC -- 이름
  );

ALTER TABLE app_member
  MODIFY COLUMN mno INTEGER NOT NULL AUTO_INCREMENT COMMENT '회원번호';

-- 게시글
CREATE TABLE app_board (
  bno     INTEGER      NOT NULL COMMENT '게시글번호', -- 게시글번호
  bcno    INTEGER      NOT NULL COMMENT '게시글카테고리번호', -- 게시글카테고리번호
  mno     INTEGER      NOT NULL COMMENT '회원번호', -- 회원번호
  title   VARCHAR(255) NOT NULL COMMENT '제목', -- 제목
  act     BOOLEAN      NOT NULL DEFAULT 0 COMMENT '활성화여부', -- 활성화여부
  privacy BOOLEAN      NOT NULL COMMENT '공개설정', -- 공개설정
  cont    MEDIUMTEXT   NOT NULL COMMENT '내용', -- 내용
  cdt     DATETIME     NOT NULL DEFAULT now() COMMENT '등록일', -- 등록일
  vw_cnt  INTEGER      NOT NULL DEFAULT 0 COMMENT '조회수' -- 조회수
)
COMMENT '게시글';

-- 게시글
ALTER TABLE app_board
  ADD CONSTRAINT PK_app_board -- 게시글 기본키
    PRIMARY KEY (
      bno -- 게시글번호
    );

ALTER TABLE app_board
  MODIFY COLUMN bno INTEGER NOT NULL AUTO_INCREMENT COMMENT '게시글번호';

-- 첨부파일
CREATE TABLE app_board_file (
  bfno     INTEGER      NOT NULL COMMENT '첨부파일번호', -- 첨부파일번호
  filepath VARCHAR(255) NOT NULL COMMENT '파일경로', -- 파일경로
  bno      INTEGER      NOT NULL COMMENT '게시글번호' -- 게시글번호
)
COMMENT '첨부파일';

-- 첨부파일
ALTER TABLE app_board_file
  ADD CONSTRAINT PK_app_board_file -- 첨부파일 기본키
    PRIMARY KEY (
      bfno -- 첨부파일번호
    );

ALTER TABLE app_board_file
  MODIFY COLUMN bfno INTEGER NOT NULL AUTO_INCREMENT COMMENT '첨부파일번호';

-- 운동 분류
CREATE TABLE app_sports (
  sno   INTEGER     NOT NULL COMMENT '운동일련번호', -- 운동일련번호
  sname VARCHAR(50) NOT NULL COMMENT '운동 명' -- 운동 명
)
COMMENT '운동 분류';

-- 운동 분류
ALTER TABLE app_sports
  ADD CONSTRAINT PK_app_sports -- 운동 분류 기본키
    PRIMARY KEY (
      sno -- 운동일련번호
    );

ALTER TABLE app_sports
  MODIFY COLUMN sno INTEGER NOT NULL AUTO_INCREMENT COMMENT '운동일련번호';

-- 운동 지역
CREATE TABLE app_region (
  rno  INTEGER      NOT NULL COMMENT '지역일련번호', -- 지역일련번호
  sido VARCHAR(255) NOT NULL COMMENT '시/도', -- 시/도
  sigu VARCHAR(255) NOT NULL COMMENT '시/군/구' -- 시/군/구
)
COMMENT '운동 지역';

-- 운동 지역
ALTER TABLE app_region
  ADD CONSTRAINT PK_app_region -- 운동 지역 기본키
    PRIMARY KEY (
      rno -- 지역일련번호
    );

-- 운동 지역 인덱스
CREATE INDEX IX_app_region
  ON app_region( -- 운동 지역
    sigu ASC -- 시/군/구
  );

ALTER TABLE app_region
  MODIFY COLUMN rno INTEGER NOT NULL AUTO_INCREMENT COMMENT '지역일련번호';

-- 모임
CREATE TABLE app_gathering (
  gno    INTEGER      NOT NULL COMMENT '모임 일련번호', -- 모임 일련번호
  sno    INTEGER      NOT NULL COMMENT '운동일련번호', -- 운동일련번호
  lno    INTEGER      NOT NULL COMMENT '장소 일련번호', -- 장소 일련번호
  title  VARCHAR(255) NOT NULL COMMENT '제목', -- 제목
  act    BOOLEAN      NOT NULL DEFAULT 0 COMMENT '활성화여부', -- 활성화여부
  cont   MEDIUMTEXT   NOT NULL COMMENT '내용', -- 내용
  cdt    DATETIME     NOT NULL DEFAULT now() COMMENT '등록일', -- 등록일
  hcount INTEGER      NOT NULL COMMENT '정원', -- 정원
  gtime  TIME         NOT NULL COMMENT '모임시간', -- 모임시간
  gdate  DATE         NOT NULL COMMENT '모임일' -- 모임일
)
COMMENT '모임';

-- 모임
ALTER TABLE app_gathering
  ADD CONSTRAINT PK_app_gathering -- 모임 기본키
    PRIMARY KEY (
      gno -- 모임 일련번호
    );

ALTER TABLE app_gathering
  MODIFY COLUMN gno INTEGER NOT NULL AUTO_INCREMENT COMMENT '모임 일련번호';

-- 장소
CREATE TABLE app_location (
  lno INTEGER NOT NULL COMMENT '장소 일련번호', -- 장소 일련번호
  rno INTEGER NOT NULL COMMENT '지역일련번호', -- 지역일련번호
  sno INTEGER NOT NULL COMMENT '운동일련번호' -- 운동일련번호
)
COMMENT '장소';

-- 장소
ALTER TABLE app_location
  ADD CONSTRAINT PK_app_location -- 장소 기본키
    PRIMARY KEY (
      lno -- 장소 일련번호
    );

ALTER TABLE app_location
  MODIFY COLUMN lno INTEGER NOT NULL AUTO_INCREMENT COMMENT '장소 일련번호';

-- 모임후기
CREATE TABLE app_gathering_review (
  grno  INTEGER      NOT NULL COMMENT '후기 일련번호', -- 후기 일련번호
  mno   INTEGER      NOT NULL COMMENT '회원번호', -- 회원번호
  gno   INTEGER      NOT NULL COMMENT '모임 일련번호', -- 모임 일련번호
  star  DEC(3,2)     NOT NULL COMMENT '별점', -- 별점
  title VARCHAR(255) NOT NULL COMMENT '제목', -- 제목
  cont  MEDIUMTEXT   NOT NULL COMMENT '내용', -- 내용
  cdt   DATETIME     NOT NULL DEFAULT now() COMMENT '등록일' -- 등록일
)
COMMENT '모임후기';

-- 모임후기
ALTER TABLE app_gathering_review
  ADD CONSTRAINT PK_app_gathering_review -- 모임후기 기본키
    PRIMARY KEY (
      grno -- 후기 일련번호
    );

ALTER TABLE app_gathering_review
  MODIFY COLUMN grno INTEGER NOT NULL AUTO_INCREMENT COMMENT '후기 일련번호';

-- 나의 목표
CREATE TABLE app_plan (
  pno   INTEGER      NOT NULL COMMENT '계획 일련번호', -- 계획 일련번호
  mno   INTEGER      NOT NULL COMMENT '회원번호', -- 회원번호
  title VARCHAR(255) NOT NULL COMMENT '계획 명', -- 계획 명
  act   BOOLEAN      NOT NULL DEFAULT 0 COMMENT '달성여부', -- 달성여부
  dday  DATE         NULL     COMMENT '목표일', -- 목표일
  chl   DEC(3,2)     NOT NULL COMMENT '목표치' -- 목표치
)
COMMENT '나의 목표';

-- 나의 목표
ALTER TABLE app_plan
  ADD CONSTRAINT PK_app_plan -- 나의 목표 기본키
    PRIMARY KEY (
      pno -- 계획 일련번호
    );

ALTER TABLE app_plan
  MODIFY COLUMN pno INTEGER NOT NULL AUTO_INCREMENT COMMENT '계획 일련번호';

-- 댓글
CREATE TABLE app_board_comment (
  bcno INTEGER    NOT NULL COMMENT '댓글번호', -- 댓글번호
  bno  INTEGER    NOT NULL COMMENT '게시글번호', -- 게시글번호
  mno  INTEGER    NOT NULL COMMENT '회원번호', -- 회원번호
  cont MEDIUMTEXT NOT NULL COMMENT '내용', -- 내용
  act  BOOLEAN    NOT NULL DEFAULT 0 COMMENT '활성화여부', -- 활성화여부
  cdt  DATETIME   NOT NULL DEFAULT now() COMMENT '등록일' -- 등록일
)
COMMENT '댓글';

-- 댓글
ALTER TABLE app_board_comment
  ADD CONSTRAINT PK_app_board_comment -- 댓글 기본키
    PRIMARY KEY (
      bcno -- 댓글번호
    );

ALTER TABLE app_board_comment
  MODIFY COLUMN bcno INTEGER NOT NULL AUTO_INCREMENT COMMENT '댓글번호';

-- 공지사항
CREATE TABLE app_notice (
  nno    INTEGER      NOT NULL COMMENT '게시글번호', -- 게시글번호
  title  VARCHAR(255) NOT NULL COMMENT '제목', -- 제목
  cont   MEDIUMTEXT   NOT NULL COMMENT '내용', -- 내용
  cdt    DATETIME     NOT NULL DEFAULT now() COMMENT '등록일', -- 등록일
  vw_cnt INTEGER      NOT NULL DEFAULT 0 COMMENT '조회수' -- 조회수
)
COMMENT '공지사항';

-- 공지사항
ALTER TABLE app_notice
  ADD CONSTRAINT PK_app_notice -- 공지사항 기본키
    PRIMARY KEY (
      nno -- 게시글번호
    );

ALTER TABLE app_notice
  MODIFY COLUMN nno INTEGER NOT NULL AUTO_INCREMENT COMMENT '게시글번호';

-- 1:1 문의 질문
CREATE TABLE app_qa (
  qno   INTEGER      NOT NULL COMMENT '문의질문번호', -- 문의질문번호
  mno   INTEGER      NOT NULL COMMENT '회원번호', -- 회원번호
  title VARCHAR(255) NOT NULL COMMENT '제목', -- 제목
  act   BOOLEAN      NOT NULL DEFAULT 1 COMMENT '답변여부', -- 답변여부
  cont  MEDIUMTEXT   NOT NULL COMMENT '질문', -- 질문
  cdt   DATETIME     NOT NULL DEFAULT now() COMMENT '등록일', -- 등록일
  acont MEDIUMTEXT   NULL     COMMENT '답변', -- 답변
  adt   DATETIME     NULL     COMMENT '답변일' -- 답변일
)
COMMENT '1:1 문의 질문';

-- 1:1 문의 질문
ALTER TABLE app_qa
  ADD CONSTRAINT PK_app_qa -- 1:1 문의 질문 기본키
    PRIMARY KEY (
      qno -- 문의질문번호
    );

ALTER TABLE app_qa
  MODIFY COLUMN qno INTEGER NOT NULL AUTO_INCREMENT COMMENT '문의질문번호';

-- 관리자
CREATE TABLE app_admin (
  adno  INTEGER      NOT NULL COMMENT '관리자번호', -- 관리자번호
  name  VARCHAR(50)  NOT NULL COMMENT '이름', -- 이름
  email VARCHAR(40)  NOT NULL COMMENT '이메일', -- 이메일
  pwd   VARCHAR(100) NOT NULL COMMENT '암호', -- 암호
  cdt   DATETIME     NOT NULL DEFAULT now() COMMENT '등록일' -- 등록일
)
COMMENT '관리자';

-- 관리자
ALTER TABLE app_admin
  ADD CONSTRAINT PK_app_admin -- 관리자 기본키
    PRIMARY KEY (
      adno -- 관리자번호
    );

-- 관리자 유니크 인덱스
CREATE UNIQUE INDEX UIX_app_admin
  ON app_admin ( -- 관리자
    email ASC -- 이메일
  );

-- 관리자 인덱스
CREATE INDEX IX_app_admin
  ON app_admin( -- 관리자
    name ASC -- 이름
  );

ALTER TABLE app_admin
  MODIFY COLUMN adno INTEGER NOT NULL AUTO_INCREMENT COMMENT '관리자번호';

-- 관심지역
CREATE TABLE app_favorite_region (
  rno INTEGER NOT NULL COMMENT '지역일련번호', -- 지역일련번호
  mno INTEGER NOT NULL COMMENT '회원번호' -- 회원번호
)
COMMENT '관심지역';

-- 관심지역
ALTER TABLE app_favorite_region
  ADD CONSTRAINT PK_app_favorite_region -- 관심지역 기본키
    PRIMARY KEY (
      rno, -- 지역일련번호
      mno  -- 회원번호
    );

-- 관심 운동
CREATE TABLE app_favorite_sport (
  sno INTEGER NOT NULL COMMENT '운동일련번호', -- 운동일련번호
  mno INTEGER NOT NULL COMMENT '회원번호' -- 회원번호
)
COMMENT '관심 운동';

-- 관심 운동
ALTER TABLE app_favorite_sport
  ADD CONSTRAINT PK_app_favorite_sport -- 관심 운동 기본키
    PRIMARY KEY (
      sno, -- 운동일련번호
      mno  -- 회원번호
    );

-- 모임참여명단
CREATE TABLE app_gathering_members (
  mno  INTEGER NOT NULL COMMENT '회원번호', -- 회원번호
  gno  INTEGER NOT NULL COMMENT '모임 일련번호', -- 모임 일련번호
  auth BOOLEAN NOT NULL COMMENT '권한', -- 권한
  act  BOOLEAN NOT NULL DEFAULT 1 COMMENT '활성화여부2', -- 활성화여부2
  COL2 INTEGER NOT NULL COMMENT '신청처리상태' -- 신청처리상태
)
COMMENT '모임참여명단';

-- 모임참여명단
ALTER TABLE app_gathering_members
  ADD CONSTRAINT PK_app_gathering_members -- 모임참여명단 기본키
    PRIMARY KEY (
      mno, -- 회원번호
      gno  -- 모임 일련번호
    );

-- 모임 첨부파일
CREATE TABLE app_gathering_file (
  gfno     INTEGER      NOT NULL COMMENT '모임첨부번호', -- 모임첨부번호
  filepath VARCHAR(255) NOT NULL COMMENT '파일경로', -- 파일경로
  gno      INTEGER      NOT NULL COMMENT '모임 일련번호' -- 모임 일련번호
)
COMMENT '모임 첨부파일';

-- 모임 첨부파일
ALTER TABLE app_gathering_file
  ADD CONSTRAINT PK_app_gathering_file -- 모임 첨부파일 기본키
    PRIMARY KEY (
      gfno -- 모임첨부번호
    );

ALTER TABLE app_gathering_file
  MODIFY COLUMN gfno INTEGER NOT NULL AUTO_INCREMENT COMMENT '모임첨부번호';

-- 모임후기 첨부파일
CREATE TABLE app_gathering_review_file (
  grfno    INTEGER      NOT NULL COMMENT '모임후기첨부번호', -- 모임후기첨부번호
  filepath VARCHAR(255) NOT NULL COMMENT '파일경로', -- 파일경로
  grno     INTEGER      NOT NULL COMMENT '후기 일련번호' -- 후기 일련번호
)
COMMENT '모임후기 첨부파일';

-- 모임후기 첨부파일
ALTER TABLE app_gathering_review_file
  ADD CONSTRAINT PK_app_gathering_review_file -- 모임후기 첨부파일 기본키
    PRIMARY KEY (
      grfno -- 모임후기첨부번호
    );

ALTER TABLE app_gathering_review_file
  MODIFY COLUMN grfno INTEGER NOT NULL AUTO_INCREMENT COMMENT '모임후기첨부번호';

-- 모임 댓글
CREATE TABLE app_gathering_comment (
  gcno INTEGER    NOT NULL COMMENT '모임댓글번호', -- 모임댓글번호
  mno  INTEGER    NOT NULL COMMENT '회원번호', -- 회원번호
  gno  INTEGER    NOT NULL COMMENT '모임 일련번호', -- 모임 일련번호
  cont MEDIUMTEXT NOT NULL COMMENT '내용', -- 내용
  cdt  DATETIME   NOT NULL DEFAULT now() COMMENT '등록일' -- 등록일
)
COMMENT '모임 댓글';

-- 모임 댓글
ALTER TABLE app_gathering_comment
  ADD CONSTRAINT PK_app_gathering_comment -- 모임 댓글 기본키
    PRIMARY KEY (
      gcno -- 모임댓글번호
    );

ALTER TABLE app_gathering_comment
  MODIFY COLUMN gcno INTEGER NOT NULL AUTO_INCREMENT COMMENT '모임댓글번호';

-- 장소후기 첨부파일
CREATE TABLE app_location_review_file (
  lrfno    INTEGER      NOT NULL COMMENT '장소후기첨부번호', -- 장소후기첨부번호
  filepath VARCHAR(255) NOT NULL COMMENT '파일경로', -- 파일경로
  lrno     INTEGER      NOT NULL COMMENT '후기 일련번호' -- 후기 일련번호
)
COMMENT '장소후기 첨부파일';

-- 장소후기 첨부파일
ALTER TABLE app_location_review_file
  ADD CONSTRAINT PK_app_location_review_file -- 장소후기 첨부파일 기본키
    PRIMARY KEY (
      lrfno -- 장소후기첨부번호
    );

ALTER TABLE app_location_review_file
  MODIFY COLUMN lrfno INTEGER NOT NULL AUTO_INCREMENT COMMENT '장소후기첨부번호';

-- 장소후기
CREATE TABLE app_location_review (
  lrno  INTEGER      NOT NULL COMMENT '후기 일련번호', -- 후기 일련번호
  mno   INTEGER      NOT NULL COMMENT '회원번호', -- 회원번호
  gno   INTEGER      NOT NULL COMMENT '모임 일련번호', -- 모임 일련번호
  title VARCHAR(255) NOT NULL COMMENT '제목', -- 제목
  cont  MEDIUMTEXT   NOT NULL COMMENT '내용', -- 내용
  star  DEC(3,2)     NOT NULL COMMENT '별점', -- 별점
  cdt   DATETIME     NOT NULL DEFAULT now() COMMENT '등록일' -- 등록일
)
COMMENT '장소후기';

-- 장소후기
ALTER TABLE app_location_review
  ADD CONSTRAINT PK_app_location_review -- 장소후기 기본키
    PRIMARY KEY (
      lrno -- 후기 일련번호
    );

ALTER TABLE app_location_review
  MODIFY COLUMN lrno INTEGER NOT NULL AUTO_INCREMENT COMMENT '후기 일련번호';

-- 알림
CREATE TABLE app_allim (
  ano    INTEGER    NOT NULL COMMENT '알림번호', -- 알림번호
  mno    INTEGER    NOT NULL COMMENT '회원번호', -- 회원번호
  cont   MEDIUMTEXT NOT NULL COMMENT '내용', -- 내용
  adt    DATETIME   NOT NULL DEFAULT now() COMMENT '알림시간', -- 알림시간
  acheck BOOLEAN    NOT NULL DEFAULT 1 COMMENT '읽음표시' -- 읽음표시
)
COMMENT '알림';

-- 알림
ALTER TABLE app_allim
  ADD CONSTRAINT PK_app_allim -- 알림 기본키
    PRIMARY KEY (
      ano -- 알림번호
    );

ALTER TABLE app_allim
  MODIFY COLUMN ano INTEGER NOT NULL AUTO_INCREMENT COMMENT '알림번호';

-- 게시글신고
CREATE TABLE app_board_declaration (
  bdno   INTEGER      NOT NULL COMMENT '신고번호', -- 신고번호
  mno    INTEGER      NOT NULL COMMENT '신고자', -- 신고자
  decbno INTEGER      NOT NULL COMMENT '신고대상글', -- 신고대상글
  reason VARCHAR(255) NOT NULL COMMENT '신고사유', -- 신고사유
  decdt  DATETIME     NOT NULL DEFAULT now() COMMENT '신고일', -- 신고일
  cont   MEDIUMTEXT   NULL     COMMENT '처리내용', -- 처리내용
  ddt    DATETIME     NULL     COMMENT '처리일' -- 처리일
)
COMMENT '게시글신고';

-- 게시글신고
ALTER TABLE app_board_declaration
  ADD CONSTRAINT PK_app_board_declaration -- 게시글신고 기본키
    PRIMARY KEY (
      bdno -- 신고번호
    );

ALTER TABLE app_board_declaration
  MODIFY COLUMN bdno INTEGER NOT NULL AUTO_INCREMENT COMMENT '신고번호';

-- 스크랩
CREATE TABLE app_board_scrap (
  mno INTEGER NOT NULL COMMENT '회원번호', -- 회원번호
  bno INTEGER NOT NULL COMMENT '게시글번호' -- 게시글번호
)
COMMENT '스크랩';

-- 스크랩
ALTER TABLE app_board_scrap
  ADD CONSTRAINT PK_app_board_scrap -- 스크랩 기본키
    PRIMARY KEY (
      mno, -- 회원번호
      bno  -- 게시글번호
    );

-- 모임 회차
CREATE TABLE app_gathering_count (
  mno   INTEGER NOT NULL COMMENT '회원번호', -- 회원번호
  sno   INTEGER NOT NULL COMMENT '운동일련번호', -- 운동일련번호
  count INTEGER NOT NULL DEFAULT 0 COMMENT '회차' -- 회차
)
COMMENT '모임 회차';

-- 모임 회차
ALTER TABLE app_gathering_count
  ADD CONSTRAINT PK_app_gathering_count -- 모임 회차 기본키
    PRIMARY KEY (
      mno, -- 회원번호
      sno  -- 운동일련번호
    );

-- 회원신고
CREATE TABLE app_member_declaration (
  mdno   INTEGER      NOT NULL COMMENT '신고번호', -- 신고번호
  mno2   INTEGER      NOT NULL COMMENT '신고자회원번호', -- 신고자회원번호
  mno    INTEGER      NOT NULL COMMENT '피신고자회원번호', -- 피신고자회원번호
  reason VARCHAR(255) NOT NULL COMMENT '신고사유', -- 신고사유
  decdt  DATETIME     NOT NULL DEFAULT now() COMMENT '신고일', -- 신고일
  cont   MEDIUMTEXT   NULL     COMMENT '처리내용', -- 처리내용
  ddt    DATETIME     NULL     COMMENT '처리일' -- 처리일
)
COMMENT '회원신고';

-- 회원신고
ALTER TABLE app_member_declaration
  ADD CONSTRAINT PK_app_member_declaration -- 회원신고 기본키
    PRIMARY KEY (
      mdno -- 신고번호
    );

ALTER TABLE app_member_declaration
  MODIFY COLUMN mdno INTEGER NOT NULL AUTO_INCREMENT COMMENT '신고번호';

-- 게시글카테고리
CREATE TABLE app_board_category (
  bcno   INTEGER      NOT NULL COMMENT '게시글카테고리번호', -- 게시글카테고리번호
  bcname VARCHAR(255) NOT NULL COMMENT '게시글카테고리명' -- 게시글카테고리명
)
COMMENT '게시글카테고리';

-- 게시글카테고리
ALTER TABLE app_board_category
  ADD CONSTRAINT PK_app_board_category -- 게시글카테고리 기본키
    PRIMARY KEY (
      bcno -- 게시글카테고리번호
    );

ALTER TABLE app_board_category
  MODIFY COLUMN bcno INTEGER NOT NULL AUTO_INCREMENT COMMENT '게시글카테고리번호';

-- 댓글신고
CREATE TABLE app_board_comment_declaration (
  bdno   INTEGER      NOT NULL COMMENT '신고번호', -- 신고번호
  mno    INTEGER      NOT NULL COMMENT '신고자', -- 신고자
  bcno   INTEGER      NOT NULL COMMENT '댓글번호', -- 댓글번호
  reason VARCHAR(255) NOT NULL COMMENT '신고사유', -- 신고사유
  decdt  DATETIME     NOT NULL DEFAULT now() COMMENT '신고일', -- 신고일
  cont   MEDIUMTEXT   NULL     COMMENT '처리내용', -- 처리내용
  ddt    DATETIME     NULL     COMMENT '처리일' -- 처리일
)
COMMENT '댓글신고';

-- 댓글신고
ALTER TABLE app_board_comment_declaration
  ADD CONSTRAINT PK_app_board_comment_declaration -- 댓글신고 기본키
    PRIMARY KEY (
      bdno -- 신고번호
    );

ALTER TABLE app_board_comment_declaration
  MODIFY COLUMN bdno INTEGER NOT NULL AUTO_INCREMENT COMMENT '신고번호';

-- 첨부파일2
CREATE TABLE app_board_file2 (
  bfno     INTEGER      NOT NULL COMMENT '첨부파일번호', -- 첨부파일번호
  filepath VARCHAR(255) NOT NULL COMMENT '파일경로', -- 파일경로
  nno      INTEGER      NULL     COMMENT '게시글번호' -- 게시글번호
)
COMMENT '첨부파일2';

-- 첨부파일2
ALTER TABLE app_board_file2
  ADD CONSTRAINT PK_app_board_file2 -- 첨부파일2 기본키
    PRIMARY KEY (
      bfno -- 첨부파일번호
    );

-- 보안질문
CREATE TABLE app_boanqna (
  scqno INTEGER      NOT NULL COMMENT '보안질문번호', -- 보안질문번호
  scq   VARCHAR(255) NOT NULL COMMENT '보안질문' -- 보안질문
)
COMMENT '보안질문';

-- 보안질문
ALTER TABLE app_boanqna
  ADD CONSTRAINT PK_app_boanqna -- 보안질문 기본키
    PRIMARY KEY (
      scqno -- 보안질문번호
    );

ALTER TABLE app_boanqna
  MODIFY COLUMN scqno INTEGER NOT NULL AUTO_INCREMENT COMMENT '보안질문번호';

-- 회원
ALTER TABLE app_member
  ADD CONSTRAINT FK_app_boanqna_TO_app_member -- 보안질문 -> 회원
    FOREIGN KEY (
      scqno -- 보안질문번호
    )
    REFERENCES app_boanqna ( -- 보안질문
      scqno -- 보안질문번호
    );

-- 게시글
ALTER TABLE app_board
  ADD CONSTRAINT FK_app_member_TO_app_board -- 회원 -> 게시글
    FOREIGN KEY (
      mno -- 회원번호
    )
    REFERENCES app_member ( -- 회원
      mno -- 회원번호
    );

-- 게시글
ALTER TABLE app_board
  ADD CONSTRAINT FK_app_board_category_TO_app_board -- 게시글카테고리 -> 게시글
    FOREIGN KEY (
      bcno -- 게시글카테고리번호
    )
    REFERENCES app_board_category ( -- 게시글카테고리
      bcno -- 게시글카테고리번호
    );

-- 첨부파일
ALTER TABLE app_board_file
  ADD CONSTRAINT FK_app_board_TO_app_board_file -- 게시글 -> 첨부파일
    FOREIGN KEY (
      bno -- 게시글번호
    )
    REFERENCES app_board ( -- 게시글
      bno -- 게시글번호
    );

-- 모임
ALTER TABLE app_gathering
  ADD CONSTRAINT FK_app_sports_TO_app_gathering -- 운동 분류 -> 모임
    FOREIGN KEY (
      sno -- 운동일련번호
    )
    REFERENCES app_sports ( -- 운동 분류
      sno -- 운동일련번호
    );

-- 모임
ALTER TABLE app_gathering
  ADD CONSTRAINT FK_app_location_TO_app_gathering -- 장소 -> 모임
    FOREIGN KEY (
      lno -- 장소 일련번호
    )
    REFERENCES app_location ( -- 장소
      lno -- 장소 일련번호
    );

-- 장소
ALTER TABLE app_location
  ADD CONSTRAINT FK_app_region_TO_app_location -- 운동 지역 -> 장소
    FOREIGN KEY (
      rno -- 지역일련번호
    )
    REFERENCES app_region ( -- 운동 지역
      rno -- 지역일련번호
    );

-- 장소
ALTER TABLE app_location
  ADD CONSTRAINT FK_app_sports_TO_app_location -- 운동 분류 -> 장소
    FOREIGN KEY (
      sno -- 운동일련번호
    )
    REFERENCES app_sports ( -- 운동 분류
      sno -- 운동일련번호
    );

-- 모임후기
ALTER TABLE app_gathering_review
  ADD CONSTRAINT FK_app_gathering_members_TO_app_gathering_review -- 모임참여명단 -> 모임후기
    FOREIGN KEY (
      mno, -- 회원번호
      gno  -- 모임 일련번호
    )
    REFERENCES app_gathering_members ( -- 모임참여명단
      mno, -- 회원번호
      gno  -- 모임 일련번호
    );

-- 나의 목표
ALTER TABLE app_plan
  ADD CONSTRAINT FK_app_member_TO_app_plan -- 회원 -> 나의 목표
    FOREIGN KEY (
      mno -- 회원번호
    )
    REFERENCES app_member ( -- 회원
      mno -- 회원번호
    );

-- 댓글
ALTER TABLE app_board_comment
  ADD CONSTRAINT FK_app_board_TO_app_board_comment -- 게시글 -> 댓글
    FOREIGN KEY (
      bno -- 게시글번호
    )
    REFERENCES app_board ( -- 게시글
      bno -- 게시글번호
    );

-- 댓글
ALTER TABLE app_board_comment
  ADD CONSTRAINT FK_app_member_TO_app_board_comment -- 회원 -> 댓글
    FOREIGN KEY (
      mno -- 회원번호
    )
    REFERENCES app_member ( -- 회원
      mno -- 회원번호
    );

-- 1:1 문의 질문
ALTER TABLE app_qa
  ADD CONSTRAINT FK_app_member_TO_app_qa -- 회원 -> 1:1 문의 질문
    FOREIGN KEY (
      mno -- 회원번호
    )
    REFERENCES app_member ( -- 회원
      mno -- 회원번호
    );

-- 관심지역
ALTER TABLE app_favorite_region
  ADD CONSTRAINT 
    FOREIGN KEY (
      rno -- 지역일련번호
    )
    REFERENCES app_region ( -- 운동 지역
      rno -- 지역일련번호
    );

-- 관심지역
ALTER TABLE app_favorite_region
  ADD CONSTRAINT FK_app_member_TO_app_favorite_region -- 회원 -> 관심지역
    FOREIGN KEY (
      mno -- 회원번호
    )
    REFERENCES app_member ( -- 회원
      mno -- 회원번호
    );

-- 관심 운동
ALTER TABLE app_favorite_sport
  ADD CONSTRAINT 
    FOREIGN KEY (
      sno -- 운동일련번호
    )
    REFERENCES app_sports ( -- 운동 분류
      sno -- 운동일련번호
    );

-- 관심 운동
ALTER TABLE app_favorite_sport
  ADD CONSTRAINT FK_app_member_TO_app_favorite_sport -- 회원 -> 관심 운동
    FOREIGN KEY (
      mno -- 회원번호
    )
    REFERENCES app_member ( -- 회원
      mno -- 회원번호
    );

-- 모임참여명단
ALTER TABLE app_gathering_members
  ADD CONSTRAINT FK_app_member_TO_app_gathering_members -- 회원 -> 모임참여명단
    FOREIGN KEY (
      mno -- 회원번호
    )
    REFERENCES app_member ( -- 회원
      mno -- 회원번호
    );

-- 모임참여명단
ALTER TABLE app_gathering_members
  ADD CONSTRAINT FK_app_gathering_TO_app_gathering_members -- 모임 -> 모임참여명단
    FOREIGN KEY (
      gno -- 모임 일련번호
    )
    REFERENCES app_gathering ( -- 모임
      gno -- 모임 일련번호
    );

-- 모임 첨부파일
ALTER TABLE app_gathering_file
  ADD CONSTRAINT FK_app_gathering_TO_app_gathering_file -- 모임 -> 모임 첨부파일
    FOREIGN KEY (
      gno -- 모임 일련번호
    )
    REFERENCES app_gathering ( -- 모임
      gno -- 모임 일련번호
    );

-- 모임후기 첨부파일
ALTER TABLE app_gathering_review_file
  ADD CONSTRAINT FK_app_gathering_review_TO_app_gathering_review_file -- 모임후기 -> 모임후기 첨부파일
    FOREIGN KEY (
      grno -- 후기 일련번호
    )
    REFERENCES app_gathering_review ( -- 모임후기
      grno -- 후기 일련번호
    );

-- 모임 댓글
ALTER TABLE app_gathering_comment
  ADD CONSTRAINT FK_app_gathering_TO_app_gathering_comment -- 모임 -> 모임 댓글
    FOREIGN KEY (
      gno -- 모임 일련번호
    )
    REFERENCES app_gathering ( -- 모임
      gno -- 모임 일련번호
    );

-- 모임 댓글
ALTER TABLE app_gathering_comment
  ADD CONSTRAINT FK_app_member_TO_app_gathering_comment -- 회원 -> 모임 댓글
    FOREIGN KEY (
      mno -- 회원번호
    )
    REFERENCES app_member ( -- 회원
      mno -- 회원번호
    );

-- 장소후기 첨부파일
ALTER TABLE app_location_review_file
  ADD CONSTRAINT FK_app_location_review_TO_app_location_review_file -- 장소후기 -> 장소후기 첨부파일
    FOREIGN KEY (
      lrno -- 후기 일련번호
    )
    REFERENCES app_location_review ( -- 장소후기
      lrno -- 후기 일련번호
    );

-- 장소후기
ALTER TABLE app_location_review
  ADD CONSTRAINT FK_app_gathering_members_TO_app_location_review -- 모임참여명단 -> 장소후기
    FOREIGN KEY (
      mno, -- 회원번호
      gno  -- 모임 일련번호
    )
    REFERENCES app_gathering_members ( -- 모임참여명단
      mno, -- 회원번호
      gno  -- 모임 일련번호
    );

-- 알림
ALTER TABLE app_allim
  ADD CONSTRAINT FK_app_member_TO_app_allim -- 회원 -> 알림
    FOREIGN KEY (
      mno -- 회원번호
    )
    REFERENCES app_member ( -- 회원
      mno -- 회원번호
    );

-- 게시글신고
ALTER TABLE app_board_declaration
  ADD CONSTRAINT FK_app_member_TO_app_board_declaration -- 회원 -> 게시글신고
    FOREIGN KEY (
      mno -- 신고자
    )
    REFERENCES app_member ( -- 회원
      mno -- 회원번호
    );

-- 게시글신고
ALTER TABLE app_board_declaration
  ADD CONSTRAINT FK_app_board_TO_app_board_declaration -- 게시글 -> 게시글신고
    FOREIGN KEY (
      decbno -- 신고대상글
    )
    REFERENCES app_board ( -- 게시글
      bno -- 게시글번호
    );

-- 스크랩
ALTER TABLE app_board_scrap
  ADD CONSTRAINT FK_app_member_TO_app_board_scrap -- 회원 -> 스크랩
    FOREIGN KEY (
      mno -- 회원번호
    )
    REFERENCES app_member ( -- 회원
      mno -- 회원번호
    );

-- 스크랩
ALTER TABLE app_board_scrap
  ADD CONSTRAINT FK_app_board_TO_app_board_scrap -- 게시글 -> 스크랩
    FOREIGN KEY (
      bno -- 게시글번호
    )
    REFERENCES app_board ( -- 게시글
      bno -- 게시글번호
    );

-- 모임 회차
ALTER TABLE app_gathering_count
  ADD CONSTRAINT FK_app_member_TO_app_gathering_count -- 회원 -> 모임 회차
    FOREIGN KEY (
      mno -- 회원번호
    )
    REFERENCES app_member ( -- 회원
      mno -- 회원번호
    );

-- 모임 회차
ALTER TABLE app_gathering_count
  ADD CONSTRAINT FK_app_sports_TO_app_gathering_count -- 운동 분류 -> 모임 회차
    FOREIGN KEY (
      sno -- 운동일련번호
    )
    REFERENCES app_sports ( -- 운동 분류
      sno -- 운동일련번호
    );

-- 회원신고
ALTER TABLE app_member_declaration
  ADD CONSTRAINT FK_app_member_TO_app_member_declaration -- 회원 -> 회원신고
    FOREIGN KEY (
      mno2 -- 신고자회원번호
    )
    REFERENCES app_member ( -- 회원
      mno -- 회원번호
    );

-- 회원신고
ALTER TABLE app_member_declaration
  ADD CONSTRAINT FK_app_member_TO_app_member_declaration2 -- 회원 -> 회원신고2
    FOREIGN KEY (
      mno -- 피신고자회원번호
    )
    REFERENCES app_member ( -- 회원
      mno -- 회원번호
    );

-- 댓글신고
ALTER TABLE app_board_comment_declaration
  ADD CONSTRAINT FK_app_member_TO_app_board_comment_declaration -- 회원 -> 댓글신고
    FOREIGN KEY (
      mno -- 신고자
    )
    REFERENCES app_member ( -- 회원
      mno -- 회원번호
    );

-- 댓글신고
ALTER TABLE app_board_comment_declaration
  ADD CONSTRAINT FK_app_board_comment_TO_app_board_comment_declaration -- 댓글 -> 댓글신고
    FOREIGN KEY (
      bcno -- 댓글번호
    )
    REFERENCES app_board_comment ( -- 댓글
      bcno -- 댓글번호
    );

-- 첨부파일2
ALTER TABLE app_board_file2
  ADD CONSTRAINT FK_app_notice_TO_app_board_file2 -- 공지사항 -> 첨부파일2
    FOREIGN KEY (
      nno -- 게시글번호
    )
    REFERENCES app_notice ( -- 공지사항
      nno -- 게시글번호
    );