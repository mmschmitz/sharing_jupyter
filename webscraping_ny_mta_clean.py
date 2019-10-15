# Intention is to download data from http://web.mta.info/developers/turnstile.html,
# using web scraping with the libraries requests, time, and bs4 (using Beautiful Soup).

import os #import information about operating system

#libraries necessary for import
import requests
import urllib.request
import time
from bs4 import BeautifulSoup

#set the working directory
os.chdir("C:/Users/mmsch/OneDrive/Desktop/download_mta")

#get all HTML code for the website, then parse it out and find all links (i.e., 'a')
url = 'http://web.mta.info/developers/turnstile.html'
response = requests.get(url)
response

soup = BeautifulSoup(response.text,"html.parser")
soup

soup.findAll('a')

one_a_tag = soup.findAll('a')[36] #first link to download
link = one_a_tag['href']
link #testing the link to make sure we're capturing the correct one

#downloading single URL as a test
download_url = 'http://web.mta.info/developers/'+ link
urllib.request.urlretrieve(download_url,'./'+link[link.find('/turnstile_')+1:]) 
time.sleep(1)

#creating a loop to download all URLs
for i in range(36,len(soup.findAll('a'))+1): #'a' tags are specifically for links
    one_a_tag = soup.findAll('a')[i]
    link = one_a_tag['href']
    download_url = 'http://web.mta.info/developers/'+ link
    urllib.request.urlretrieve(download_url,'./'+link[link.find('/turnstile_')+1:]) 
    time.sleep(1)
