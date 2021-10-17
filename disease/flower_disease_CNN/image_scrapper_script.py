"""
Created on Sun Oct 01 17:32:08 2021

@author: AsankaBL
"""

# Download chrome web driver https://chromedriver.chromium.org/downloads
# Place it into the webdriver directory
# Then in terminal type image_scrapper_script.py

import os
import requests
import io
from PIL import Image
import patch

import time
import urllib.request

from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import NoSuchElementException       

class WebImageScrappingHelper():
    def __init__(self,webdriver_path,image_path, search_key="cat",number_of_images=1,headless=False,min_resolution=(0,0),max_resolution=(1920,1080)):
        image_path += "\\"+search_key
        if (type(number_of_images)!=int):
            return
        if not os.path.exists(image_path):
            os.makedirs(image_path)
        check if chromedriver is updated
        while(True):
            try:
                try going to www.google.com
                options = Options()
                if(headless):
                    options.add_argument('--headless')
                driver = webdriver.Chrome(webdriver_path, chrome_options=options)
                driver.set_window_size(1400,1050)
                driver.get("https://www.google.com")
                break
            except:
                patch chromedriver if not available or outdated
                try:
                    driver
                except NameError:
                    is_patched = patch.download_lastest_chromedriver()
                else:
                    is_patched = patch.download_lastest_chromedriver(driver.capabilities['version'])
                if (not is_patched): 
                    exit("Update to latest driver:https://chromedriver.chromium.org/downloads")
                    
        self.driver = driver
        self.min_resolution = min_resolution
        self.max_resolution = max_resolution
        self.webdriver_path = webdriver_path
        self.search_key = search_key
        self.number_of_images = number_of_images
        self.image_path = image_path
        self.headless=headless
        self.url = "https://www.google.com/search?q=%s&source=lnms&tbm=isch&sa=X&ved=2ahUKEwie44_AnqLpAhUhBWMBHUFGD90Q_AUoAXoECBUQAw&biw=1920&bih=947"%(search_key)
        
    def save_images(self,image_urls):
        for indx,image_url in enumerate(image_urls):
            try:
                search_string = ''.join(e for e in self.search_key if e.isalnum())
                image = requests.get(image_url,timeout=5)
                if image.status_code == 200:
                    with Image.open(io.BytesIO(image.content)) as image_from_web:
                        try:
                            filename = "%s%s.%s"%(search_string,str(indx),image_from_web.format.lower())
                            image_path = os.path.join(self.image_path, filename)
                            print("Saved path: %s"%(indx,image_path))
                            image_from_web.save(image_path)
                        except OSError:
                            rgb_im = image_from_web.convert('RGB')
                            rgb_im.save(image_path)
                        image_resolution = image_from_web.size
                        if image_resolution != None:
                            if image_resolution[0]<self.min_resolution[0] or image_resolution[1]<self.min_resolution[1] or image_resolution[0]>self.max_resolution[0] or image_resolution[1]>self.max_resolution[1]:
                                image_from_web.close()
                                os.remove(image_path)

                        image_from_web.close()
            except Exception as e:
                print("Exception: Failed to be downloaded",e)
                pass
        print("Successfully downloaded")
    
        
    def find_image_urls(self):
        image_urls=[]
        count = 0
        missed_count = 0
        self.driver.get(self.url)
        time.sleep(5)
        indx = 1
        while self.number_of_images >= count:
            try:
                find and click image
                imgurl = self.driver.find_element_by_xpath('//*[@id="islrg"]/div[1]/div[%s]/a[1]/div[1]/img'%(str(indx)))
                imgurl.click()
                missed_count = 0 
            except Exception:
                print("[Exception] Not clickable")
                missed_count = missed_count + 1
                if (missed_count > 10):
                    print("[Exception] No image")
                    break
                 
            try:
                select image from the popup
                time.sleep(1)
                class_names = ["n3VNCb"]
                images = [self.driver.find_elements_by_class_name(class_name) for class_name in class_names if len(self.driver.find_elements_by_class_name(class_name)) != 0 ][0]
                for image in images:
                    only download images that starts with http
                    if(image.get_attribute("src")[:4].lower() in ["http"]):
                        image_urls.append(image.get_attribute("src"))
                        count +=1
                        break
            except Exception:
                print("[Exception] link failed")   
                
            try:
                scroll page to load next image
                if(count%3==0):
                    self.driver.execute_script("window.scrollTo(0, "+str(indx*60)+");")
                element = self.driver.find_element_by_class_name("mye4qd")
                element.click()
                time.sleep(5)
            except Exception:  
                time.sleep(1)
            indx += 1

        
        self.driver.quit()
        return image_urls
    

if __name__ == "__main__":
    webdriver_path = os.path.normpath(r"C:\Users\BLiyanage\Downloads\notebooks\flower_disease_CNN\webdriver\chromedriver.exe")
    image_path = os.path.normpath(r"C:\Users\BLiyanage\Downloads\notebooks\flower_disease_CNN\dataset\unprocessed\scrapped_images")

    search_keys= ['sunflower', 'rose', 'rose powdery mildew', 'rose botrytis', 'sunflower root rot', 'sunflower wilt']

    min_resolution=(60, 60)
    max_resolution=(1500, 1500)
    number_of_images = 200
    headless = False

    for search_key in search_keys:
        image_scrapper = GoogleImageScraper(webdriver_path,image_path,search_key,number_of_images,headless,min_resolution,max_resolution)
        image_urls = image_scrapper.find_image_urls()
        image_scrapper.save_images(image_urls)
    
    del image_scrapper
