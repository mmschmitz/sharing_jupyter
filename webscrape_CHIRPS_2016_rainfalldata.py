# Python 3 Webscraping Code to get Webscrape to get CHIRPS Data: Rainfall Estimates from Rain Gauge and Satellite Observations
# obtained from https://www.chc.ucsb.edu/data/chirps (and the Climate Hazards Center of UCSB)
# Written by Michelle Schmitz, 01/30/2020

# I was in need of daily rainfall data to use for some seasonality analyses, and found (after a lot of email discussions)
# that CHIRPS version 2.0 had been mapped to an HTML site.

# Many thanks to Pete Peterson of UCSB for letting me know about the HTML page for these files, as I'm apparently
# terrible at using FTP sites. And yes, this data is publically available!

import os
import requests
import urllib.request
import time
from bs4 import BeautifulSoup

os.chdir('[CHANGE WORKING DIRECTORY HERE') #working directory - redacted

#getting the URL for the website, to see what URls are coming out of the HTML link sent to me by Pete
url = 'https://data.chc.ucsb.edu/products/CHIRPS-2.0/africa_daily/tifs/p05/2016/'

response = requests.get(url)
response #valid website

soup = BeautifulSoup(response.text,"html.parser")
soup ## HTML code of the FTP-mapped-to-HTML site

soup.findAll('a')

#looking for the first link of interest
one_a_tag = soup.findAll('a')[5] #first link to download
link = one_a_tag['href']
link #testing the link to make sure we're capturing the correct one

#downloading single URL as a test
download_url = 'https://data.chc.ucsb.edu/products/CHIRPS-2.0/africa_daily/tifs/p05/2016/'+ link
urllib.request.urlretrieve(download_url,"./"+link)
time.sleep(1)

#create a loop to download all URLs
for i in range(5,len(soup.findAll('a'))+1):
    one_a_tag = soup.findAll('a')[i]
    link = one_a_tag['href']
    download_url = 'https://data.chc.ucsb.edu/products/CHIRPS-2.0/africa_daily/tifs/p05/2016/'+ link
    urllib.request.urlretrieve(download_url,"./"+link)
    time.sleep(1)
#should have put a condition to not try to download parent folders, but we'll see how the scrape goes.
