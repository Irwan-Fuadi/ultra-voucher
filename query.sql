SELECT
	u.id,
	u.NAME,
CASE
		
		WHEN u.NAME = "Arka" THEN
		u.NAME ELSE us.NAME 
	END AS parent_name 
FROM
	users u
	LEFT JOIN ( SELECT id, NAME FROM users ) us ON us.id = u.parent_id;