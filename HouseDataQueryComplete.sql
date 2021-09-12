-- Creating tables for Covid_ProjectDB
CREATE TABLE House_data (
    zpid INT NOT NULL,
    city VARCHAR NOT NULL,
	streetAddress VARCHAR NOT NULL,
	zipcode INT NOT NULL,
	description VARCHAR NOT NULL,
	latitude DOUBLE PRECISION NOT NULL,
	longitude REAL NOT NULL,
	propertyTaxRate REAL NOT NULL,
	garageSpaces INT NOT NULL,
	hasAssociation INT NOT NULL,
	hasCooling INT NOT NUll,
	hasGarage INT NOT NULL,
	hasHeating INT NOT NULL,
	hasSpa INT NOT NULL,
	hasView INT NOT NULL,
	homeType VARCHAR NOT NULL,
	parkingSpaces INT NOT NULL,
	yearBuilt INT NOT NULL,
	latestPrice REAL NOT NULL,
	numPriceChanges INT NOT NULL,
	latest_saledate DATE NOT NULL,
	latest_salemonth INT NOT NULL,
	latest_saleyear INT NOT NULL, 
	latestPriceSource VARCHAR NOT NULL,
	numOfPhotos INT NOT NULL,
	accessibility INT NOT NULL,
	numOfAppliances INT NOT NULL,
	numOfParkingFeatures INT NOT NULL,
	patioporch INT NOT NULL,
	security INT NOT NULL,
	waterfront INT NOT NULL,
	windowfeatures INT NOT NULL,
	community INT NOT NULL,
	lotSizeSqFt REAL NOT NULL,
	livingAreaSqFt REAL NOT NULL,
	numOfBathrooms REAL NOT NULL,
	numOfBedrooms REAL NOT NULL,
	numOfStories REAL NOT NULL,
	homeImage VARCHAR NOT NULL,
	zip_rank INT NOT NULL,
	median_zip REAL NOT NULL,
	pr_sqft REAL NOT NULL,
    PRIMARY KEY (zpid)
);

CREATE TABLE House_Data2 (
	zpid INT NOT NULL,
	numOfPrimarySchools INT NOT NULL,
	numOfElementarySchools INT NOT NULL,
	numOfMiddleSchools INT NOT NULL,
	numOfHighSchools INT NOT NULL,
	avgSchoolDistance DOUBLE PRECISION NOT NULL,
	avgSchoolRating DOUBLE PRECISION NOT NULL,
	avgSchoolSize INT NOT NULL,
	MedianStudentsPerTeacher INT NOT NULL,
	FOREIGN KEY (zpid) REFERENCES House_Data (zpid),
		PRIMARY KEY (zpid)
);

SELECT * FROM House_data
SELECT * FROM House_data2


SELECT hd.zpid, hd.city, hd.streetAddress, hd.zipcode, hd.description, hd.latitude, hd.longitude, hd.propertyTaxRate, hd.garageSpaces, hd.hasAssociation, 
hd.hasCooling, hd.hasGarage, hd.hasHeating, hd.hasSpa, hd.hasView, hd.homeType, hd.parkingSpaces, hd.yearBuilt, hd.latestPrice, hd.numPriceChanges, 
hd.latest_saledate, hd.latest_salemonth, hd.latest_saleyear, hd.latestPriceSource, hd.numOfPhotos, hd.accessibility, hd.numOfAppliances, 
hd.numOfParkingFeatures, hd.patioporch, hd.security, hd.waterfront, hd.windowfeatures, hd.community, hd.lotSizesqFt, hd.livingAreaSqFt,
hd.numOfBathrooms, hd.numOfBedrooms, hd.numOfStories, hd.homeImage, hd.zip_rank, hd.median_zip, hd.pr_sqft, hd2.numOfPrimarySchools, hd2.numOfElementarySchools,
hd2.numOfMiddleSchools, hd2.numofHighSchools, hd2.avgSchoolDistance, hd2.avgSchoolRating, hd2.avgSchoolSize, hd2.MedianStudentsPerTeacher
INTO House_data_complete
FROM House_data as hd
FULL JOIN House_data2 as hd2
On hd.zpid = hd2.zpid

SELECT * FROM House_data_complete