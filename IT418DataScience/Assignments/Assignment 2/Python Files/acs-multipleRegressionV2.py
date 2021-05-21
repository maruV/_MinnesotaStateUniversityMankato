
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


# In[6]:

acs.info()


# In[7]:

acs.count()


# In[10]:

n = []
print("Original number of rows: ", len(acs['FamilyIncome']))

for i in range(len(acs['FamilyIncome'])):
    fi = acs.iloc[i]['FamilyIncome']
    hc = acs.iloc[i]['HouseCosts']
    eb = acs.iloc[i]['ElectricBill']
    ie = acs.iloc[i]['Insurance']
    nw = acs.iloc[i]['NumWorkers']
    
    nw_fi = nw==0 and fi>0  # boolean variable if numWorkers is equal to zero and
                            # family income is greater than zero
    hei = hc + eb + ie      # variable for sum of housecosts, electricbill, and
                            # Insurance
    fi_hei = fi < hei       # boolean for family income less than expenses
    
    if nw_fi and fi_hei:
        n.append(i)         # appends row number to list n if the two above
                            # conditions are true


print("Number of rows deleted: ", len(n))

for i in n:
    acs.drop([i], inplace=True)  # drops row with invlaid values based on the 
                                 # above conditions

print("Total rows after deletion: ", len(acs['FamilyIncome']))


# In[11]:

acs.max()


# In[12]:

acs.min()


# In[13]:

acs.isnull().any()


# In[14]:

acs.min()


# In[15]:

acs.dtypes


# Multiple Regression Analysis

# In[17]:

sb.regplot(x='ElectricBill', y='FamilyIncome', fit_reg=True, data=acs)


# In[18]:

sb.regplot(x='Insurance', y='FamilyIncome', fit_reg=True, data=acs)


# In[19]:

sb.regplot(x='HouseCosts', y='FamilyIncome', fit_reg=True, data=acs)


# In[20]:

sb.regplot(x='NumWorkers', y='FamilyIncome', fit_reg=True, data=acs)


# In[21]:

lm = smf.ols(formula='FamilyIncome ~ NumWorkers', data=acs).fit()


# In[22]:

lm.params


# In[23]:

X_new = pd.DataFrame({'NumWorkers': [1]})

X_new.head()


# In[24]:

preds = lm.predict(X_new)
preds


# In[25]:

X_new =  pd.DataFrame({'NumWorkers': [acs.NumWorkers.min(), acs.NumWorkers.max()]})
X_new.head()


# In[26]:

preds = lm.predict(X_new)
preds


# In[27]:

acs.plot(kind='scatter', x='NumWorkers', y='FamilyIncome')

plt.plot(X_new, preds, c='r', linewidth=3)


# In[28]:

lm.conf_int()


# In[29]:

lm.pvalues


# In[30]:

lm.rsquared


# In[31]:

lm = smf.ols(formula='FamilyIncome ~ NumWorkers + HouseCosts + Insurance + ElectricBill', data=acs).fit()


# In[32]:

lm.params


# In[33]:

lm.summary()


# In[34]:

lm = smf.ols(formula='FamilyIncome ~ FamilyType + NumPeople + HouseCosts + NumWorkers', data=acs).fit()


# In[35]:

lm.params


# In[36]:

lm.summary()


# In[43]:

lm = smf.ols(formula='FamilyIncome ~ NumVehicles + NumChildren + NumRooms + FoodStamp', data=acs).fit()


# In[44]:

lm.params


# In[45]:

lm.summary()


# In[47]:

lm = smf.ols(formula='FamilyIncome ~ NumBedrooms + NumUnits + Language + HeatingFuel', data=acs).fit()


# In[48]:

lm.params


# In[49]:

lm.summary()


# In[ ]:



