-- 멤버 세팅 (10명)
INSERT INTO member (name, email, password) VALUES ('브라운', 'brown@test.com', 'password');
INSERT INTO member (name, email, password) VALUES ('코니코니', 'coni@test.com', 'password');
INSERT INTO member (name, email, password) VALUES ('제임스', 'james@test.com', 'password');
INSERT INTO member (name, email, password) VALUES ('샐리야', 'sally@test.com', 'password');
INSERT INTO member (name, email, password) VALUES ('손흥민', 'son@test.com', 'password');
INSERT INTO member (name, email, password) VALUES ('아이유', 'iu@test.com', 'password');
INSERT INTO member (name, email, password) VALUES ('유재석', 'yoo@test.com', 'password');
INSERT INTO member (name, email, password) VALUES ('지드래곤', 'gd@test.com', 'password');
INSERT INTO member (name, email, password) VALUES ('블랙핑크', 'bp@test.com', 'password');
INSERT INTO member (name, email, password) VALUES ('에스파', 'aespa@test.com', 'password');

-- 테마 20개 세팅
INSERT INTO theme (name, description, thumbnail) VALUES ('공포의 숲', '으스스한 숲 속에서 단서를 찾아 탈출하세요.', 'https://images.unsplash.com/photo-1509248961158-e54f6934749c?auto=format&fit=crop&w=500&q=80');
INSERT INTO theme (name, description, thumbnail) VALUES ('비밀의 연구실', '미치광이 과학자의 실험실에서 벗어나야 합니다.', 'https://images.unsplash.com/photo-1532094349884-543bc11b234d?auto=format&fit=crop&w=500&q=80');
INSERT INTO theme (name, description, thumbnail) VALUES ('우주 정거장', '산소가 고갈되기 60분 전, 무사히 귀환하세요.', 'https://images.unsplash.com/photo-1446776811953-b23d57bd21aa?auto=format&fit=crop&w=500&q=80');
INSERT INTO theme (name, description, thumbnail) VALUES ('해적선의 보물', '저주받은 해적선에서 보물을 찾고 탈출하라!', 'https://images.unsplash.com/photo-1534447677768-be436bb09401?auto=format&fit=crop&w=500&q=80');
INSERT INTO theme (name, description, thumbnail) VALUES ('폐병원 병동', '자정의 병원, 누군가 당신을 지켜보고 있다.', 'https://images.unsplash.com/photo-1519494026892-80bbd2d6fd0d?auto=format&fit=crop&w=500&q=80');
INSERT INTO theme (name, description, thumbnail) VALUES ('고대 파라오의 무덤', '수천 년간 닫혀 있던 피라미드의 비밀을 풀어라.', 'https://picsum.photos/seed/pharaoh/500/300');
INSERT INTO theme (name, description, thumbnail) VALUES ('마법학교의 비밀', '지팡이를 잃어버린 마법사, 방을 탈출할 수 있을까?', 'https://images.unsplash.com/photo-1618666012174-83b441c0bc76?auto=format&fit=crop&w=500&q=80');
INSERT INTO theme (name, description, thumbnail) VALUES ('탈옥 1945', '사형 집행까지 단 한 시간, 감옥을 벗어나라!', 'https://picsum.photos/seed/prison/500/300');
INSERT INTO theme (name, description, thumbnail) VALUES ('버려진 저택', '매일 밤 자정, 피아노 소리가 들려온다.', 'https://images.unsplash.com/photo-1505691938895-1758d7feb511?auto=format&fit=crop&w=500&q=80');
INSERT INTO theme (name, description, thumbnail) VALUES ('시간 여행자의 방', '타임머신이 고장났다! 원래 시간대로 돌아가야 한다.', 'https://images.unsplash.com/photo-1501139083538-0139583c060f?auto=format&fit=crop&w=500&q=80');
INSERT INTO theme (name, description, thumbnail) VALUES ('심해 기지 알파', '수심 3000m, 수압으로 기지가 붕괴되기 직전이다.', 'https://images.unsplash.com/photo-1582967788606-a171c1080cb0?auto=format&fit=crop&w=500&q=80');
INSERT INTO theme (name, description, thumbnail) VALUES ('좀비 아포칼립스', '도시는 이미 감염되었다. 백신을 찾아라.', 'https://picsum.photos/seed/water/500/300');
INSERT INTO theme (name, description, thumbnail) VALUES ('인공지능 반란', '슈퍼컴퓨터가 시설을 장악했다. 전원을 차단하라.', 'https://images.unsplash.com/photo-1518770660439-4636190af475?auto=format&fit=crop&w=500&q=80');
INSERT INTO theme (name, description, thumbnail) VALUES ('다빈치 코드', '천재 화가가 숨겨둔 암호를 해독해야 한다.', 'https://picsum.photos/seed/davinci/500/300');
INSERT INTO theme (name, description, thumbnail) VALUES ('요괴 마을', '여우비가 내리는 밤, 요괴들의 연회장에서 도망쳐라.', 'https://picsum.photos/seed/monster/500/300');
INSERT INTO theme (name, description, thumbnail) VALUES ('사막의 신기루', '끝없는 모래사막, 오아시스로 향하는 지도를 찾아라.', 'https://images.unsplash.com/photo-1509316975850-ff9c5deb0cd9?auto=format&fit=crop&w=500&q=80');
INSERT INTO theme (name, description, thumbnail) VALUES ('은행 털이작전', '최고의 금고털이범이 되어 레이저 망을 뚫어라.', 'https://picsum.photos/seed/bank/500/300');
INSERT INTO theme (name, description, thumbnail) VALUES ('인셉션', '꿈 속의 꿈, 킥이 오기 전에 깨어나라.', 'https://images.unsplash.com/photo-1534447677768-be436bb09401?auto=format&fit=crop&w=500&q=80');
INSERT INTO theme (name, description, thumbnail) VALUES ('서부의 결투', '보안관이 자리를 비운 사이, 갱단의 돈을 훔쳐라.', 'https://picsum.photos/seed/fight/500/300');
INSERT INTO theme (name, description, thumbnail) VALUES ('이상한 나라의 앨리스', '시계토끼를 따라온 기묘한 세계, 여왕의 눈을 피하라.', 'https://picsum.photos/seed/alice/500/300');

-- 예약 시간 세팅 (10개)
INSERT INTO reservation_time (start_at) VALUES ('10:00');
INSERT INTO reservation_time (start_at) VALUES ('11:00');
INSERT INTO reservation_time (start_at) VALUES ('12:00');
INSERT INTO reservation_time (start_at) VALUES ('13:00');
INSERT INTO reservation_time (start_at) VALUES ('14:00');
INSERT INTO reservation_time (start_at) VALUES ('15:00');
INSERT INTO reservation_time (start_at) VALUES ('16:00');
INSERT INTO reservation_time (start_at) VALUES ('17:00');
INSERT INTO reservation_time (start_at) VALUES ('18:00');
INSERT INTO reservation_time (start_at) VALUES ('19:00');

-- 1등 (1번 테마) : 10회
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (1, FORMATDATETIME(DATEADD('DAY', -2, CURRENT_DATE()), 'yyyy-MM-dd'), 1, 1);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (1, FORMATDATETIME(DATEADD('DAY', -3, CURRENT_DATE()), 'yyyy-MM-dd'), 2, 1);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (2, FORMATDATETIME(DATEADD('DAY', -4, CURRENT_DATE()), 'yyyy-MM-dd'), 3, 1);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (3, FORMATDATETIME(DATEADD('DAY', -5, CURRENT_DATE()), 'yyyy-MM-dd'), 4, 1);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (4, FORMATDATETIME(DATEADD('DAY', -6, CURRENT_DATE()), 'yyyy-MM-dd'), 5, 1);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (5, FORMATDATETIME(DATEADD('DAY', -7, CURRENT_DATE()), 'yyyy-MM-dd'), 6, 1);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (6, FORMATDATETIME(DATEADD('DAY', -2, CURRENT_DATE()), 'yyyy-MM-dd'), 7, 1);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (7, FORMATDATETIME(DATEADD('DAY', -3, CURRENT_DATE()), 'yyyy-MM-dd'), 8, 1);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (8, FORMATDATETIME(DATEADD('DAY', -4, CURRENT_DATE()), 'yyyy-MM-dd'), 9, 1);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (9, FORMATDATETIME(DATEADD('DAY', -5, CURRENT_DATE()), 'yyyy-MM-dd'), 10, 1);

-- 2등 (2번 테마) : 9회
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (4, FORMATDATETIME(DATEADD('DAY', -2, CURRENT_DATE()), 'yyyy-MM-dd'), 1, 2);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (5, FORMATDATETIME(DATEADD('DAY', -3, CURRENT_DATE()), 'yyyy-MM-dd'), 2, 2);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (6, FORMATDATETIME(DATEADD('DAY', -4, CURRENT_DATE()), 'yyyy-MM-dd'), 3, 2);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (7, FORMATDATETIME(DATEADD('DAY', -5, CURRENT_DATE()), 'yyyy-MM-dd'), 4, 2);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (8, FORMATDATETIME(DATEADD('DAY', -6, CURRENT_DATE()), 'yyyy-MM-dd'), 5, 2);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (9, FORMATDATETIME(DATEADD('DAY', -7, CURRENT_DATE()), 'yyyy-MM-dd'), 6, 2);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (10, FORMATDATETIME(DATEADD('DAY', -1, CURRENT_DATE()), 'yyyy-MM-dd'), 7, 2);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (1, FORMATDATETIME(DATEADD('DAY', -2, CURRENT_DATE()), 'yyyy-MM-dd'), 8, 2);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (2, FORMATDATETIME(DATEADD('DAY', -3, CURRENT_DATE()), 'yyyy-MM-dd'), 9, 2);

-- 3등 (3번 테마) : 8회
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (5, FORMATDATETIME(DATEADD('DAY', -2, CURRENT_DATE()), 'yyyy-MM-dd'), 1, 3);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (5, FORMATDATETIME(DATEADD('DAY', -3, CURRENT_DATE()), 'yyyy-MM-dd'), 2, 3);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (5, FORMATDATETIME(DATEADD('DAY', -4, CURRENT_DATE()), 'yyyy-MM-dd'), 3, 3);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (5, FORMATDATETIME(DATEADD('DAY', -5, CURRENT_DATE()), 'yyyy-MM-dd'), 4, 3);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (5, FORMATDATETIME(DATEADD('DAY', -6, CURRENT_DATE()), 'yyyy-MM-dd'), 5, 3);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (5, FORMATDATETIME(DATEADD('DAY', -7, CURRENT_DATE()), 'yyyy-MM-dd'), 6, 3);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (5, FORMATDATETIME(DATEADD('DAY', -1, CURRENT_DATE()), 'yyyy-MM-dd'), 7, 3);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (5, FORMATDATETIME(DATEADD('DAY', -2, CURRENT_DATE()), 'yyyy-MM-dd'), 8, 3);

-- 4등 (4번 테마) : 7회
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (6, FORMATDATETIME(DATEADD('DAY', -2, CURRENT_DATE()), 'yyyy-MM-dd'), 1, 4);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (6, FORMATDATETIME(DATEADD('DAY', -3, CURRENT_DATE()), 'yyyy-MM-dd'), 2, 4);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (6, FORMATDATETIME(DATEADD('DAY', -4, CURRENT_DATE()), 'yyyy-MM-dd'), 3, 4);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (6, FORMATDATETIME(DATEADD('DAY', -5, CURRENT_DATE()), 'yyyy-MM-dd'), 4, 4);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (6, FORMATDATETIME(DATEADD('DAY', -6, CURRENT_DATE()), 'yyyy-MM-dd'), 5, 4);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (6, FORMATDATETIME(DATEADD('DAY', -7, CURRENT_DATE()), 'yyyy-MM-dd'), 6, 4);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (6, FORMATDATETIME(DATEADD('DAY', -1, CURRENT_DATE()), 'yyyy-MM-dd'), 7, 4);

-- 5등 (5번 테마) : 6회
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (7, FORMATDATETIME(DATEADD('DAY', -2, CURRENT_DATE()), 'yyyy-MM-dd'), 1, 5);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (7, FORMATDATETIME(DATEADD('DAY', -3, CURRENT_DATE()), 'yyyy-MM-dd'), 2, 5);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (7, FORMATDATETIME(DATEADD('DAY', -4, CURRENT_DATE()), 'yyyy-MM-dd'), 3, 5);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (7, FORMATDATETIME(DATEADD('DAY', -5, CURRENT_DATE()), 'yyyy-MM-dd'), 4, 5);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (7, FORMATDATETIME(DATEADD('DAY', -6, CURRENT_DATE()), 'yyyy-MM-dd'), 5, 5);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (7, FORMATDATETIME(DATEADD('DAY', -7, CURRENT_DATE()), 'yyyy-MM-dd'), 6, 5);

-- 6~10등 생략 (간소화)

-- 미래 예약 데이터
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (1, FORMATDATETIME(DATEADD('DAY', 2, CURRENT_DATE()), 'yyyy-MM-dd'), 1, 1);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (2, FORMATDATETIME(DATEADD('DAY', 3, CURRENT_DATE()), 'yyyy-MM-dd'), 2, 1);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (3, FORMATDATETIME(DATEADD('DAY', 4, CURRENT_DATE()), 'yyyy-MM-dd'), 3, 1);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (4, FORMATDATETIME(DATEADD('DAY', 2, CURRENT_DATE()), 'yyyy-MM-dd'), 4, 2);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (5, FORMATDATETIME(DATEADD('DAY', 3, CURRENT_DATE()), 'yyyy-MM-dd'), 5, 2);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (6, FORMATDATETIME(DATEADD('DAY', 2, CURRENT_DATE()), 'yyyy-MM-dd'), 6, 3);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (7, FORMATDATETIME(DATEADD('DAY', 3, CURRENT_DATE()), 'yyyy-MM-dd'), 7, 4);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (8, FORMATDATETIME(DATEADD('DAY', 2, CURRENT_DATE()), 'yyyy-MM-dd'), 8, 5);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (9, FORMATDATETIME(DATEADD('DAY', 13, CURRENT_DATE()), 'yyyy-MM-dd'), 1, 6);
INSERT INTO reservation (member_id, date, time_id, theme_id) VALUES (10, FORMATDATETIME(DATEADD('DAY', 14, CURRENT_DATE()), 'yyyy-MM-dd'), 2, 7);
