import time
import pandas as pd
from selenium import webdriver
import undetected_chromedriver as uc
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
import csv
from selenium.webdriver.common.action_chains import ActionChains
import smtplib
from email.message import EmailMessage
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.keys import Keys
chrome_options = Options()
chrome_options.add_argument("--user-data-dir=../Google Profile")
chrome_options.add_argument("--remote-debugging-port=9222")
browser = uc.Chrome()
# implicit wait for 5 seconds
browser.implicitly_wait(5)
browser.get('https://web.facebook.com')
# maximize with maximize_window()
browser.maximize_window()
group=input("Enter The Name Of Group:/n")
txt=input("Enter The Text Here:\n")
browser.get(group)
templist=[]
prourl=[]
SCROLL_PAUSE_TIME = 1
# Get scroll height
last_height = browser.execute_script("return document.body.scrollHeight")

while True:
    # Scroll down to bottom
    browser.execute_script("window.scrollTo(0, document.body.scrollHeight);")

    # Wait to load page
    time.sleep(SCROLL_PAUSE_TIME)

    # Calculate new scroll height and compare with last scroll height
    new_height = browser.execute_script("return document.body.scrollHeight")
    if new_height == last_height:
        break
    last_height = new_height
time.sleep(5)
purl=browser.find_elements(by=By.TAG_NAME,value='a')
ppurl1=""
usr="user"
cnt="contributions"
for url in purl:
    ppurl=url.get_attribute('href')
    try:
        lst=ppurl.split("/")
        if usr in lst and ppurl!=ppurl1:
            if cnt not in lst:
                prourl.append(ppurl)
    except:
        pass
    ppurl1=ppurl
for url in prourl:
    browser.get(url)
    time.sleep(5)
    chat=browser.find_element(By.XPATH, '*//span[text()="Message"]')
    chat.click()
    time.sleep(10)
    chat2=browser.find_element(by=By.XPATH,value="/html/body/div[1]/div/div[1]/div/div[7]/div/div[1]/div[1]/div/div/div/div/div/div[2]/div[2]/div/div/div[4]/div[2]/div/div/div[1]/p")
    time.sleep(5)
    chat2.send_keys(txt)
    chat2.send_keys(Keys.ENTER)
    time.sleep(5)
    chat2.send_keys(Keys.ESCAPE)
