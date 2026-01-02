-- SQL Advent Calendar - Day 18
-- Title: 12 Days of Data - Progress Tracking
-- Difficulty: hard
--
-- Question:
-- Over the 12 days of her data challenge, Data Dawn tracked her daily quiz scores across different subjects. Can you find each subject's first and last recorded score to see how much she improved?
--
-- Over the 12 days of her data challenge, Data Dawn tracked her daily quiz scores across different subjects. Can you find each subject's first and last recorded score to see how much she improved?
--

-- Table Schema:
-- Table: daily_quiz_scores
--   subject: VARCHAR
--   quiz_date: DATE
--   score: INTEGER
--

-- My Solution:

SELECT
    subject,
    MAX(CASE WHEN rn_first = 1 THEN score END) AS first_score,
    MAX(CASE WHEN rn_last = 1 THEN score END)  AS last_score
FROM (
    SELECT
        subject,
        quiz_date,
        score,
        ROW_NUMBER() OVER (PARTITION BY subject ORDER BY quiz_date) AS rn_first,
        ROW_NUMBER() OVER (PARTITION BY subject ORDER BY quiz_date DESC) AS rn_last
    FROM daily_quiz_scores
) t
GROUP BY subject;
