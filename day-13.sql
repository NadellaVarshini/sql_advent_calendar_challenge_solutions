-- SQL Advent Calendar - Day 13
-- Title: Naughty or Nice Score Extremes
-- Difficulty: easy
--
-- Question:
-- Santa's audit team is reviewing this year's behavior scores to find the extremes — write a query to return the lowest and highest scores recorded on the Naughty or Nice list.
--
-- Santa's audit team is reviewing this year's behavior scores to find the extremes — write a query to return the lowest and highest scores recorded on the Naughty or Nice list.
--

-- Table Schema:
-- Table: behavior_scores
--   record_id: INTEGER
--   child_name: VARCHAR
--   behavior_score: INTEGER
--

-- My Solution:

select max(behavior_score) as highest_score,
min(behavior_score) as lowest_score
from behavior_scores
ORDER BY behavior_score ;
