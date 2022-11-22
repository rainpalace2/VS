-- 全てのデータを取り出す
-- *は全てのカラムのデータを取り出すという意味
SELECT * FROM players;

-- 一部のカラムだけ取得
-- job_nameとvitalityの2つのカラムを順に表示
SELECT job_name, vitality FROM jobs;

-- 一部の行だけ取得
-- job_nameとvitalityが5以上のvitalityの2つのカラムを順に表示
SELECT job_name, vitality FROM jobs WHERE vitality >= 5;

-- 複数の条件を組み合わせる
-- vitalityが5以上でluckが4以下のデータを取得
SELECT job_name, vitality, luck FROM jobs WHERE vitality >= 5 AND luck <= 4;

-- データ件数を表示
-- jobsテーブルのデータの件数を取得
SELECT COUNT(*) FROM jobs;

-- 条件に合ったデータの件数を表示
-- jobsテーブルからjob_idが6のデータの件数を取得
SELECT COUNT(*) FROM jobs WHERE job_id = 6;

-- データを並び替えて取得する
-- jobsテーブルのvitalityの小さい順で表示
SELECT * FROM jobs ORDER BY vitality;
-- レベルの低い方から順に
SELECT * FROM players ORDER BY level;
-- レベルの高い方から順に
SELECT + FROM players ORDER BY level DESC;

--上位3件だけ表示
SELECT * FROM players ORDER BY level DESC LIMIT 5;

-- レベルごとに件数を集計して表示
SELECT level, COUNT(*) FROM players GROUP BY level;

-- 職業ごとの人数を集計
-- GROUP BYで集計の基準となるカラムを指定して（job_idカラムを基準に並び替えて）
-- グループ（番号）ごとにカウントして表示している
SELECT job_id, COUNT(*) FROM players GROUP BY job_id;