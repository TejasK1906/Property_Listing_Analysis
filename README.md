# 
# <img src="https://user-images.githubusercontent.com/108053296/185731493-565fc7cd-50de-4fba-af77-7eec53f6e596.png" width="48" height="48" >  **Property Listing Analysis Through SQL**

This depository contains the analysis of property listings for a property rental company.The dataset provided has the information regarding the two cities in Canada which are Vancouver and Toronto. The through analysis of the property listings is being done for the data and the meaningful insights have been provided.Also extensive charts have been created to visualize the data in the best possible way and an interactive dashboard have been designed from it.


<br>
<br>
<p align="center"><a><img src="https://forthebadge.com/images/badges/built-with-love.svg"><img src="https://user-images.githubusercontent.com/106439762/181936448-9314e858-4251-46d6-b4d1-35a4c29e9c19.svg"><img src="https://user-images.githubusercontent.com/106439762/181936483-50475e86-bcf1-4169-994c-6476dc2e5edb.svg"></a></p>

##  <img src="https://user-images.githubusercontent.com/106439762/181935629-b3c47bd3-77fb-4431-a11c-ff8ba0942b63.gif" width="48" height="48"> **User's Manual**

| Files/Folder| Description |
| ------------- | ------------- |
| **Dataset Folder** | This folder contains the zip file of the dataset used.  |
| **Project PPT** | This folder contains the ppt presentation of the project.|
| **Project SQL File**  | This file provides you .sql format file of the project  |
| **Project Excel File**  | This file provides the excel wooksheet containing pivot tables and dashboard  |
<br>

<p align="center"><img src="https://user-images.githubusercontent.com/108053296/185732888-39f69567-127a-4a20-ad80-2381ab16739f.gif" width="400" ></p>

##  <img src=https://user-images.githubusercontent.com/106439762/178428775-03d67679-9aa4-4b08-91e9-6eb6ed8faf66.gif  width="48" height="48"> Analysis
   
    
    o       Analysed the working of the property rental company.    
    
    o	Explored the trends for the different property types listed on the platform.
     
    o	Studied the trends of the different property categories and provided the insights on the same.
  
    o	Analysed if there is any correlation between property type and their availability across months. 
    
    o	Explored the peak and off peak time for different property types and their listings.
    
    o	Analysed the acceptance rate, ratings, price, accomodates with respect to diffrent property types.

    o	Demonstrated the relationship between price of the property and number of accomodates.



##  <img src=https://user-images.githubusercontent.com/106439762/178803205-47a08ce7-2187-4f96-b301-a2b68690619a.gif width="48" height="48" > Prior Knowledge
![language-sql](https://user-images.githubusercontent.com/106439762/181936585-d44c5f7c-2a7b-4d35-ad8a-61dcbded1a5e.svg)
![microsoft-sql-server](https://user-images.githubusercontent.com/106439762/181936612-f96e085e-2d4b-4bc0-8347-1f3e0a894395.svg)
[![forthebadge](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxOTUuNDkiIGhlaWdodD0iMzUiIHZpZXdCb3g9IjAgMCAxOTUuNDkgMzUiPjxyZWN0IGNsYXNzPSJzdmdfX3JlY3QiIHg9IjAiIHk9IjAiIHdpZHRoPSIxMTcuMzQiIGhlaWdodD0iMzUiIGZpbGw9IiMxNEFCM0UiLz48cmVjdCBjbGFzcz0ic3ZnX19yZWN0IiB4PSIxMTUuMzQiIHk9IjAiIHdpZHRoPSI4MC4xNSIgaGVpZ2h0PSIzNSIgZmlsbD0iI0U0NkMxNyIvPjxwYXRoIGNsYXNzPSJzdmdfX3RleHQiIGQ9Ik0xNS42OSAyMkwxNC4yMiAyMkwxNC4yMiAxMy40N0wxNi4xNCAxMy40N0wxOC42MCAyMC4wMUwyMS4wNiAxMy40N0wyMi45NyAxMy40N0wyMi45NyAyMkwyMS40OSAyMkwyMS40OSAxOS4xOUwyMS42NCAxNS40M0wxOS4xMiAyMkwxOC4wNiAyMkwxNS41NSAxNS40M0wxNS42OSAxOS4xOUwxNS42OSAyMlpNMjkuMjggMjJMMjcuODAgMjJMMjcuODAgMTMuNDdMMjkuMjggMTMuNDdMMjkuMjggMjJaTTMzLjgyIDE4LjE5TDMzLjgyIDE4LjE5TDMzLjgyIDE3LjM5UTMzLjgyIDE2LjE5IDM0LjI0IDE1LjI3UTM0LjY3IDE0LjM1IDM1LjQ3IDEzLjg1UTM2LjI3IDEzLjM1IDM3LjMyIDEzLjM1TDM3LjMyIDEzLjM1UTM4LjczIDEzLjM1IDM5LjU5IDE0LjEyUTQwLjQ2IDE0Ljg5IDQwLjYwIDE2LjI5TDQwLjYwIDE2LjI5TDM5LjEyIDE2LjI5UTM5LjAxIDE1LjM3IDM4LjU4IDE0Ljk2UTM4LjE1IDE0LjU1IDM3LjMyIDE0LjU1TDM3LjMyIDE0LjU1UTM2LjM1IDE0LjU1IDM1Ljg0IDE1LjI2UTM1LjMyIDE1Ljk2IDM1LjMxIDE3LjMzTDM1LjMxIDE3LjMzTDM1LjMxIDE4LjA5UTM1LjMxIDE5LjQ3IDM1LjgwIDIwLjIwUTM2LjMwIDIwLjkyIDM3LjI1IDIwLjkyTDM3LjI1IDIwLjkyUTM4LjEyIDIwLjkyIDM4LjU2IDIwLjUzUTM5LjAwIDIwLjE0IDM5LjEyIDE5LjIyTDM5LjEyIDE5LjIyTDQwLjYwIDE5LjIyUTQwLjQ3IDIwLjU5IDM5LjU5IDIxLjM1UTM4LjcxIDIyLjEyIDM3LjI1IDIyLjEyTDM3LjI1IDIyLjEyUTM2LjIzIDIyLjEyIDM1LjQ1IDIxLjYzUTM0LjY4IDIxLjE1IDM0LjI2IDIwLjI2UTMzLjgzIDE5LjM3IDMzLjgyIDE4LjE5Wk00Ni4zOSAyMkw0NC45MSAyMkw0NC45MSAxMy40N0w0Ny45MSAxMy40N1E0OS4zOSAxMy40NyA1MC4xOSAxNC4xM1E1MC45OSAxNC43OSA1MC45OSAxNi4wNUw1MC45OSAxNi4wNVE1MC45OSAxNi45MCA1MC41OCAxNy40OFE1MC4xNiAxOC4wNiA0OS40MyAxOC4zN0w0OS40MyAxOC4zN0w1MS4zNCAyMS45Mkw1MS4zNCAyMkw0OS43NSAyMkw0OC4wNCAxOC43MUw0Ni4zOSAxOC43MUw0Ni4zOSAyMlpNNDYuMzkgMTQuNjZMNDYuMzkgMTcuNTJMNDcuOTEgMTcuNTJRNDguNjYgMTcuNTIgNDkuMDkgMTcuMTVRNDkuNTEgMTYuNzcgNDkuNTEgMTYuMTFMNDkuNTEgMTYuMTFRNDkuNTEgMTUuNDMgNDkuMTIgMTUuMDVRNDguNzMgMTQuNjggNDcuOTYgMTQuNjZMNDcuOTYgMTQuNjZMNDYuMzkgMTQuNjZaTTU1LjEyIDE4LjAwTDU1LjEyIDE4LjAwTDU1LjEyIDE3LjUyUTU1LjEyIDE2LjI4IDU1LjU2IDE1LjMyUTU2LjAwIDE0LjM3IDU2LjgxIDEzLjg2UTU3LjYxIDEzLjM1IDU4LjY1IDEzLjM1UTU5LjcwIDEzLjM1IDYwLjUwIDEzLjg1UTYxLjMxIDE0LjM1IDYxLjc1IDE1LjI5UTYyLjE5IDE2LjIzIDYyLjE5IDE3LjQ4TDYyLjE5IDE3LjQ4TDYyLjE5IDE3Ljk2UTYyLjE5IDE5LjIxIDYxLjc2IDIwLjE2UTYxLjMzIDIxLjEwIDYwLjUyIDIxLjYxUTU5LjcyIDIyLjEyIDU4LjY3IDIyLjEyTDU4LjY3IDIyLjEyUTU3LjYzIDIyLjEyIDU2LjgyIDIxLjYxUTU2LjAxIDIxLjEwIDU1LjU2IDIwLjE3UTU1LjEyIDE5LjIzIDU1LjEyIDE4LjAwWk01Ni42MCAxNy40Nkw1Ni42MCAxNy45NlE1Ni42MCAxOS4zNiA1Ny4xNSAyMC4xM1E1Ny42OSAyMC45MCA1OC42NyAyMC45MEw1OC42NyAyMC45MFE1OS42NSAyMC45MCA2MC4xOCAyMC4xNVE2MC43MSAxOS40MCA2MC43MSAxNy45Nkw2MC43MSAxNy45Nkw2MC43MSAxNy41MVE2MC43MSAxNi4wOSA2MC4xOCAxNS4zNFE1OS42NCAxNC41OCA1OC42NSAxNC41OEw1OC42NSAxNC41OFE1Ny42OSAxNC41OCA1Ny4xNSAxNS4zM1E1Ni42MSAxNi4wOSA1Ni42MCAxNy40Nkw1Ni42MCAxNy40NlpNNjYuMjIgMTkuNDJMNjYuMjIgMTkuNDJMNjcuNzEgMTkuNDJRNjcuNzEgMjAuMTUgNjguMTkgMjAuNTVRNjguNjcgMjAuOTUgNjkuNTYgMjAuOTVMNjkuNTYgMjAuOTVRNzAuMzQgMjAuOTUgNzAuNzMgMjAuNjNRNzEuMTIgMjAuMzIgNzEuMTIgMTkuODBMNzEuMTIgMTkuODBRNzEuMTIgMTkuMjQgNzAuNzIgMTguOTRRNzAuMzMgMTguNjMgNjkuMzAgMTguMzJRNjguMjYgMTguMDEgNjcuNjUgMTcuNjNMNjcuNjUgMTcuNjNRNjYuNDkgMTYuOTAgNjYuNDkgMTUuNzJMNjYuNDkgMTUuNzJRNjYuNDkgMTQuNjkgNjcuMzMgMTQuMDJRNjguMTcgMTMuMzUgNjkuNTEgMTMuMzVMNjkuNTEgMTMuMzVRNzAuNDAgMTMuMzUgNzEuMTAgMTMuNjhRNzEuODAgMTQuMDEgNzIuMjAgMTQuNjFRNzIuNTkgMTUuMjIgNzIuNTkgMTUuOTZMNzIuNTkgMTUuOTZMNzEuMTIgMTUuOTZRNzEuMTIgMTUuMjkgNzAuNzAgMTQuOTFRNzAuMjggMTQuNTQgNjkuNTAgMTQuNTRMNjkuNTAgMTQuNTRRNjguNzcgMTQuNTQgNjguMzcgMTQuODVRNjcuOTcgMTUuMTYgNjcuOTcgMTUuNzFMNjcuOTcgMTUuNzFRNjcuOTcgMTYuMTggNjguNDAgMTYuNTBRNjguODQgMTYuODEgNjkuODMgMTcuMTBRNzAuODMgMTcuNDAgNzEuNDMgMTcuNzhRNzIuMDQgMTguMTYgNzIuMzIgMTguNjVRNzIuNjAgMTkuMTMgNzIuNjAgMTkuNzlMNzIuNjAgMTkuNzlRNzIuNjAgMjAuODYgNzEuNzggMjEuNDlRNzAuOTcgMjIuMTIgNjkuNTYgMjIuMTJMNjkuNTYgMjIuMTJRNjguNjQgMjIuMTIgNjcuODYgMjEuNzdRNjcuMDkgMjEuNDMgNjYuNjYgMjAuODNRNjYuMjIgMjAuMjIgNjYuMjIgMTkuNDJaTTc2LjYyIDE4LjAwTDc2LjYyIDE4LjAwTDc2LjYyIDE3LjUyUTc2LjYyIDE2LjI4IDc3LjA2IDE1LjMyUTc3LjUwIDE0LjM3IDc4LjMxIDEzLjg2UTc5LjEyIDEzLjM1IDgwLjE2IDEzLjM1UTgxLjIwIDEzLjM1IDgyLjAxIDEzLjg1UTgyLjgxIDE0LjM1IDgzLjI1IDE1LjI5UTgzLjY5IDE2LjIzIDgzLjcwIDE3LjQ4TDgzLjcwIDE3LjQ4TDgzLjcwIDE3Ljk2UTgzLjcwIDE5LjIxIDgzLjI2IDIwLjE2UTgyLjgzIDIxLjEwIDgyLjAyIDIxLjYxUTgxLjIyIDIyLjEyIDgwLjE3IDIyLjEyTDgwLjE3IDIyLjEyUTc5LjEzIDIyLjEyIDc4LjMyIDIxLjYxUTc3LjUxIDIxLjEwIDc3LjA3IDIwLjE3UTc2LjYzIDE5LjIzIDc2LjYyIDE4LjAwWk03OC4xMCAxNy40Nkw3OC4xMCAxNy45NlE3OC4xMCAxOS4zNiA3OC42NSAyMC4xM1E3OS4yMCAyMC45MCA4MC4xNyAyMC45MEw4MC4xNyAyMC45MFE4MS4xNSAyMC45MCA4MS42OCAyMC4xNVE4Mi4yMiAxOS40MCA4Mi4yMiAxNy45Nkw4Mi4yMiAxNy45Nkw4Mi4yMiAxNy41MVE4Mi4yMiAxNi4wOSA4MS42OCAxNS4zNFE4MS4xNCAxNC41OCA4MC4xNiAxNC41OEw4MC4xNiAxNC41OFE3OS4yMCAxNC41OCA3OC42NiAxNS4zM1E3OC4xMSAxNi4wOSA3OC4xMCAxNy40Nkw3OC4xMCAxNy40NlpNODkuNjQgMjJMODguMTYgMjJMODguMTYgMTMuNDdMOTMuNTggMTMuNDdMOTMuNTggMTQuNjZMODkuNjQgMTQuNjZMODkuNjQgMTcuMjBMOTMuMDggMTcuMjBMOTMuMDggMTguMzhMODkuNjQgMTguMzhMODkuNjQgMjJaTTk5LjQyIDE0LjY2TDk2Ljc5IDE0LjY2TDk2Ljc5IDEzLjQ3TDEwMy41NiAxMy40N0wxMDMuNTYgMTQuNjZMMTAwLjg5IDE0LjY2TDEwMC44OSAyMkw5OS40MiAyMkw5OS40MiAxNC42NloiIGZpbGw9IiMwMDAwMDAiLz48cGF0aCBjbGFzcz0ic3ZnX190ZXh0IiBkPSJNMTM2LjI3IDIyTDEyOS41MyAyMkwxMjkuNTMgMTMuNjBMMTM2LjEyIDEzLjYwTDEzNi4xMiAxNS40NEwxMzEuODggMTUuNDRMMTMxLjg4IDE2Ljg1TDEzNS42MiAxNi44NUwxMzUuNjIgMTguNjNMMTMxLjg4IDE4LjYzTDEzMS44OCAyMC4xN0wxMzYuMjcgMjAuMTdMMTM2LjI3IDIyWk0xNDIuOTMgMjJMMTQwLjIyIDIyTDE0My4yNyAxNy43NUwxNDAuMzQgMTMuNjBMMTQzLjAyIDEzLjYwTDE0NC43MCAxNi4wMkwxNDYuMzYgMTMuNjBMMTQ4LjkzIDEzLjYwTDE0Ni4wMCAxNy42NkwxNDkuMTIgMjJMMTQ2LjM5IDIyTDE0NC42NSAxOS40MEwxNDIuOTMgMjJaTTE1Mi45OCAxNy44MEwxNTIuOTggMTcuODBRMTUyLjk4IDE2LjU0IDE1My41NyAxNS41NFExNTQuMTcgMTQuNTUgMTU1LjIyIDEzLjk5UTE1Ni4yOCAxMy40MyAxNTcuNTkgMTMuNDNMMTU3LjU5IDEzLjQzUTE1OC43NSAxMy40MyAxNTkuNjcgMTMuODRRMTYwLjU5IDE0LjI1IDE2MS4yMSAxNS4wMkwxNjEuMjEgMTUuMDJMMTU5LjcwIDE2LjM5UTE1OC44OCAxNS40MCAxNTcuNzIgMTUuNDBMMTU3LjcyIDE1LjQwUTE1Ny4wMyAxNS40MCAxNTYuNTAgMTUuNzBRMTU1Ljk3IDE2IDE1NS42NyAxNi41NFExNTUuMzcgMTcuMDkgMTU1LjM3IDE3LjgwTDE1NS4zNyAxNy44MFExNTUuMzcgMTguNTEgMTU1LjY3IDE5LjA1UTE1NS45NyAxOS42MCAxNTYuNTAgMTkuOTBRMTU3LjAzIDIwLjIwIDE1Ny43MiAyMC4yMEwxNTcuNzIgMjAuMjBRMTU4Ljg4IDIwLjIwIDE1OS43MCAxOS4yMkwxNTkuNzAgMTkuMjJMMTYxLjIxIDIwLjU4UTE2MC42MCAyMS4zNSAxNTkuNjcgMjEuNzZRMTU4Ljc1IDIyLjE3IDE1Ny41OSAyMi4xN0wxNTcuNTkgMjIuMTdRMTU2LjI4IDIyLjE3IDE1NS4yMiAyMS42MVExNTQuMTcgMjEuMDUgMTUzLjU3IDIwLjA1UTE1Mi45OCAxOS4wNiAxNTIuOTggMTcuODBaTTE3Mi40OSAyMkwxNjUuNzQgMjJMMTY1Ljc0IDEzLjYwTDE3Mi4zNCAxMy42MEwxNzIuMzQgMTUuNDRMMTY4LjEwIDE1LjQ0TDE2OC4xMCAxNi44NUwxNzEuODMgMTYuODVMMTcxLjgzIDE4LjYzTDE2OC4xMCAxOC42M0wxNjguMTAgMjAuMTdMMTcyLjQ5IDIwLjE3TDE3Mi40OSAyMlpNMTgzLjY4IDIyTDE3Ny4yOSAyMkwxNzcuMjkgMTMuNjBMMTc5LjY3IDEzLjYwTDE3OS42NyAyMC4xMUwxODMuNjggMjAuMTFMMTgzLjY4IDIyWiIgZmlsbD0iI0ZGRkZGRiIgeD0iMTI4LjM0Ii8+PC9zdmc+)](https://forthebadge.com)






<br>

## <img src="https://user-images.githubusercontent.com/106439762/181937125-2a4b22a3-f8a9-4226-bbd3-df972f9dbbc4.gif" width="48" height="48" > Quick Start

    1. Stated with creating the new database and importing all the flat files into the database.
    
    2. Did a bit of cleaning and changed the datatypes accordingly.
    
    3. Took help of different SQL clauses like group by, order by, having etc in order to manupalate the data and get the insights out.
    
    4. Also used some of the aggregate functions like sum, average , count along with case when statement and windows function to analysis the data.
    
    5. Took help of CTEs for writing the some of the complex queries for bucketing.
    
    6. Exported all the tables from SQL to excel and created required pivot tables to gain some insights.
    
    7. Created the pivot charts from the table for better understanding of the data.
    
    8. Also Designed a interactive dashboard from the charts for better visualisation.
    
            
   

<!-- <p align="center"><img src="https://user-images.githubusercontent.com/106439762/181937614-9d035731-d691-4307-bac7-434873673931.png" width="600" height="470"></p> -->

   


## <img src="https://www.getcloudapp.com/wp-content/uploads/2021/03/5aebb952e4867ce13f4d308f_laptop_gif_trans.gif" width="70" height="48"/> Screenshots

<p align="center"><a><img src="https://user-images.githubusercontent.com/106439762/182037005-e30516c1-390c-4c21-a2b6-0f8c2865eed3.gif"</a></p>


<br>

## <img src="https://user-images.githubusercontent.com/108053296/185756908-fbb62168-d923-48f2-992f-b8e2fde848fe.gif" width="48" height="48" > Conclusion
   
   1. Most of the reviews and ratings from the customers buying different properties were positive which shows that the customers are satisfied with the kind of property the company is offering.
   
   2. March-April and December is peak season for the company and around June month is the off peak season.
   
   3. Properties in Vancouver is way more costlier than that of properties in Toronto.
   
   4. Shared rooms have worse cleanliness rating and also priced low compared to others.


<!--  ## <img src=https://user-images.githubusercontent.com/106439762/178809088-a2d780ad-94f5-4a58-9203-7716d4b2cbf4.gif width="48" height="48"> About Me
I'm an aspiring data analyst...


##  <img src=https://user-images.githubusercontent.com/106439762/178810087-8f7f8272-0cb8-40cb-a14c-be475569cf7d.gif width="48" height="48"> Links

<a href="https://www.linkedin.com/in/tejas-natani-6b202a196/" ><img src="https://user-images.githubusercontent.com/106439762/182037233-49248ea9-c7a4-4f55-9fe4-5fe24e5ef160.png" width="48" height="48"> <a href="https://samarsaeedkhan.me/"><img src="https://user-images.githubusercontent.com/106439762/182037119-61f30cec-3610-4a5a-82dc-f1b7c59515b1.png" width="48" height="48"><a href="https://www.hackerrank.com/samarsaeedkhan4" > <img src="https://user-images.githubusercontent.com/106439762/182037415-9440716d-d2bc-4c33-955a-66b9c18f77eb.png" width="48" height="48"> <a href="https://www.kaggle.com/samarsaeedkhan" ><img src="https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/189_Kaggle_logo_logos-512.png" width="48" height="48"></a>   




  ## 🛠 Skills

    •	Structured Query Language (SQL)
    •	Python
    •	Excel
    •	Tableau
    •	Python
    •	Analytical Visualisation
    •	PowerPoint
    •	MS Word -->
