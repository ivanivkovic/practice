#!/usr/bin/env python
# coding: utf-8

# In[5]:


import pandas as pandas


# In[9]:


file = 'google-trends-data-science-5y.csv'

data = pandas.read_csv(file, sep=',')
data.index.name="#"

print ("5 years ago...")
data2 = data.head(12)

print(data2)

# In[11]:


print("However, now!")

data.tail(12)


# In[12]:


print("Yay!")


# In[ ]:





# In[ ]:




