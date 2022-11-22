-- データを追加する
-- INSERT INTOでテーブルに行を追加する。
-- INTOに続けて追加先のテーブルを指定してカッコの中にデータを追加するカラムを指定する。
-- VALUESに続けて追加するデータを記述する。
INSERT INTO players(id, name, level, job_id) VALUES(11, "1号", 1 ,1);

-- データを追加して表示する
INSERT INTO players(id, name, level, job_id) VALUES(12, "2号", 1, 1);
SELECT * FROM players;

-- 一度に複数のデータを追加する
INSERT INTO players(id, name, level, job_id) 
VALUES 
(13, "3号", 1, 1),
(14, "4号", 1, 1);
SELECT * FROM players;

-- データを更新する
UPDATE players SET level = 10 WHERE id = 11;
SELECT * FROM players;

-- データを更新する。1増加
UPDATE players SET level = level + 1 WHERE id = 12;
SELECT * FROM players;

-- データを削除する
DELETE FROM players WHERE id = 13;
SELECT * FROM players;

-- データを削除する
DELETE FROM players WHERE id >= 11;
SELECT * FROM players;

-- データを結合して表示する（内部結合）
-- INNER JOINを使うと両方のテーブルに含まれる共通のデータだけが表示される
SELECT * FROM players INNER JOIN jobs ON jobs.id = players.job_id;

-- 外部結合
-- テーブルを結合して表示する（左結合）
-- LEFT JOINで左側のテーブル + 共通データのカラムを表示する
SELECT * FROM players LEFT JOIN jobs ON jobs.id = players.job_id;

-- テーブルを結合して表示する（右結合）
-- RIGHT JOINで右側のテーブル + 共通データのカラムを表示する
SELECT * FROM players RIGHT JOIN jobs ON jobs.id = players.job_id;