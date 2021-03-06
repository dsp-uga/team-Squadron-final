'''
This program is a part of data prediction for Kaggle Santander Bank challenge

This code is for detecting and removing outliers from the train dataset.

This code is implemented using many great directions from https://machinelearningmastery.com/feature-selection-machine-learning-python/

'''

import csv
import numpy
import numpy as np
from scipy import stats
from numpy import loadtxt
from sklearn.model_selection import train_test_split
from sklearn.model_selection import StratifiedKFold
from sklearn.ensemble import ExtraTreesClassifier
import pandas as pd
from sklearn.preprocessing import StandardScaler
from sklearn.utils import class_weight
from sklearn.metrics import confusion_matrix
from sklearn.tree import DecisionTreeClassifier # Import Decision Tree Classifier
from sklearn.model_selection import train_test_split # Import train_test_split function
from sklearn import metrics #Import scikit-learn metrics module for accuracy calculation
from sklearn.ensemble import RandomForestRegressor
from sklearn.feature_selection import SelectFromModel

seed = 5
numpy.random.seed(seed)

# Read the CSV into a pandas data frame (df)
dftr = pd.read_csv('train.csv', delimiter=',')
train_data = np.array(dftr)
dfte = pd.read_csv('test.csv', delimiter=',')
test_data = np.array(dfte)

#Detecting and Removing outliers
train_data = np.array(train_data[:,1:(len(train_data[0]))], dtype=np.float)
train_data = train_data[(np.abs(stats.zscore(train_data)) < 3).all(axis=1)]

#read csv files to arrays and convert types
XX = train_data[:,1:(len(train_data[0]))]
YY = train_data[:,0]
TT = test_data[:,1:(len(test_data[0]))]
R = test_data[:,[0]]

T = np.array(TT, dtype=np.float)
X = np.array(XX, dtype=np.float)
Y = np.array(YY, dtype=np.int)
X.shape