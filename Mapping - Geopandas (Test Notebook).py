# This notebook is an attempt to transform the 500 Cities dataset that I created in my last Jupyter notebook for 500 cities, and then to map it to an existing shapefile from the 500 cities dataset.
# Note: I'm only updating this as I have the time to do so. :)
# Original tutorial: https://towardsdatascience.com/lets-make-a-map-using-geopandas-pandas-and-matplotlib-to-make-a-chloropleth-map-dddc31c1983d
# Note: I WILL have to use earthpy to work on this at a later date.
# Written by Michelle Schmitz on 12/03/2019.

import os
import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
import geopandas as gpd

pd.set_option('max_columns', 50)
get_ipython().run_line_magic('matplotlib', 'inline')

csv = 'C:/Users/mmsch/OneDrive/Desktop/Data Science/indicator_table.csv'

csv_500_cities = pd.read_csv(csv)
csv_500_cities.head(3)

#need to convert the csv into a data frame for further manipulation
#data_500_cities = pd.DataFrame(csv_500_cities.to_records())
data_500_cities = pd.DataFrame(csv_500_cities)
data_500_cities

# doing more specific descriptive checks for all of the data - and the numeric data in particular
data_500_cities.info() #basic information about the dataset
data_500_cities.dtypes
data_500_cities.describe() #descriptive statistics for all numeric variables - including FIPS codes

#looking at various types of identifiers, to see what would be best to map
UniqueID = data_500_cities['UniqueID']
UniqueID

data_500_cities['CityFIPS_Int'] = data_500_cities['CityFIPS'].astype(int)
data_500_cities['CityFIPS_Int'] #creating CityFIPS variable for attachment

# data_500_cities['TractFIPS_Int'] = data_500_cities['TractFIPS'].astype(int) #had NaN observations, didn't want to work with that
# data_500_cities['TractFIPS_Int'] #creating TractFIPS variable for attachment

data_500_cities.head() #looking at final dataset after extra variables created for dataframe

#Shapefiles for mapping came from https://chronicdata.cdc.gov/browse?category=500+Cities&limitTo=blob
# As this is a very small-scale map over a large area, I'm NOT going to be using tract level - that's much better for a city-specific map.

fp = 'C:/Users/mmsch/Downloads/500Cities_City_11082016/CityBoundaries.shp' #filepath
map_df = gpd.read_file(fp) #read the filepath
map_df.head()

cities = map_df.plot() #not the most intuitive map, but it works. Let's see what locations are represented.

my_tab = pd.crosstab(index=map_df["ST"],  # Make a crosstab of all states represented here and name the count column
                              columns="count")
my_tab

# To check out when you have the time:
# 
# https://www.earthdatascience.org/courses/earth-analytics-python/spatial-data-vector-shapefiles/clip-vector-data-in-python-geopandas-shapely/
# 
# https://matthewrocklin.com/blog/work/2017/09/21/accelerating-geopandas-1

map_df['CityFIPS_Int'] = map_df['STPLFIPS'].astype(int) #creating an integer CityFIPS ID variable, since the geodataframe for this shapefile didn't import vartypes
map_df['CityFIPS_Int'] #creating CityFIPS variable for attachment

#joining the geodataframe with the mapped data, now that I've (bulkily) created a new integer variable

merged = map_df.merge(data_500_cities, on='CityFIPS_Int')
merged.head()

# and now, for the info behind the variables
merged.count() #number of non-missing observations
merged.describe()

# Now that I have my joined geodataframe, now I'm going to set up matplotlib to properly map the variables. 
# (This would have looked cooler/more useful if I clipped the shapefile down to individual observations...)

#mapping 2010 population (for now)
variable = merged['POP2010']
#vmin,vmax = 0, 8175133
#fig, ax = plt.subplots(1, figsize=(10, 6))
fig,ax = plt.subplots(1)

ax.axis('off')# remove the axis

# # add a title
ax.set_title('2010 Census Population for 500 Largest Cities', fontdict={'fontsize': '12', 'fontweight' : '1'})

# # create an annotation for the data source
ax.annotate('Source: 500 Cities Project',xy=(0.05, 0.02), horizontalalignment='left', verticalalignment='top', fontsize=8, color='#555555')

# create map
#merged.plot(column=variable, cmap='Blues', linewidth=0.8, ax=ax, edgecolor='0.8')
#merged.plot(column=variable, cmap='Blues', linewidth=0.8, ax=ax)
merged.plot(column=variable, cmap='Reds', linewidth=0.8)

## I can see the data mapped here (barely) -- BUT we need to clip the shapefile down to get something more meaningful.
    # This will happen with earthpy when I get the chance to do so.

