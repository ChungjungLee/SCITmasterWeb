-- 회원 가입용 테이블
DROP TABLE jsp6member;

CREATE TABLE jsp6member (
	id			VARCHAR2(20)	PRIMARY KEY,
	password	VARCHAR2(20)	NOT NULL,
	name		VARCHAR2(20)	NOT NULL,
	phone		VARCHAR2(20),
	address		VARCHAR2(200)
);

-- 게시판용 테이블
DROP TABLE jsp6board;

CREATE TABLE jsp6board (
	boardnum	NUMBER			PRIMARY KEY,
	id			VARCHAR2(20)	NOT NULL,	-- 작성자 아이디
	title		VARCHAR2(200)	NOT NULL,
	content		VARCHAR2(2000)	NOT NULL,
	inputdate	DATE			DEFAULT SYSDATE,
	hits		NUMBER			DEFAULT 0
);

-- 게시판용 테이블 시퀀스
DROP SEQUENCE jsp6board_seq;
CREATE SEQUENCE jsp6board_seq;
