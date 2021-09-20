# Machine Learning with Sklearn
We would like to predict Austin house prices with a linear regression model.

## Correlation and VIF Analysis
With over 40 input features related to each Austin home, we decided to conduct correlation analysis to help determine the importance of each feature to home prices. In particular, we have taken care not to include 3 features in our analysis – median_zip, zip_rank, and pr_sqft – since they are solely meant for the data cleaning process of lurking outlier data within our raw dataset. Looking into our inputs' correlation coefficients, we are a bit let down that all of them fall below 0.5, which signifies weak to moderate correlation. While we would've loved to see more heavily correlated inputs relative to house price, we'll ultimately have to make do with our current inputs. In addition to correlation analysis, we have opted to run several rounds of VIF feature calculations to not only reduce collinearity among our features but also combat overfitting in our model by removing highly colinear features.

## Multilinear Regression
With our features and output defined, we used Sklearn's linear regression function first mentioned in 17.2.3 (2021). Unlike in 17.2.3, however, we'll feed multiple dimensions of features into the regression model so that it would predict house prices. More specifically, we'll take a page out of 17.3.1 (2021) and split our data into training and testing sets. While we could feed the machine learning model all 12,000+ rows of Austin housing data, as noted in 17.3.1 (2021), we want our model to make accurate predictions in the face of new, real-world data. For analyzing our model's performance, we opted to calculate root mean squared error and mean absolute error for initial metrics. Visually, we opted to plot predicted values against actual test results on a 2-d graph. On the same graph, we plotted a straight line with slope 1 that would pass through the origin (0,0) so that we can gauge the model's overpredictions and underpredictions. 

