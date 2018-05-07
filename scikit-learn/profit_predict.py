import matplotlib.pyplot as plt
import numpy as np
from os.path import dirname, join

from sklearn import linear_model

# Load data with a single feature
filePath = dirname(__file__)
data = np.loadtxt(join(filePath, 'housing_price_data_1_feature'), delimiter=",")
trainingData = data[:, np.newaxis, 0]
trainingTarget = data[:, 1]

regr = linear_model.LinearRegression()
regr.fit(trainingData, trainingTarget)

data_test1 = [[3.5], [7]]
print("test:\n", data_test1)
print("predict test:\n", regr.predict(data_test1))
y_pred = regr.predict(trainingData)
print('predict: ', y_pred*10000)

plt.scatter(trainingData, trainingTarget,  color='black')
plt.plot(trainingData, y_pred, color='blue', linewidth=3)

plt.xticks(())
plt.yticks(())

plt.show()

