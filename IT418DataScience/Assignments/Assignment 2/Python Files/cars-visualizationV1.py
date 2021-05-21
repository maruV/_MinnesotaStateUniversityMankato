
# coding: utf-8

# In[1]:

import pandas as pd
from matplotlib import pyplot as plt
import seaborn as sb
import numpy as np

get_ipython().magic('matplotlib inline')


# In[2]:

c = pd.read_csv("cars.csv")


# In[3]:

c.head()


# In[4]:

c.describe()


# In[5]:

c.info()


# In[ ]:

c.isnull().any()


# In[6]:

c.columns


# In[7]:

c.rename( columns={'Unnamed: 0':'cars'}, inplace=True )


# In[8]:

c.columns


# In[9]:

c["mpg"].value_counts()


# In[10]:

y = c["mpg"]
x = range(c['mpg'].count())

plt.rc('grid', linestyle="-")
plt.grid(color='0.8')

plt.plot(x, y)
plt.show()


# In[11]:

y1 = c["mpg"]
y2 = c["cyl"] 
y3 = c["wt"]
x = range(c['mpg'].count())

plt.rc('grid', linestyle="-")
plt.grid(color='0.8')

plt.plot(x, y1, label='mpg')
plt.plot(x, y2, label='cyl')
plt.plot(x, y3, label='wt')
plt.legend(loc='upper left', frameon=False)

plt.show()


# In[12]:

y1 = c["mpg"]
y2 = c["cyl"] 
y3 = c["wt"]
x = range(c['mpg'].count())

plt.rc('grid', linestyle="-")
plt.grid(color='0.8')

plt.plot(x, y1, color='c', label='mpg')
plt.plot(x, y2, color='m', label='cyl')
plt.plot(x, y3, color='y', label='wt')
plt.legend(loc='upper left', frameon=False)

plt.show()


# In[13]:

plt.rc('grid', linestyle="-")
plt.grid(color='0.8')

plt.xticks(range(c["mpg"].count()))

plt.bar(range(c["mpg"].count()), c["mpg"], width=0.5)

plt.show()


# In[14]:

plt.rc('grid', linestyle="-")
plt.grid(color='0.8')

plt.yticks(range(c["mpg"].count()))

plt.barh(range(c["mpg"].count()), c["mpg"], height=0.5)

plt.show()


# In[15]:

c["mpg"].max()


# In[16]:

sb.set_style('whitegrid')

sb.distplot( c["mpg"], bins=6, color='blue', kde=True)

plt.show()


# In[17]:

plt.rc('grid', linestyle="-")
plt.grid(color='0.8')

plt.ylabel("Frequency")
plt.hist(c["mpg"], bins=10)

plt.show()


# In[18]:

x = c["hp"]
y = c["mpg"]

plt.rc('grid', linestyle="-")
plt.grid(color='0.8')

plt.scatter(x, y, color='0.6', s=100)

plt.xlabel("hp")
plt.ylabel("mpg")

plt.show()


# In[19]:

x = c["hp"]
y = c["mpg"]

sb.set_style('whitegrid')

sb.regplot(x, y, fit_reg=True, color='b', scatter_kws={"s": 80})

plt.show()


# In[20]:

sb.set_style('whitegrid')

sb.pairplot(c)


# In[74]:

c.boxplot(column='mpg', by='am')

plt.show()


# In[43]:

sb.set_style('whitegrid')

sb.boxplot(x="am", y="mpg", data=c, palette='hls', linewidth=2).set_title('boxplot for mpg grouped by am')

plt.show()


# In[ ]:



