#%%
import pandas as pd 
import sqlite3

#%%
conn = sqlite3.connect('database_sales.db') 
#%%
df = pd.read_csv('../data/ecommerce_sales.csv')
#%%
df.to_sql('ecommerce_sales', conn, if_exists='replace', index=False)
#%%
conn.close()
# %%
df.head()
# %%
df.info()
# %%
