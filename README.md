## Interactive Dashboard

The purpose of this dashboard is to allow the user to both view and interact with 500 house listings on a map of Austin, Texas. All listings will be marked with popup markers that allos the user to click on them and view various features for each listing(# of bedrooms, square footage, price, etc.). 

To create an interactive dashboard, the following tools were utilized:
- Visual Studio Code
- Microsoft Excel
- csv to geoJSON converter
- MapBox API
- Javascript

The original dataset initially had over 10k listings and froze the map due to the data size. To compensate, I opened the dataset on an excel file and assigned a random number to each listing with the RAND() function and proceeded to sort the rows in ascending order, randomizing the entire dataset. I then selected the top 500 listings to display on the interactive dashboard as over 10k would be unrealistic for a geographical user interface. The excel file was saved as a csv and then converted to a geoJSON file using an online converter https://www.convertcsv.com/csv-to-geojson.htm. Because the dataset already had longititude and latitude columns for each listing, the file was able to convert to a geoJSON successfully. 

The new geoJSON file was added to a past repository. By clicking on the file and selecting the "Raw" button, a new browser opens with a url to the geoJSON data. This URL serves as our data in the logic.js file. 

![Screen Shot 2021-09-12 at 6 00 07 PM](https://user-images.githubusercontent.com/82029390/133004079-17ecc49c-5321-43cb-a0f5-c2be17f76ea4.png)

An index.html file was created with necessary code to allow the map to be viewable and interactive to the user upon clicking. The map setView function in the logic.js file is set to coordinates that allign with Austin, TX on the map and the zoom is set to 10 from a scale of 1 - 18 that allows the user to immediately view Austin rather than have to zoom in.

![Screen Shot 2021-09-12 at 6 04 36 PM](https://user-images.githubusercontent.com/82029390/133004201-5dd77a6a-646b-472e-aaad-fdfb80378745.png)

Necessary tools included the Leaflet library,D3.js, and Mapbox.

The dashboard is interactive and functional however cannot be displayed yet as I am still working on hiding the API key in my config.js file. I originally created a separate repository to test the map. The map opened and was interactive however the config.js file was still viewable to the public despite it being in the gitignore file. Thus this will require some troubleshooting before the final deliverable.

I will aditionally add more features to the map of listings such as (bedrooms, bathrooms, etc) so that the user can view these when they click the listing. For now the map simply displays the markers for all listings in the Austin, TX area.


