# Credit_Card_Approval_Project

![image](https://user-images.githubusercontent.com/99145651/187097847-df645dc0-bca6-4fb0-86ca-00bdfdfc158c.png)

Credit Card Approvals 

Credit card debt has recently surged in the United States as Americans borrowed billions of dollars to continue spending in the face of growing inflation. Credit card balances increased $46 billion in the second quarter, a 5.5 percent increase from the first quarter, and there was also an uptick in new credit card accounts. The 13 percent increase from the second quarter of 2021 to the second quarter of 2022 was the biggest such jump in more than 20 years. Americans are borrowing more which primarily can be attributable to higher prices. In this project, our goal was to build a credit card approval predictor.

![image](https://user-images.githubusercontent.com/99145651/187246959-508cbd8d-009a-4db8-b8e7-6fc68c7f83ae.png)

 In this project, The APR Group will collect data related to determining credit card approval. Therefore, revelant details such as annual income, occcuputation type, job experience and other features utilize in a datset to determine Credit Card Approval through Machine Learning. 

## Tasks
* Load the dataset.
* Manipulate data.
* Analyze the dataset.
* Pre-process data.
* Apply machine learning model.
* Deploy a web application to Heroku

# Datasets

application_record.csv 

credit_record.csv

## Importing Libraries
Importing necessary libraries such as NumPy for linear algebra, pandas for data processing, seaborn, and matplotlib for data visualizations.

* import pandas as pd
* import psycopg2
* from sqlalchemy import create_engine

* % matplotlib inline

* import numpy as np
* import matplotlib.pyplot as plt
* import seaborn as sns

* from sklearn.model_selection import train_test_split
* from sklearn.metrics import accuracy_score, confusion_matrix
* from sklearn.linear_model import LogisticRegression
* from sklearn.tree import DecisionTreeClassifier

* from sklearn import svm
* from sklearn.ensemble import RandomForestClassifier
* from imblearn.over_sampling import SMOTE

* import pickle

## Loading Dataset
.
![image](https://user-images.githubusercontent.com/99145651/187708578-bec30177-4298-43a8-822d-004e6a88956b.png)


## Checking and Cleaning of Dataset

It was a key step to ensure the data is good and formatted. There are often issues that can must be addressed. Data can often have inconsistency, missing values or duplicates to name a few. Therefore, it is important to review the data to determine how to clean it to become a useful, good dataset. 


# Cleaning data

Duplicates

![image](https://user-images.githubusercontent.com/99145651/187709953-8610c8d2-6f51-47b5-8750-dfb8b4a9d7d3.png)


## Modeling
For Modeling purpose we have grouped columns like ChlddNo, inc, inctp, houtp based on the type of values. Using the concept of Weight of Evidence and Information Value for continuous dependent variables, we have created a new table with 1 or 0 values as you can see below:

![image](https://user-images.githubusercontent.com/51139020/187797838-484ccdba-6c4c-4657-92d0-c35404c8fa7c.png)

Here, the models used are:

Random Forest Classifier

![image](https://user-images.githubusercontent.com/99145651/187710623-3407363c-0a4f-4907-ab46-fc359e3377c9.png)

Decision Tree Classifier

![image](https://user-images.githubusercontent.com/99145651/187711110-c98689b2-7509-4973-a3d0-e2ed841e85b8.png)

Logistic Regression

![image](https://user-images.githubusercontent.com/99145651/187711874-444b61b8-e2c3-4a61-97b1-a9bbdc335ba4.png)



## Develop web application with Flask and intergrate model in the app

![image](https://user-images.githubusercontent.com/99145651/187713164-7a4f68be-e236-4d0a-966a-81581fcd7b0f.png)

![image](https://user-images.githubusercontent.com/99145651/187713467-8d2e5d79-2324-4b48-8d9e-abd358dea1a8.png)



## Deployment web app 

![image](https://user-images.githubusercontent.com/99145651/187713650-d6a0f14e-4b5e-4a81-942b-50d7d35e555d.png)



