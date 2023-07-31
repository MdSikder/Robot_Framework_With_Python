import requests
from bs4 import BeautifulSoup

url = "https://www.ovhcloud.com/asia/vps/vps-usa/"

# Send a GET request to the URL
response = requests.get(url)

# Check if the request was successful
if response.status_code == 200:
    # Parse the HTML content using BeautifulSoup
    soup = BeautifulSoup(response.content, 'html.parser')

    # Find all anchor tags (links) in the page
    links = soup.find_all('a')

    # Print all the links to the console
    for link in links:
        print(link.get('href'))
else:
    print(f"Failed to fetch the page. Status code: {response.status_code}")
