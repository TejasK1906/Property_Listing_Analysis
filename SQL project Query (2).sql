Create Database Project;
USE PROJECT;
select * from host_vancouver_df Union select * from host_toronto_df;
Select * from review_vancouver_df;
select * from review_toronto_df;
Select * from df_vancouver_availability Union Select * from df_toronto_availability;
select * from listing_vancouver_df Union select * from Listing_toronto_df;

select property_type from listing_toronto_df
group by property_type;

/*a. Analyze different metrics to draw the distinction between the different 
types of property along with their price listings(bucketize them within 3-4 categories basis your understanding)*/

--Basis of Avg_Acceptance_rate

Select*, Case When
Avg_Acceptance_rate is Null Then 'Worse'
When Avg_Acceptance_rate between 0 and 80 then 'Dull'
When Avg_Acceptance_rate between 81 and 90 then 'Average'
When Avg_Acceptance_rate between 91 and 95 then 'Good'
When Avg_Acceptance_rate between 96 and 100 then 'Excellent'
End as Rating
From (Select B.property_type , Round(Avg(A.host_acceptance_rate),2) As Avg_Acceptance_rate From (select * from host_vancouver_df Union select * from host_toronto_df) as A 
Inner Join (select * from listing_vancouver_df Union select * from Listing_toronto_df)as B
on A.host_id = B.host_id
Group By B.property_type)AA Order by Avg_Acceptance_rate Desc;

-----Basis of Price

Select * , Case 
When Avg_Price < 100 Then 'Low Cost'
When Avg_Price Between 100 and 150 Then 'Budget'
When Avg_Price Between 150 and 200 Then 'Premier'
When Avg_Price > 200 Then 'Luxury'
End as Price_Category
From
(Select B.property_type , Round(Avg(A.Price),2) As Avg_Price From (Select * from df_vancouver_availability Union Select * from df_toronto_availability) as A 
Inner Join (select * from listing_vancouver_df Union select * from Listing_toronto_df)as B
on A.id = B.id
Group By B.property_type)AA Order By Avg_Price Desc;

----- Basis oF accommodates

Select *, Case 
When Avg_Accommodates < 3 Then 'Small'
When Avg_Accommodates Between 3 and 4 Then 'Medium'
When Avg_Accommodates = 5 Then 'Large'
When Avg_Accommodates > 5 Then 'Extra Large'
End as Property_Space
From
(Select Property_type , Avg(Accommodates) As Avg_Accommodates From 
(select * from listing_vancouver_df Union select * from Listing_toronto_df)AA  Group By Property_Type)AB 
Order By Avg_Accommodates;


/* b. Study the trends of the different categories and provide insights on same */

---Host response time 
SELECT A.Property_type, COUNT(Case When host_response_time = 'within an hour' Then 1 End) AS Count_Within_a_hour, 
Count( Case When host_response_time = 'within a few hours' Then 1 End) As Count_Within_a_few_hours,
Count( Case When host_response_time = 'within a Day' Then 1 End) As Count_Within_a_day,
Count( Case When host_response_time = 'a few days or more 'Then 1 End) As Count_Within_a_few_hours
FROM (select * from listing_vancouver_df Union select * from Listing_toronto_df) as A Inner Join
(select * from host_vancouver_df Union select * from host_toronto_df) as B
On A.host_id= B.host_id
GROUP BY A.property_type
Order By Count_Within_a_hour Desc;

------>100
select property_type, COUNT(DISTINCT ID) As No_of_Id_100 
from listing_toronto_df
group by property_type
HAVING COUNT(DISTINCT ID) > 100
UNION 
select property_type, COUNT(DISTINCT ID) 
from listing_vancouver_df
group by property_type
HAVING COUNT(DISTINCT ID) > 100
ORDER BY COUNT(DISTINCT ID);

----Avg
Select Room_type, Round(Avg(review_scores_rating),2) As Avg_Rating From 
(select * from listing_vancouver_df Union select * from Listing_toronto_df)AB
Group By Room_type;

----Minimun and Max Nights

Select A.Property_type , Round(Avg(B.Minimum_nights),2) as Min_Nights_Avg , Round(Avg(B.Maximum_nights),2) As Max_Nights_Avg
From (select * from listing_vancouver_df Union select * from Listing_toronto_df) As A 
Inner Join (Select * from df_vancouver_availability Union Select * from df_toronto_availability) As B 
On A.Id = B.Id
Group By A.property_type;

----No of Listings With Instant Bookable

Select * from listing_vancouver_df;

Select Property_type ,Count(Id) As Total_Listing, Count(Case When Instant_Bookable = 1 Then 1 End) As Allowed_Instant_Bookings ,
Count(Case When Instant_Bookable = 0 Then 1 End) As Not_Allowed_Instant_Bookings
From (select * from listing_vancouver_df Union select * from Listing_toronto_df)AA
Group By Property_type;

/* c. Using the above analysis, identify top 2 crucial metrics 
which makes different property types along their listing price stand ahead of other categories */

--relation between avg accommodation and avg price of property
Select Property_type ,Round(Avg(price),2) As Avg_Price , Avg(Accommodates) as Avg_ACC From 
(select * from listing_vancouver_df Union select * from Listing_toronto_df)AB
Group BY Property_type
Order BY Avg_Price ;

/* d. Analyze how does the comments of reviewers vary for listings of distinct categories
(Extract words from the comments provided by the reviewers) */

With CTE1 as 
(Select A.property_type , Count(B.comments) As Beautiful_count From listing_vancouver_df as A Inner Join
review_vancouver_df as B
on A.id = B.listing_id
Where B.comments like '%Beautiful%'
Group By A.property_type),
CTE2 As
(Select A.property_type , Count(B.comments) As Great_count From listing_vancouver_df as A Inner Join
review_vancouver_df as B
on A.id = B.listing_id
Where B.comments like '%Great%'
Group By A.property_type),
CTE3 As
(Select A.property_type , Count(B.comments) As Nice_count From listing_vancouver_df as A Inner Join
review_vancouver_df as B
on A.id = B.listing_id
Where B.comments like '%Nice%'
Group By A.property_type),
CTE4 As
(Select A.property_type , Count(B.comments) As Wonderful_count From listing_vancouver_df as A Inner Join
review_vancouver_df as B
on A.id = B.listing_id
Where B.comments like '%Wonderful%'
Group By A.property_type),
CTE5 As
(Select A.property_type , Count(B.comments) As Bad_count From listing_vancouver_df as A Inner Join
review_vancouver_df as B
on A.id = B.listing_id
Where B.comments like '%Bad%'
Group By A.property_type),
CTE6 As
(Select A.property_type , Count(B.comments) As Cancel_count From listing_vancouver_df as A Inner Join
review_vancouver_df as B
on A.id = B.listing_id
Where B.comments like '%Cancel%'
Group By A.property_type)
Select A.property_type , Beautiful_Count , Great_count, Nice_count, Wonderful_count,Bad_count,Cancel_count From CTE1 as A 
Inner Join CTE2 as B On A.property_type = B.property_type 
Inner join CTE3 as C on B.property_type= C.property_type 
Inner join CTE4 as D On C.property_type= D.property_type 
Inner join CTE5 as E On D.property_type= E.property_type 
Inner join CTE6 as F On E.property_type= F.property_type 

/* e. Analyze if there is any correlation between property type and their availability across the months */

Select Property_Type ,Count(Case When Available = 1 Then 1 End) As Available, Count(Case When Available = 0 Then 1  End) As Not_Available
From
(Select A.Id, A.Name,A.Property_Type, B.Available From (select * from listing_vancouver_df Union select * from Listing_toronto_df) as A 
Inner Join (Select * from df_vancouver_availability Union Select * from df_toronto_availability) As B 
On A.Id = B.Id )AA
Group By Property_type;

Select room_type,Month(Date) as Month,Count(Case When Available = 1 Then 1 End) As Available , Count(Case When Available = 0 Then 1  End) As Not_available
From (Select * from df_vancouver_availability Union Select * from df_toronto_availability) as A Inner Join 
(select * from listing_vancouver_df Union select * from Listing_toronto_df) As B 
On A.Id= B.id
GRoup By room_type, Month(Date) 
Order by room_type ,Month(date),Not_available Desc;

/* f. Analyze what are the peak and off-peak time for the different categories of property type 
and their listings. Do we see some commonalities in the trend or is it dependent on the category*/

Select room_type,Month(Date) as Month,Count(Case When Available = 1 Then 1 End) As Available , Count(Case When Available = 0 Then 1  End) As Not_available
From (Select * from df_vancouver_availability Union Select * from df_toronto_availability) as A Inner Join 
(select * from listing_vancouver_df Union select * from Listing_toronto_df) As B 
On A.Id= B.id
GRoup By room_type, Month(Date) 
Order by room_type ,Month(date),Not_available Desc;

/* g. Using the above analysis, suggest what is the best performing category for the company */
-- Theory answer

/* h. Analyze the above trends for the two cities for which data has been provided and provide insights on comparison */

--avg_price
Select A.*, B.Avg_Price_Vancouver From
(Select A.property_type , Round(Avg(B.price),2) Avg_Price_Toronto From listing_toronto_df as A Inner Join df_toronto_availability as B
on A.id = B.id
Group By A.property_type) as A Inner Join
(Select A.property_type , Round(Avg(B.price),2) Avg_Price_Vancouver From listing_vancouver_df as A Inner Join df_vancouver_availability as B
on A.id = B.id
Group By A.property_type) As B 
On A.property_type = B.property_type;

--accommodates
Select A.*, B.Avg_Acc_Vancouver From
(Select property_type , Round(Avg(Accommodates),2) Avg_Acc_Toronto From listing_toronto_df 
Group By property_type) as A Inner Join
(Select property_type , Round(Avg(accommodates),2) Avg_Acc_Vancouver From listing_vancouver_df 
Group By property_type)As B 
On A.property_type = B.property_type;

--review_scores_cleanliness
Select A.*, B.Avg_Clean_Vancouver From
(Select property_type , Round(Avg(review_scores_cleanliness),2) Avg_Clean_Toronto From listing_toronto_df 
Group By property_type) as A Inner Join
(Select property_type , Round(Avg(review_scores_cleanliness),2) Avg_Clean_Vancouver From listing_vancouver_df 
Group By property_type)As B 
On A.property_type = B.property_type
Where Avg_Clean_Toronto is Not Null
and Avg_Clean_Vancouver is Not Null;





SELECT * FROM listing_toronto_df;
select property_type, COUNT(DISTINCT ID) 
from listing_toronto_df
group by property_type
HAVING COUNT(DISTINCT ID) > 100
UNION 
select property_type, COUNT(DISTINCT ID) 
from listing_vancouver_df
group by property_type
HAVING COUNT(DISTINCT ID) > 100
ORDER BY COUNT(DISTINCT ID);


SELECT A.Property_type, COUNT(Case When host_response_time = 'within an hour' Then 1 End) AS Count_Within_a_hour, 
Count( Case When host_response_time = 'within a few hours' Then 1 End) As Count_Within_a_few_hours,
Count( Case When host_response_time = 'within a Day' Then 1 End) As Count_Within_a_day,
Count( Case When host_response_time = 'a few days or more 'Then 1 End) As Count_Within_a_few_hours
FROM (select * from listing_vancouver_df Union select * from Listing_toronto_df) as A Inner Join
(select * from host_vancouver_df Union select * from host_toronto_df) as B
On A.host_id= B.host_id
GROUP BY A.property_type
Order By Count_Within_a_hour Desc;

-----------------------------------------------------------------------

Select Room_Type , Avg(price) As Avg_Price From (select * from listing_vancouver_df Union select * from Listing_toronto_df)A
Group By room_type
order By Avg(price);


SELECT A.room_type, COUNT(Case When host_response_time = 'within an hour' Then 1 End) AS Count_Within_a_hour, 
Count( Case When host_response_time = 'within a few hours' Then 1 End) As Count_Within_a_few_hours,
Count( Case When host_response_time = 'within a Day' Then 1 End) As Count_Within_a_day,
Count( Case When host_response_time = 'a few days or more 'Then 1 End) As Count_Within_a_few_hours
FROM (select * from listing_vancouver_df Union select * from Listing_toronto_df) as A Inner Join
(select * from host_vancouver_df Union select * from host_toronto_df) as B
On A.host_id= B.host_id
GROUP BY A.room_type
Order By Count_Within_a_hour Desc;

Select A.room_type , Round(Avg(B.Minimum_nights),2) as Min_Nights_Avg , Round(Avg(B.Maximum_nights),2) As Max_Nights_Avg
From (select * from listing_vancouver_df Union select * from Listing_toronto_df) As A 
inner Join (Select * from df_vancouver_availability Union Select * from df_toronto_availability) As B 
On A.Id = B.Id
Group By A.room_type;

Select room_type ,Count(Id) As Total_Listing, Count(Case When Instant_Bookable = 1 Then 1 End) As Allowed_Instant_Bookings ,
Count(Case When Instant_Bookable = 0 Then 1 End) As Not_Allowed_Instant_Bookings
From (select * from listing_vancouver_df Union select * from Listing_toronto_df)AA
Group By room_type;

With CTE1 as 
(Select A.room_type , Count(B.comments) As Beautiful_count From listing_vancouver_df as A Inner Join
review_vancouver_df as B
on A.id = B.listing_id
Where B.comments like '%Beautiful%'
Group By A.room_type),
CTE2 As
(Select A.room_type , Count(B.comments) As Great_count From listing_vancouver_df as A Inner Join
review_vancouver_df as B
on A.id = B.listing_id
Where B.comments like '%Great%'
Group By A.room_type),
CTE3 As
(Select A.room_type , Count(B.comments) As Nice_count From listing_vancouver_df as A Inner Join
review_vancouver_df as B
on A.id = B.listing_id
Where B.comments like '%Nice%'
Group By A.room_type),
CTE4 As
(Select A.room_type , Count(B.comments) As Wonderful_count From listing_vancouver_df as A Inner Join
review_vancouver_df as B
on A.id = B.listing_id
Where B.comments like '%Wonderful%'
Group By A.room_type),
CTE5 As
(Select A.room_type , Count(B.comments) As Bad_count From listing_vancouver_df as A Inner Join
review_vancouver_df as B
on A.id = B.listing_id
Where B.comments like '%Bad%'
Group By A.room_type),
CTE6 As
(Select A.room_type , Count(B.comments) As Cancel_count From listing_vancouver_df as A Inner Join
review_vancouver_df as B
on A.id = B.listing_id
Where B.comments like '%Cancel%'
Group By A.room_type)
Select A.room_type , Beautiful_Count , Great_count, Nice_count, Wonderful_count,Bad_count,Cancel_count From CTE1 as A 
Inner Join CTE2 as B On A.room_type = B.room_type 
Inner join CTE3 as C on B.room_type= C.room_type 
Inner join CTE4 as D On C.room_type= D.room_type 
Inner join CTE5 as E On D.room_type= E.room_type 
Inner join CTE6 as F On E.room_type= F.room_type 
