-- select *
-- from bbcbasicv
-- where idx between 270 and 300;

-- select left_idx, count(*) as numrecs
-- from matched_indices
-- group by left_idx
-- having count(*) > 1
-- order by left_idx;

-- select right_idx, count(*) as numrecs
-- from matched_indices
-- group by right_idx
-- having count(*) > 1
-- order by right_idx;

SELECT address, COUNT(*)
FROM bbcbasicvez_lst
GROUP BY address
HAVING COUNT(*) > 1;
