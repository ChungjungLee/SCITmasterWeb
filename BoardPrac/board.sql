-- 회원 테이블
DROP TABLE projectmember;

CREATE TABLE projectmember (
	name		VARCHAR2(30)	NOT NULL,
	id			VARCHAR2(12)	PRIMARY KEY,
	password	VARCHAR2(24)	NOT NULL,
	email		VARCHAR2(30)	NOT NULL,
	address		VARCHAR2(100)	NOT NULL,
	phonenum	CHAR(11)		NOT NULL,
	carrier		VARCHAR2(4)			NOT NULL,
	telnum		CHAR(11)
);


-- 게시글 테이블
DROP TABLE projectboard;

CREATE TABLE projectboard (
	num		NUMBER			PRIMARY KEY,
	title	VARCHAR2(100)	NOT NULL,
	text	VARCHAR2(2000),
	author	VARCHAR2(30)	NOT NULL,
	views	NUMBER			DEFAULT 0,
	indate	DATE			DEFAULT SYSDATE
);

-- 게시글 테이블 시퀀스
DROP SEQUENCE PROJECTBOARD_SEQ;
CREATE SEQUENCE PROJECTBOARD_SEQ;


-- 게시글 입력
INSERT INTO projectboard 
VALUES (PROJECTBOARD_SEQ.nextval, 'First Article', 'first article body', 'Me', 1, SYSDATE);
