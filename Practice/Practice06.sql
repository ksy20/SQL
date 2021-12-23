--데이터 지우기
drop table author; 
drop table book; 
drop SEQUENCE seq_book_id;
drop SEQUENCE seq_author_id;

--author 테이블 생성
create table author (
    author_id number(5),
    author_name VARCHAR2(100) not null,
    author_desc VARCHAR2 (500),
    PRIMARY KEY (author_id)
);

--book 테이블 생성
create table book (
    book_id number(5),
    title VARCHAR2(500),
    pubs VARCHAR2(100),
    pub_date date,
    author_id number(5),
    PRIMARY KEY (book_id),
    CONSTRAINT book_fk FOREIGN key (author_id)
    REFERENCES author(author_id)
);

--author 시퀀스 생성 
create sequence seq_author_id 
INCREMENT BY 1
 start WITH 1
nocache;


--book 시퀀스 생성
create SEQUENCE seq_book_id 
INCREMENT by 1
 start WITH 1
nocache;

--author 테이블 데이터 대입
INSERT INTO author 
VALUES(seq_author_id.nextval, '김문열', '경북 영양');

INSERT INTO author 
VALUES (seq_author_id.nextval, '박경리', '경상남도 통영');

INSERT INTO author
VALUES (seq_author_id.nextval, '유시민', '17대 국회의원');

INSERT INTO author
VALUES (seq_author_id.nextval, '기안84', '기안동에서 산 84년생');
 
INSERT INTO author
VALUES (seq_author_id.nextval, '감풀', '온라인 만화가 1세대');

INSERT INTO author
VALUES (seq_author_id.nextval,'김영하', '알쓸신잡');
 
 --book 테이블 데이터 대입
INSERT INTO book
VALUES (SEQ_BOOK_ID.nextval, '우리들의 일그러진 영웅','다림','1998-02-22',1);
  
INSERT INTO book
VALUES (SEQ_BOOK_ID.nextval,'삼국지','민음사','2002-03-01',1);

INSERT INTO book
VALUES(SEQ_BOOK_ID.nextval,'토지','마로니에북스','2012-08-15',2);

INSERT INTO book
VALUES(SEQ_BOOK_ID.nextval,'유시민의 글쓰기 특강','생각의길','2015-04-01',3);
 
INSERT INTO book
VALUES (SEQ_BOOK_ID.nextval,'패션왕','중앙북스(books)','2012-01-22',4);
 
INSERT INTO book
VALUES(SEQ_BOOK_ID.nextval,'순정만화','재미주의','2011-08-03',5);
 
INSERT INTO book
VALUES(SEQ_BOOK_ID.nextval,'오직두사람','문학동네','2017-05-04',6);

INSERT INTO book
VALUES(SEQ_BOOK_ID.nextval,'26년','재미주의','2012-02-04',5);

--데이터 수정
update author 
set author_name = '이문열'
where author_id = 1;

update author 
set author_name = '강풀',
    author_desc = '서울특별시'
where author_id = 5;

-- 만들어진 데이터 검사
 select * from book;
 select * from author;
 
 -- 출력
select bo.book_id,
       bo.title,
       bo.pubs,
       bo.pub_date,
       bo.author_id,
       au.author_name,
       au.author_desc
from book bo, author au
where bo.author_id = au.author_id;

commit;

