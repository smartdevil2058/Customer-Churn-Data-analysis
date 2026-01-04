use `churn analysis`;
select * from `final bigml`;



-- Q1: How does churn rate vary by number of customer service calls?

SELECT
    `Customer service calls`,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate_pct
FROM `final bigml`
GROUP BY `Customer service calls`
ORDER BY `Customer service calls`;

-- What is the average total usage (minutes) for churned vs retained customers?

SELECT
    Churn,
    ROUND(
        AVG(
            `Total day minutes` +
            `Total eve minutes` +
            `Total night minutes` +
            `Total intl minutes`
        ),
        2
    ) AS avg_total_minutes
FROM `final bigml`
GROUP BY Churn;

-- How many churned customers have high customer service interaction?

SELECT
    COUNT(*) AS high_service_call_churners
FROM `final bigml`
WHERE
    Churn = 1
    AND `Customer service calls` >= 4;

-- Q6: Churn rate by voicemail plan

SELECT
    `Voice mail plan`,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate_pct
FROM `final bigml`
GROUP BY `Voice mail plan`;

-- Q7: Do churned customers contact support more often?

SELECT
    Churn,
    ROUND(AVG(`Customer service calls`), 2) AS avg_service_calls
FROM `final bigml`
GROUP BY Churn;


-- Q8: Top 10 churned customers by total charges

SELECT
    `State`,
    ROUND(
        `Total day charge` +
        `Total eve charge` +
        `Total night charge` +
        `Total intl charge`,
        2
    ) AS total_charge
FROM `final bigml`
WHERE Churn = 1
ORDER BY total_charge DESC
LIMIT 10;

