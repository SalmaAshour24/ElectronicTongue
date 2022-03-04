# Importing flask module in the project is mandatory
# An object of Flask class is our WSGI application.
import os
import pandas as pd
from sklearn.svm import SVC
import numpy as np
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from flask import Flask, request
from sklearn.metrics import classification_report, plot_confusion_matrix, confusion_matrix,accuracy_score
import seaborn as sns
from pandas.plotting import radviz


# Flask constructor takes the name of
# current module (__name__) as argument.
app = Flask(__name__)

@app.route('/milk', methods=['GET', 'POST'])
def hello_world():
    input1= request.args.get('input1')
    input2 = request.args.get('input2')
    input3 = request.args.get('input3')

    df = pd.read_csv('pharmacy2erayat.csv')
    X = df.drop('Output', axis=1)
    y = df['Output']
    # Standartization for our dataset
    scaler = StandardScaler()
    X = scaler.fit_transform(X.values)
    r="Enter The Values"
    # splitting dataset into training and testing
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.40, random_state=41)

    # Implementing to dataset
    clf = SVC(kernel='rbf', C=1, gamma=10)
    clf.fit(X_train, y_train)
    clf.predict(X_test)
    if input1 is not None and input2 is not None and input3 is not None:
        mylist = [
            [input1, input2, input3]
        ]
        # 0,0,1,1,0,0,1,1,0,1
        mylist = scaler.transform(mylist)
        for a in clf.predict(mylist):
            i = a
        if i == 0:
            r = "Pure Milk"
        elif i == 1:
            r = "Adulterated Milk"
    return r


# main driver function
if __name__ == '__main__':
    # run() method of Flask class runs the application
    # on the local development server.
    app.run()
