# PostgreSQL

- 무료!
- 설치 간편, 쉬움
- pgadmin 에서 query입력은 query tool에서 (우클릭하면 뜸)
- Bynury Path 설정
  [http://www.linuxdata.org/bbs/board.php?bo_table=DB&wr_id=82](http://www.linuxdata.org/bbs/board.php?bo_table=DB&wr_id=82)
- 기본구문

  ![Query Chart IMG](img/Query%20Chart.png)

- 데이터 보는법
  Schemas > Public > tables

- 1.설치방법 (window)

  1. 구글에 PostgreSQL 검색
  2. [PostgreSQL.org](http://PostgreSQL.org) 접속
  3. Download 클릭
  4. 운영체제 확인 후, Download Installer 버튼 찾아서 클릭
  5. EDB 사이트로 이동되는데, 이떄 버전과 운영체제 확인후 클릭
  6. 설치 마법사 다운로드 → 실행
  7. 체크 전부 건들지 않고 마지막 FInish에서만 c체크해제 후 마무리

  8. 구글에 PgAdmin 검색 (pgadmin.org 접속)
  9. 아무것도 체크해제 하지 않고 전부 설치

- 2.지정한 데이터 불러오기 (Restore)
  1. Create → DataBase 생성
  2. 생성한 DB 우클릭 후 Restore 선택
  3. FileName 에 tar 파일 또는 등록 희망하는 파일 경로 입력
  4. Data 옵션에서 Pre-Data, Data, 가있는 블록의 옵션 모두 On

## Query 구문

- SELECT
  - 필요한 데이터를 불러오는 기본적인 방식
    SELECT \* FROM TableName
    `sql
    SELECT * FROM film;
    `
- DISTINCT
  - 중복 제거 구문
  - `SELECT DISTINCT (열이름) FROM 테이블이름;`
  ```sql
  SELECT DISTINCT (rating) FROM film;
  ```
- COUNT
  - 수를 셀수 있는 명령어 , 행의 갯수만 반환 한다.
    `SELECT COUNT(*) FROM payment;`
    `SELECT COUNT (DISTINCT amount) FROM payment;`
- WHERE

  ```sql
  SELECT column1, column2
  FROM table
  WHERE condition
  ```

  ```sql
  SELECT COUNT(*) FROM film
  WHERE rental_rate > 4 AND replacement_cost >= 19.99
  AND rating='R';

  WHERE 조건에 맞는 행의 갯수를 반환
  ```

- ORDER BY

  - ASC - 오름차순, DESC - 내림차순

  ```sql
  SELECT * FROM tableName
  ORDER BY column1 ASC( Or DESC);

  SELECT * FROM customer
  ORDER BY first_name ASC;

  SELECT * FROM customer
  ORDER BY store_id DESC, first_name ASC;
  ```

- LIMIT
  - 쿼리 구문중 제일 마지막에 등장하며, 최종적으로 몇개의 행을 표사할 것인지를 설정하는 쿼리
  ```sql
  SELECT * FROM payment
  ORDER BY payment_date DESC
  LIMIT 5;
  ```
  - payment 테이블에서 payment_date를 기준으로 내림차순 정렬 후, 5개의 행 까지만 표시
- BETWEEN

  - LOW <= VALUE <= HIGH 의 범위안에 있는 데이터를 구하는 명령어
  - 최대값과 최솟값 사의 값!
  - 날짜형식에도 사용 가능 (ISO8601 포맷 : 2007-01-01)

  ```sql
  /* 일반적인 BETWEEN*/
    SELECT COUNT(*) FROM payment
    WHERE amount BETWEEN 8 AND 9;

   /* date 형태의 BETWEEN*/
   SELECT * FROM payment
   WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';
  ```

- IN

  - IN 명령어를 통하여 OR 연산과 같이 여러 옵션의 값들에 대한 출력을 할 수 있다.

  ```sql
  SELECT color FROM table
  WHERE color IN ('red', 'blue')

  SELECT color FROM table
  WHERE color NOT IN ('red', 'blue')
  ```

  ```sql
  /* IN 명령어 기본 사용법*/
  SELECT * FROM payment
  WHERE amount IN (0.99, 1.98, 1.99)
  ORDER BY amount; --amount 의 값이 0.99 | 1.98 | 1.99 인것들만 출력

  SELECT * FROM payment
  WHERE amount IN (0.99, 1.98, 1.99); --3321 Rows

  SELECT COUNT(*) FROM payment
  WHERE amount  NOT IN (0.99, 1.98, 1.99); --11295 Rows

  SELECT * FROM customer
  WHERE first_name IN ('John', 'Jake', 'Julie');
  ```

- LIKE , ILIKE

  - 문자열 데이터를 이용한 패턴 매칭 명령어
  - LIKE 는 대소문자를 구분, ILIKE 는 대소문자를 구분하지 않는다.
  - ‘%James’ 와 같이 %를 이용하여 와일드카드로 사용할 수 있다.
  - ‘%A’ = ~A
  - ‘A%’ = A~
  - ‘%A%’ = ~ A ~(A글자를 포함만 하면 True)
  - ‘\_’ (언더바) 는 1 character에 대한 매칭 값만 패턴화 할수 있다.

  ```sql
  WHERE name LIKE '%A'

  WHERE name LIKE 'A%'
  ```

  ```sql
  /* LIKE */
  /* first_name 이 J로 시작하고 last_name이 S로 시작하는 모든 항목*/
  SELECT * FROM customer
  WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';
  ```
