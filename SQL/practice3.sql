-- カラム名を別名で表示する（AS)
SELECT userID AS "アクティブユーザー"
FROM users;

-- アクティブユーザー数を求める
SELECT COUNT(*) AS アクティブユーザー数を求める
FROM users
WHERE deleted_at IS NULL;

-- 重複した行を除いて表示する（DISTINCT)
SELECT DISTINCT userID AS アクティブユーザー
FROM users

-- 空のカラムの行を表示する（IS NULL）
SELECT userID AS アクティブユーザー
FROM users
WHERE deleted_at IS NULL;

-- userIDが30番以降のアクティブユーザーを表示する
SELECT * FROM users
WHERE userID >= 30 AND deleted_at IS NULL;

-- 	東京都のアクティブユーザーを表示
SELECT * FROM users INNER JOIN area ON area.areaID = users.areaID
WHERE deleted_at IS NULL AND area.areaID = 13
ORDER BY userID;

