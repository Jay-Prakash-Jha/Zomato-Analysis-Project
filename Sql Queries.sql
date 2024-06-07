# KPI 4
SELECT Country, COUNT(RestaurantID) AS Number_Of_Restaurants FROM Zomato_main GROUP BY country;

SELECT City, COUNT(RestaurantID) AS Number_Of_Restaurants FROM Zomato_main GROUP BY city;


# Number of resturants in a price bucket.(KPI-4)


SELECT Price_Category,Country, COUNT(RestaurantID) as Number_of_Resturants
FROM zomato_main
GROUP BY Price_Category,Country
ORDER BY Number_of_Resturants DESC;

# Count Of Restaurants Based on Average Rating. (KPI-6)

SELECT Distinct AVG(Rating), COUNT(RestaurantID) AS Number_Of_Restaurants FROM Zomato_main GROUP BY Rating;

# Restaurants Opening by Year

SELECT year_opening, COUNT(RestaurantID) AS num_restaurants
FROM zomato_main
GROUP BY year_Opening
ORDER BY year_opening;

# Restaurants Opening by Month


SELECT Month_Opening, COUNT(RestaurantID) AS num_restaurants
FROM zomato_main
GROUP BY month_Opening
ORDER BY Month_opening;


# Restaurants Opening by Quarter

SELECT Quarter, COUNT(RestaurantID) AS num_restaurants
FROM zomato_main
GROUP BY Quarter
ORDER BY quarter;

# Percentage of restaurants based on having Onling delivery or not.
Select 
	concat(round(avg(case when Has_Online_delivery = 'No' then 1 else 0 end) *100,2),'%') as Has_No_Online_delivery, 
	concat(round(avg(case when Has_Online_delivery = 'Yes' then 1 else 0 end) *100,2),'%') as Has_Online_delivery
FROM zomato_main ;

# Percentage of Resturants based on having table Booking or Not.
Select 
	concat(round(avg(case when Has_Table_booking = 'No' then 1 else 0 end) *100,2),'%') as Has_No_Table_booking, 
	concat(round(avg(case when Has_Table_booking = 'Yes' then 1 else 0 end) *100,2),'%') as Has_Table_booking
FROM zomato_main ;


