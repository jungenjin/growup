-- eye 제품 등록
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE) 
VALUES('E00' || PRODUCT_SEQ.NEXTVAL, 'e1.png', 'e1_over.png', '라이스페이퍼', '화려한 펄감과 함께 광택감나는 피치 골드', 33000, 2, 'E', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('E00' || PRODUCT_SEQ.NEXTVAL, 'e2.png', 'e2_over.png', '카본', '가장 부드럽고 풍부한 블랙', 33000, 10, 'E', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('E00' || PRODUCT_SEQ.NEXTVAL, 'e3.png', 'e3_over.png', '다크룸', '차가운 퍼플', 33000, 30, 'E', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('E00' || PRODUCT_SEQ.NEXTVAL, 'e4.png', 'e4_over.png', '그레이스톤', '차가운 중간 톤의 그레이', 33000, 20, 'E', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('E00' || PRODUCT_SEQ.NEXTVAL, 'e5.png', 'e5_over.png', '다즐라이트', '실버 펄이 함유된 깨끗한 화이트', 33000, 35, 'E', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('E00' || PRODUCT_SEQ.NEXTVAL, 'e6.png', 'e6_over.png', '코르크', '소프트한 골든 브라운', 33000, 15, 'E', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('E00' || PRODUCT_SEQ.NEXTVAL, 'e7.png', 'e7_over.png', '아임 인투 잇', '다크 레드 브라운', 33000, 20, 'E', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('E00' || PRODUCT_SEQ.NEXTVAL, 'e8.png', 'e8_over.png', '앰버 라이트', '골드 펄감의 라이트 브라운', 33000, 20, 'E', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));

-- face 제품 등록
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('F00' || PRODUCT_SEQ.NEXTVAL, 'f1.png', 'f1_over.png', '라이트풀 C3 파운데이션', 'LIGHTFUL C3 FOUNDATION', 33000, 10, 'F', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('F00' || PRODUCT_SEQ.NEXTVAL, 'f2.png', 'f2_over.png', '롱웨어 너리싱 파운데이션', 'LONGWEAR NOURISHING FOUNDATION', 67000, 15, 'F', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('F00' || PRODUCT_SEQ.NEXTVAL, 'f3.png', 'f3_over.png', '프로 너리싱 파운데이션', 'PRO NOURISHING FOUNDATION', 67000, 20, 'F', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('F00' || PRODUCT_SEQ.NEXTVAL, 'f4.png', 'f4_over.png', '밸런싱 플루이드 파운데이션', 'BALANCI FLUID FOUNDATION', 67000, 4, 'F', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('F00' || PRODUCT_SEQ.NEXTVAL, 'f5.png', 'f5_over.png', '로즈 톤업 멀티밤', 'LOSE TONE-UP MULTIBALM', 63000, 78, 'F', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('F00' || PRODUCT_SEQ.NEXTVAL, 'f6.png', 'f6_over.png', '픽스 플루이드 파운데이션', 'FIX FLUID FOUNDATION', 62000, 25, 'F', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('F00' || PRODUCT_SEQ.NEXTVAL, 'f7.png', 'f7_over.png', '퀵 피니쉬 쿠션', 'QUICK FINISH CUSHION', 55000, 23, 'F', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('F00' || PRODUCT_SEQ.NEXTVAL, 'f8.png', 'f8_over.png', '픽스 플루이드 파운데이션', 'FIX FLUID FOUNDATION', 62000, 100, 'F', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));

-- lip 제품 등록
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('L00' || PRODUCT_SEQ.NEXTVAL, 'l1.png', 'l1_over.png', '비바 글램 I', 'VIVA GLAM I', 33000, 10, 'L', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('L00' || PRODUCT_SEQ.NEXTVAL, 'l2.png', 'l2_over.png', '비바 글램 II', 'VIVA GLAM II', 33000, 15, 'L', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('L00' || PRODUCT_SEQ.NEXTVAL, 'l3.png', 'l3_over.png', '비바 글램 III', 'VIVA GLAM III', 33000, 20, 'L', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('L00' || PRODUCT_SEQ.NEXTVAL, 'l4.png', 'l4_over.png', '러시안 레드', '강렬한 레드', 34000, 4, 'L', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('L00' || PRODUCT_SEQ.NEXTVAL, 'l5.png', 'l5_over.png', '글로우 플레이 립 밤', '발렌타인 데이 컬렉션', 34000, 78, 'L', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('L00' || PRODUCT_SEQ.NEXTVAL, 'l6.png', 'l6_over.png', '로즈 투 디 오케이젼', '로지 핑크', 34000, 25, 'L', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('L00' || PRODUCT_SEQ.NEXTVAL, 'l7.png', 'l7_over.png', '댓 티클스', '딥 누드', 34000, 23, 'L', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
INSERT INTO TB_PRODUCT(PRODUCT_CODE, PRODUCT_IMAGE, PRODUCT_IMAGE2, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_UNIT_PRICE, PRODUCT_COUNT,  PRODUCT_CATEGORY_CD, PRODUCT_REG_DATE)
VALUES('L00' || PRODUCT_SEQ.NEXTVAL, 'l8.png', 'l8_over.png', '플로랄 코랄', '베리 핑크', 34000, 100, 'L', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));

commit;
