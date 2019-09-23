#!/usr/bin/env python
# coding: utf-8

import pandas as pandas
import matplotlib.pyplot as plt
import seaborn as sns

data = pandas.read_csv('google-trends-data-science-5y.csv', sep=',')

data.head(12)
data.tail(12)


series = data.groupby('Week')['Trends Count'].sum()

print(series)
#print(series.values)
#print(data)

plt.figure(figsize=(15, 6))
sns.lineplot(x=series.index, y=series.values)

time_span = 52

from sklearn.preprocessing import MinMaxScaler

values = series.values
values = values.reshape((len(values), 1))

print(values)
