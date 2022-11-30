import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from sklearn.preprocessing import PolynomialFeatures
from sklearn.linear_model import LinearRegression
from sklearn.linear_model import SGDRegressor
from sklearn.model_selection import train_test_split
from sklearn.metrics import r2_score
from sklearn.metrics import mean_squared_error
import math


data = pd.read_csv('data.csv')
X = data.iloc[:, 0].values.reshape(-1, 1) # values converts it into a numpy array
Y = data.iloc[:, 1].values.reshape(-1, 1) # -1 means that calculate the dimension of rows, but have 1 column

X_train, X_test, Y_train, Y_test = train_test_split(X, Y,test_size=0.3,random_state=42)

pr = PolynomialFeatures(degree = 2)
X_poly = pr.fit_transform(X_train)
pr.fit(X_poly, Y)

lin_reg = LinearRegression()
lin_reg_poly = LinearRegression()
clf = SGDRegressor(max_iter=1000, tol=1e-3, alpha=0, learning_rate='constant', eta0=0.0001)

lin_reg.fit(X_train, Y_train)
lin_reg_poly.fit(X_poly, Y_train)
clf.fit(X_train, Y_train)

Y_pred = lin_reg.predict(X_train)
Y_pred_poly = lin_reg_poly.predict(pr.fit_transform(X_train))
Y_pred_ols = clf.predict(X_train)

plt.scatter(X_train, Y_train)
plt.scatter(X_train, Y_pred)
plt.scatter(X_train, Y_pred_poly)
plt.scatter(X_train, Y_pred_ols)
plt.show()

Y_pred_test = lin_reg.predict(X_test)
Y_pred_poly_test = lin_reg_poly.predict(pr.fit_transform(X_test))
Y_pred_ols_test = clf.predict(X_test)

print("Dans l'odre : linéaire, poly, OLS")

print("MSE : ")
print(mean_squared_error(Y_test, Y_pred_test))
print(mean_squared_error(Y_test, Y_pred_poly_test))
print(mean_squared_error(Y_test, Y_pred_ols_test))

print("R2")
print(r2_score(Y_test, Y_pred_test))
print(r2_score(Y_test, Y_pred_poly_test))
print(r2_score(Y_test, Y_pred_ols_test))

print("RMSE")
print(math.sqrt(mean_squared_error(Y_test, Y_pred_test)))
print(math.sqrt(mean_squared_error(Y_test, Y_pred_poly_test)))
print(math.sqrt(mean_squared_error(Y_test, Y_pred_ols_test)))