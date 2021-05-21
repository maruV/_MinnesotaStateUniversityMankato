
# coding: utf-8

# In[1]:

import matplotlib.pyplot as plt
import seaborn as sb
import pandas as pd
import pylab
import math

from scipy import stats

get_ipython().magic('matplotlib inline')


# In[2]:

import statsmodels.formula.api as smf


# In[3]:

acs = pd.read_csv("acs_ny.csv")


# In[4]:

acs.head()


# In[5]:

acs.info()


# In[6]:

acs.max()


# In[91]:

acs.min()


# In[106]:

acs["Language"].value_counts()


# In[8]:

acs["FamilyIncome"].min()


# In[9]:

acs["FamilyIncome"].value_counts(bins=4)


# In[10]:

acs["FamilyIncome"].between(0, 50000, inclusive=True).value_counts()


# In[11]:

x = acs["NumBedrooms"]
y = acs["FamilyIncome"]

plt.rc('grid', linestyle="-")
plt.grid(color='0.8')

plt.scatter(x, y, color='0.6', s=100)

plt.xlabel("NumBedrooms")
plt.ylabel("FamilyIncome")

plt.show()


# In[12]:

x = acs["NumPeople"]
y = acs["FamilyIncome"]

plt.rc('grid', linestyle="-")
plt.grid(color='0.8')

plt.scatter(x, y, color='0.6', s=100)

plt.xlabel("NumPeople")
plt.ylabel("FamilyIncome")

plt.show()


# In[13]:

x = acs["NumRooms"]
y = acs["FamilyIncome"]

plt.rc('grid', linestyle="-")
plt.grid(color='0.8')

plt.scatter(x, y, color='0.6', s=100)

plt.xlabel("NumRooms")
plt.ylabel("FamilyIncome")

plt.show()


# In[14]:

x = acs["NumVehicles"]
y = acs["FamilyIncome"]

plt.rc('grid', linestyle="-")
plt.grid(color='0.8')

plt.scatter(x, y, color='0.6', s=100)

plt.xlabel("NumVehicles")
plt.ylabel("FamilyIncome")

plt.show()


# In[15]:

x = acs["NumWorkers"]
y = acs["FamilyIncome"]

plt.rc('grid', linestyle="-")
plt.grid(color='0.8')

plt.scatter(x, y, color='0.6', s=100)

plt.xlabel("NumWorkers")
plt.ylabel("FamilyIncome")

plt.show()


# In[16]:

x = acs["HouseCosts"]
y = acs["FamilyIncome"]

plt.rc('grid', linestyle="-")
plt.grid(color='0.8')

plt.scatter(x, y, color='0.6', s=100)

plt.xlabel("HouseCosts")
plt.ylabel("FamilyIncome")

plt.show()


# In[17]:

x = acs["ElectricBill"]
y = acs["FamilyIncome"]

plt.rc('grid', linestyle="-")
plt.grid(color='0.8')

plt.scatter(x, y, color='0.6', s=100)

plt.xlabel("ElectricBill")
plt.ylabel("FamilyIncome")

plt.show()


# In[18]:

x = acs["Insurance"]
y = acs["FamilyIncome"]

plt.rc('grid', linestyle="-")
plt.grid(color='0.8')

plt.scatter(x, y, color='0.6', s=100)

plt.xlabel("Insurance")
plt.ylabel("FamilyIncome")

plt.show()


# Multiple Regression Analysis

# In[81]:

sb.regplot(x='ElectricBill', y='FamilyIncome', fit_reg=True, data=acs)


# In[102]:

sb.regplot(x='Insurance', y='FamilyIncome', fit_reg=True, data=acs)


# In[83]:

sb.regplot(x='HouseCosts', y='FamilyIncome', fit_reg=True, data=acs)


# In[84]:

sb.regplot(x='NumWorkers', y='FamilyIncome', fit_reg=True, data=acs)


# In[130]:

sb.regplot(x='NumWorkers', y='ElectricBill', fit_reg=True, data=acs)


# In[77]:

lm = smf.ols(formula='FamilyIncome ~ NumWorkers', data=acs).fit()


# In[78]:

lm.params


# In[79]:

X_new = pd.DataFrame({'NumWorkers': [1]})

X_new.head()


# In[80]:

preds = lm.predict(X_new)
preds


# In[85]:

X_new =  pd.DataFrame({'NumWorkers': [acs.NumWorkers.min(), acs.NumWorkers.max()]})
X_new.head()


# In[86]:

preds = lm.predict(X_new)
preds


# In[88]:

acs.plot(kind='scatter', x='NumWorkers', y='FamilyIncome')

plt.plot(X_new, preds, c='r', linewidth=3)


# In[99]:

lm.conf_int()


# In[100]:

lm.pvalues


# In[101]:

lm.rsquared


# In[103]:

lm = smf.ols(formula='FamilyIncome ~ NumWorkers + HouseCosts + Insurance + ElectricBill', data=acs).fit()


# In[104]:

lm.params


# In[105]:

lm.summary()


# In[108]:

lm = smf.ols(formula='FamilyIncome ~ FamilyType + NumPeople + HouseCosts + NumWorkers', data=acs).fit()


# In[109]:

lm.params


# In[110]:

lm.summary()


# In[111]:

lm = smf.ols(formula='FamilyIncome ~ NumVehicles + NumChildren + NumRooms + FoodStamp', data=acs).fit()


# In[112]:

lm.params


# In[113]:

lm.summary()


# In[114]:

lm = smf.ols(formula='FamilyIncome ~ NumBedrooms + NumUnits + Language + HeatingFuel', data=acs).fit()


# In[115]:

lm.params


# In[116]:

lm.summary()


# In[131]:

lm = smf.ols(formula='FamilyIncome ~ NumWorkers + HouseCosts + Insurance + ElectricBill', data=acs).fit()


# In[135]:

lm.params


# In[ ]:



