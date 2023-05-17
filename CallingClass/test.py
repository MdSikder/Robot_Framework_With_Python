# class Calculator:
#     def addition(self, num1, num2):
#         return float(num1) + float(num2)
#
#     def kwargs_demo(self, Kwargs):
#         for args in Kwargs:
#             if args == 'Apple':
#                 return True
#         return False
#
#
# cal = Calculator()

import time
import os
from telnetlib import EC

from selenium import webdriver
from selenium.common import NoSuchElementException, TimeoutException, InvalidSessionIdException
from selenium.webdriver.common.by import By
import pyautogui

# Locators
from selenium.webdriver.support.wait import WebDriverWait

username = "//input[@name='username']"
password = "//input[@name='password']"
submit = "//button[@type='submit']"
Create_button = "//html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[7]/div[1]/div[1]/a[1]/div[1]/div[2]/div[1]/div[1]"
upload_button = "//button[contains(text(),'Select from computer')]"
next_button = "//div[contains(text(),'Next')]"
share_button = "//div[contains(text(),'Share')]"
notification = "//button[contains(text(),'Not Now')]"

fil = "//button[text()='Select from computer']"

write = "//div[@aria-label='Write a caption...']"


class Instrabot:
    def bot(self):
        driver = webdriver.Chrome()

        # driver.implicitly_wait(0.5)
        driver.maximize_window()

        driver.get("https://www.instagram.com/")
        time.sleep(5)

        driver.find_element(By.XPATH, "//input[@name='username']").send_keys("usemany5@gmail.com")
        time.sleep(2)

        driver.find_element(By.XPATH, "//input[@name='password']").send_keys("Qwer1234!!@@")
        time.sleep(2)

        driver.find_element(By.XPATH, submit).click()
        time.sleep(20)
        driver.close()

        return True


cal = Instrabot()
