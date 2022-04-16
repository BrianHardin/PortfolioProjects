--The highest potential (86 and up) players under 25
Select name, Age, Nationality, Overall, Potential, Club, [Preferred Foot], Position, Height, Weight
FROM Fifa19PlayerData
WHERE age < 25 AND Potential > 86
ORDER BY Potential DESC;

--Hidden Gems Around the World
Select name, Age, Nationality, Overall, Potential, Club, [Preferred Foot], Position, Height, Weight
FROM Fifa19PlayerData
WHERE overall < 75 AND Potential > 85
ORDER BY Potential DESC;

--Classifying Players Future Prospect Status
Select name, Age, Nationality, Overall, Potential, Club, [Preferred Foot], Position, Height, Weight, "Player Status" =
	CASE
		WHEN Potential > 90 THEN 'Has Potential To Be Special'
		WHEN Potential > 85 THEN 'An Exciting Prospect'
		WHEN Potential > 79 THEN 'Showing Great Potential'
		ELSE 'Average'
	END
FROM Fifa19PlayerData
WHERE Overall < 84;

--Average Rating and Potential For Every Country
Select Nationality, ROUND(AVG(Overall),0) as "Average_Rating", ROUND(AVG(Potential),0) as "Average_Potential"
FROM Fifa19PlayerData
GROUP BY Nationality;

--Tallest Players Per Position
SELECT name, Age, Nationality, Overall, Potential, Club, [Preferred Foot], Fifa19PlayerData.Position, Fifa19PlayerData.Height
FROM Fifa19PlayerData
INNER JOIN (SELECT Position, MAX(Height) as "Height"
		FROM Fifa19PlayerData
		GROUP BY Position) a
ON Fifa19PlayerData.Position = a.Position AND Fifa19PlayerData.Height = a.Height
ORDER BY Fifa19PlayerData.Position;




