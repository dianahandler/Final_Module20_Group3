# Final Module20 Group3

## Topic Introduction
Predict Austin, TX House Sale Prices Using A Machine Learning Model\.

### Reason we chose this topic
Austin, TX is one of the hottest markets as observed from the sales prices over years 2018 to early 2021. The market has been on a positive incline over these years, and we would like to discover new insights and build a machine learning model to predict the future sales prices per specific features as provided from the dataset

### Description of our source of data 
The data set selected for our review and analysis originates from a project at Northwestern University. The csv file was discovered and pulled from [kaggle](https://www.kaggle.com/ericpierce/austinhousingprices)\.

### Questions we hope to answer with our data
We hope to discover which features and variables correlate closely to the house listing price and observe how the Austin market price(s) would change in the future\.

## Data Set
The initial data set from kaggle span from years 2018 to January 2021 and has 15,171 rows and 47 columns of the sales data from Austin, TX\.

### EDA and Cleaning Data Set
1. **FINDING**: Single Family(94%), Condo(3%) and Townhouse(1%) make up most of data. **ACTION**: Removed all other home type\.
2. **FINDING**: Possible outliers were lastestPrice, lotSizeSqFt, livingAreaSqFt and numOfBathrooms.  **ACTION**: Corrected typo(s), inputted typical numbers, corrected data based on homeType and latestPrice and used IQR method (used standard 1.5)\.
3. **FINDING**: Bool type data. **ACTION**: Changed to binary data as 0/1\.

### Result
Our final data set has 12933 rows and 50 columns with 0 missing value\.

## Description of communication protocols
Slack chat and normal class hours are our primary communication channel. On top of these sessions, we will have seperate meeting time via google meet during week and weekend\.
As an alternative, we have each team member's email for supplemental communication medium\.

## Database
The two datasets that were created during EDA and Cleaning Data set were split based on columns/features that were physically related to the house itself, vs external factors. 
Looking at the dataset there were several factors that realted to the neighborhood itself, including number of schools (elem, mid, high) as well as school distance and rating.
It was determined that this information would be split off from the physical characteristics of the house itself (like parking spaces, number of bedrooms, square footage).

Based off this, the first table of the dataset being worked included the following columns: zpid, city, streetAddress, zipcode, description, latitude, longitude, propertyTaxRate, garageSpaces, hasAssociation, hasCooling, hasGarage, hasHeating, hasSpa, hasView, homeType, parkingSpaces, yearBuilt, latestPrice, numPriceChanges, latest_saledate, latest_salemonth, latest_saleyear, latestPriceSource, numOfPhotos, accessibility, numOfAppliances, numOfParkingFeatures, patioporch, security, waterfront, windowfeatures, community, lotSizesqFt, livingAreaSqFt, numOfBathrooms, numOfBedrooms, numOfStories, homeImage, zip_rank, median_zip, pr_sqft. 

The second table had the following columns zpid, numOfPrimarySchools, numOfElementarySchools, numOfMiddleSchools, numOfHighSchools, avgSchoolDistance, avgSchoolRating, avgSchoolSize, MedianStudentsPerTeacher. Zpid was used as the primary key for both table 1 (named House_data) and table2 (named House_data2). 

The following ERD shows the basic relationship between the two created tables.

![House Data ERD](https://github.com/dianahandler/Final_Module20_Group3/blob/65bd50764d08f731ea126ed49849942c3ee12808/Resources/Housing%20Data%20ERD.png)

Shown below are the queries used to create both tables, with House_data2 having the foreign key zpid connected to House_data. 

![House Data Table query](https://github.com/dianahandler/Final_Module20_Group3/blob/ec20086b18caf302f1b12e9af6f93a2d0261d105/Resources/House%20Data%20table%20query.png)


![House Data 2 Table query](https://github.com/dianahandler/Final_Module20_Group3/blob/ec20086b18caf302f1b12e9af6f93a2d0261d105/Resources/House%20Data%202%20table%20query.png)

Below are images of the resulting tables created with the CSV file being imported. Both tables were properly imported, and displaying all their colums correctly.
![House_Data SQL Import](https://github.com/dianahandler/Final_Module20_Group3/blob/ec20086b18caf302f1b12e9af6f93a2d0261d105/Resources/House_Data%20SQL%20Import.png)

![House_Data2 SQL Import](https://github.com/dianahandler/Final_Module20_Group3/blob/ec20086b18caf302f1b12e9af6f93a2d0261d105/Resources/House_Data2%20SQL%20Import.png)

Zpid was a unique identifier that carried over between the two datasets, and is what was used for the join as well. Below is an image of
the query created to join the two tables on zpid.

![House Data Complete join query](https://github.com/dianahandler/Final_Module20_Group3/blob/ec20086b18caf302f1b12e9af6f93a2d0261d105/Resources/House%20Data%20Complete%20join%20query.png)

This resulted in a table called House_Data_Complete, which was then exported into a csv file as well. Afterwards, a connection string was
created using Jupyter Notebook. The file for that was uploaded into the resources folder, and an image of that code is shown below as well.

![Jupyter Notebook Connection String](https://github.com/dianahandler/Final_Module20_Group3/blob/9eab711bd40e45dd7e57cef1d23ff3acc42f5076/Resources/Jupyter%20Notebook%20Connection%20String.png)

## Google Slides Presentation & Graphics
The team has jointly utilized python, Tableau, and Javascript to build a Google Slides Presentation, graphics, and an interactive Dashboard\.

See our Google Slides Presentation [docs.google.com/presentation](https://docs.google.com/presentation/d/1twBBLEhZZkmWahrWEjHUeVqPb6Sn0j-FQJ_6LjUNoQ8/edit?usp=sharing)\.

See some of our graphics created using Tableau [here](https://public.tableau.com/app/profile/cinthia.kim7065/viz/Final_Module20_Group3_Austin_Housing/Storyboard_1)\.

## Interactive Dashboard

See our interactive dashboard [here](https://dianahandler.github.io/final_dash/)

The purpose of this dashboard is to allow the user to both view and interact with 500 house listings on a map of Austin, Texas. All listings will be marked with popup markers that allos the user to click on them and view various features for each listing(# of bedrooms, square footage, price, etc.). 

To create an interactive dashboard, the following tools were utilized:
- Visual Studio Code
- Microsoft Excel
- csv to geoJSON converter
- MapBox API
- Javascript
- D3 Library
- Leaflet Library

The original dataset initially had over 10k listings and froze the map due to the data size. To compensate, I opened the dataset on an excel file and assigned a random number to each listing with the RAND() function and proceeded to sort the rows in ascending order, randomizing the entire dataset. I then selected the top 500 listings to display on the interactive dashboard as over 10k would be unrealistic for a geographical user interface. The excel file was saved as a csv and then converted to a geoJSON file using an online converter https://www.convertcsv.com/csv-to-geojson.htm. Because the dataset already had longititude and latitude columns for each listing, the file was able to convert to a geoJSON successfully. 

The new geoJSON file was added to a past repository. By clicking on the file and selecting the "Raw" button, a new browser opens with a url to the geoJSON data. This URL serves as our data in the logic.js file. 

![Screen Shot 2021-09-12 at 6 00 07 PM](https://user-images.githubusercontent.com/82029390/133004079-17ecc49c-5321-43cb-a0f5-c2be17f76ea4.png)

An index.html file was created with necessary code to allow the map to be viewable and interactive to the user upon clicking. The map setView function in the logic.js file is set to coordinates that allign with Austin, TX on the map and the zoom is set to 10 from a scale of 1 - 18 that allows the user to immediately view Austin rather than have to zoom in.
![Screen Shot 2021-09-12 at 6 04 36 PM](https://user-images.githubusercontent.com/82029390/133004201-5dd77a6a-646b-472e-aaad-fdfb80378745.png)

Necessary tools included the Leaflet library, D3.js, and Mapbox. I will aditionally add more features to the map of listings such as (bedrooms, bathrooms, etc) so that the user can view these when they click the listing. For now the map simply displays the markers for all listings in the Austin, TX area.

# Machine Learning with Sklearn
We would like to predict Austin house prices with a linear regression model.

## Correlation Analysis
With over 40 input features related to each Austin home, we decided to conduct correlation analysis to help determine the importance of each feature to home prices. Following this process, we found that the top 3 most correlated factors – median_zip, zip_rank, and pr_sqft (in no particular order) – were based off of 'latestPrice' figures, the output of our project. Boasting correlation coefficients between about 0.576 to about 0.731, these features showed moderate to strong correlation to 'latestPrice'. While these 3 features are dependent on 'latestPrice', we nevertheless feel that they may serve as key factors to the house's final selling price, whether it's because some zip codes are attractive to prospective homebuyers or if because some homebuyers want the most living space within their budget. Aside from these 3 features, the rest of the inputs' correlation coefficients fall below 0.5, suggesting weak at best correlation. Nevertheless, since a wide majority of features aren't considered "moderately" correlated to house price, we will include as many weakly correlated features as possible. For this demonstration in particular, **we opted to use the top 10 correlated features**, with the least correlated feature having a coefficient of about 0.209.

## Multilinear Regression
With our features and output defined, we used Sklearn's linear regression function first mentioned in 17.2.3 (2021). Unlike in 17.2.3, however, we'll feed multiple dimensions of features into the regression model so that it would predict house prices. More specifically, we'll take a page out of 17.3.1 (2021) and split our data into training and testing sets. While we could feed the machine learning model all 12,000+ rows of Austin housing data, as noted in 17.3.1 (2021), we want our model to make accurate predictions in the face of new, real-world data. For analyzing our model's performance, we opted to calculate root mean squared error and mean absolute error for initial metrics. Visually, we opted to plot predicted values against actual test results on a 2-d graph. On the same graph, we plotted a straight line with slope 1 that would pass through the origin (0,0) so that we can gauge the model's overpredictions and underpredictions. 

