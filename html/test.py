import time

from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from webdriver_manager.chrome import ChromeDriverManager

from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from webdriver_manager.chrome import ChromeDriverManager

# Step 1: Go to the LinkedIn homepage
url = "https://www.linkedin.com/"

# Set up Chrome options
chrome_options = Options()
# chrome_options.add_argument("--headless")  # Run Chrome in headless mode, no GUI needed

# Set up the Chrome driver service
webdriver_service = Service(ChromeDriverManager().install())

# Create a new instance of the Chrome driver
driver = webdriver.Chrome(service=webdriver_service, options=chrome_options)

# Go to the LinkedIn homepage
driver.get(url)
time.sleep(1)
driver.refresh()
# driver.maximize_window()
time.sleep(2)

# Step 2: Input email and password, then click on login
email = 'usemany5@gmail.com'
password = 'wellalways'

# Find the email and password input fields and login button
email_input = driver.find_element(By.ID, "session_key")
password_input = driver.find_element(By.ID, "session_password")
login_button = driver.find_element(By.XPATH, "//button[@type='submit']")

# Input the email and password
email_input.send_keys(email)
password_input.send_keys(password)

# Click on the login button
login_button.click()
time.sleep(5)
driver.maximize_window()
time.sleep(2)

# Step 3: Wait for the login to complete
# Add a timeout of 10 seconds and wait until the profile picture element is visible, indicating successful login
# wait = WebDriverWait(driver, 10)
# profile_picture = wait.until(
#     EC.visibility_of_element_located((By.XPATH, "//div[@class='profile-rail-card__actor-meta']//img")))

# Proceed with further actions after successful login
# ...


# Perform the login steps here using the appropriate HTML elements and input values

# Step 2: Scrape the first post and save as an HTML file
# Find the HTML element for the first post
first_post = driver.find_element(By.XPATH, "//div[@class='feed-shared-update-v2__description-wrapper']")

# Save the HTML content of the first post to a file
with open("first_post.html", "w", encoding="utf-8") as file:
    file.write(first_post.get_attribute("innerHTML"))

# Quit the browser
driver.quit()
