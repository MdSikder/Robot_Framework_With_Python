import time

from selenium import webdriver
from selenium.webdriver.common.by import By

# driver = webdriver.Chrome()
# time.sleep(20)
# # driver.implicitly_wait(0.5)
# driver.maximize_window()
#
# driver.get("https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm")
# # to identify element
#
# s = driver.find_element(By.XPATH, "//input[@type='file']")
# # s = driver.find_element_by_xpath("//input[@type='file']")
# # file path specified with send_keys
# s.send_keys("C:\f1.png")


class Calculator2:
    def addition(self):
        driver = webdriver.Chrome()
        s = driver.find_element(By.XPATH, "//input[@type='file']")
        s.send_keys("C:\f1.png")
        return True


cel = Calculator2()
