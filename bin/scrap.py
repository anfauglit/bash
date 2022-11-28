#!/usr/bin/python3

import requests
import sys
from bs4 import BeautifulSoup

url = sys.argv[1] 
headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
(KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36'}
page = requests.get(url, headers=headers)

soup = BeautifulSoup(page.content, 'html.parser')

text = soup.select("p, h1, h2, h3, h4 code")

for p in list(text):
	print(p.get_text())
	print("\n")
