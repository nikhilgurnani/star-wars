
# Importing the libraries
import matplotlib.pyplot as plt
import pandas as pd
import datetime

#Setting filename to import
today = datetime.date.today()
filename = "data_" + today.strftime("%Y-%b-%d") + ".csv"
print('Importing ' + filename + '..')

# Importing the dataset
dataset = pd.read_csv(filename)
X = dataset.iloc[:, 1:2].values
y = dataset.iloc[:, 2].values

# Splitting the dataset into the Training set and Test set
from sklearn.cross_validation import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 1/3, random_state = 0)


# Fitting Simple Linear Regression to the Training set
from sklearn.linear_model import LinearRegression
regressor = LinearRegression()
regressor.fit(X_train, y_train)

# Predicting the Test set results
y_pred = regressor.predict(X_test)

# Visualising the Training set results
plt.scatter(X_train, y_train, color = 'red')
plt.plot(X_train, regressor.predict(X_train), color = 'blue')
plt.title('Droids vs Fighting Intensity (Training set)')
plt.xlabel('Fighting Intensity')
plt.ylabel('Droids')
plt.show()
#
## Visualising the Test set results
plt.scatter(X_test, y_test, color = 'red')
plt.plot(X_train, regressor.predict(X_train), color = 'blue')
plt.title('Droids vs Fighting Intensity')
plt.xlabel('Droids')
plt.ylabel('Intensity')
plt.show()