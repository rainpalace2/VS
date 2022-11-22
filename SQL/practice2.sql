-- jobsテーブルのjobIDをusersテーブルのjobIDと関連付ける
INNER JOIN jobs ON jobs.jobID = users.jobID

-- 結合したテーブルを操作する
-- playersテーブルとjobsテーブルが結合されて表示される
SELECT * FROM players INNER JOIN jobs ON jobs.id = players.job_id;

-- 結合したテーブルで、指定したカラムだけ表示
-- playersテーブルとjobsテーブルが結合されて、playersテーブルのname,level、jobsテーブルのvitalityのカラムが表示される
SELECT * name, level, vitality FROM players INNER JOIN jobs ON jobs.id = players.job_id;

-- 結合したテーブルで、条件に合った行だけ表示
-- playersテーブルとjobsテーブルが結合されて、playersテーブルのname,level、jobsテーブルのvitalityが5以上のカラムが表示される
SELECT name, level ,strength FROM players INNER JOIN jobs ON jobs.id = players.job_id WHERE strength >= 5;

-- 職業ごとに人数を集計する
SELECT job_id, job_name, COUNT(*) FROM players INNER JOIN jobs ON jobs.id = players.job_id GROUP BY job_id;

-- 日次月次のアクセス数を求める
-- (DATE関数：年月と日付）
SELECT DATE(startTime), logID FROM eventlog;

-- 日時アクセス数の基本形
SELECT DATE(startTime), COUNT(logID)
FROM eventlog
GROUP BY DATE(startTime);

-- 4月以降の日時アクセス数
SELECT DATE(startTime), COUNT(logID)
FROM eventlog
WHERE DATE(startTime) >= '2015-04-01'
GROUP BY DATE(startTime);

-- 特定の範囲の日時アクセス数の基本形
-- 4月の日次アクセス数
-- BETWEENの後に開始日付、終了日付
SELECT DATE(startTime), COUNT(logID)
FROM eventlog
WHERE DATE(startTime) BETWEEN '2015-04-01' AND '2015-04-30'
GROUP BY DATE(startTime);

-- 月次アクセス数の基本形
SELECT DATE_FORMAT(startTime, '%Y-%m'), COUNT(logID)
FROM eventlog
GROUP BY DATE_FORMAT(startTime, '%Y-%m');


