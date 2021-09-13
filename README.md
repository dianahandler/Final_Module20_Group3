# Machine Learning w/ Sklearn
We would like to predict Austin house prices with a linear regression model.

## Correlation Analysis
With over 40 input features related to each Austin home, we decided to conduct correlation analysis to help determine the importance of each feature to home prices. Following this process, we found that the top 3 most correlated factors – median_zip, zip_rank, and pr_sqft (in no particular order) – were based off of 'latestPrice' figures, the output of our project. Boasting correlation coefficients between about 0.576 to about 0.731, these features showed moderate to strong correlation to 'latestPrice'. Whilethese 3 features are dependent on 'latestPrice', we nevertheless feel that they may serve as key factors to the house's final selling price, whether it's because some zip codes are attractive to prospective homebuyers or if because some homebuyers want the most living space within their budget.
