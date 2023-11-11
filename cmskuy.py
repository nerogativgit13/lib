#!/usr/bin/env
import sys , requests , re
from multiprocessing.dummy import Pool
from colorama import Fore								
from colorama import Style								
from pprint import pprint								
from colorama import init										
init(autoreset=True)

fr  =   Fore.CYAN																					
fg  =   Fore.GREEN	

print """  
  ____ __  __ ____   ____    _    _   _ ____  _  ___   ___   __
 / ___|  \/  / ___| / ___|  / \  | \ | / ___|| |/ / | | \ \ / /
| |   | |\/| \___ \| |     / _ \ |  \| \___ \| ' /| | | |\ V /
| |___| |  | |___) | |___ / ___ \| |\  |___) | . \| |_| | | |
 \____|_|  |_|____/ \____/_/   \_\_| \_|____/|_|\_ \___/  |_| 13 
================================================================
Thanks To : - Loser Black Diamond | Cirebon Xploit
            - Cirebon Blackhat    | Saitama Crew Xploit
"""

try:
    target = [i.strip() for i in open(sys.argv[1], mode='r').readlines()]
except IndexError:
	path =  str(sys.argv[0]).split('\\')
	exit('\n Tulis Tools ['+path[len(path)-1] + '] list.txt')
	

def URL(url):
	if url[-1] == "/":
		pattern = re.compile('(.*)/')
		site = re.findall(pattern,url)
		url = site[0]
	if url[:7] != "http://" and url[:8] != "https://":
		url = "http://" + url
	return url	
	
	
def filter(site):
	pet = re.compile('<meta name="generator" content="(.*)" />')
	try:
		site = URL(site)
		src = requests.get(site,timeout=15).content
		if re.findall(pet,src):
			generator = re.findall(pet,src)[0]
			if 'WordPress' in generator :
				print ' TERDETEKSI | '+site +' --> {}[WordPress]'.format(fg)
				with open('wordpress.txt', mode='a') as d:
					d.write(site+'/\n')
			elif 'Joomla' in generator :
				print ' TERDETEKSI | '+site +' --> {}[Joomla]'.format(fg)
				with open('joomla.txt', mode='a') as d:
					d.write(site+'/\n')
			elif 'Drupal' in generator :
				print ' TERDETEKSI | '+site +' --> {}[Drupal]'.format(fg)
				with open('drupal.txt', mode='a') as d:
					d.write(site+'/\n')
			elif 'PrestaShop' in generator :
				print ' TERDETEKSI | '+site +' --> {}[PrestaShop]'.format(fg)
				with open('prestashop.txt', mode='a') as d:
					d.write(site+'/\n')
			else :
				if 'wp-content/themes' in src :
					print ' TERDETEKSI | '+site +' --> {}[WordPress]'.format(fg)
					with open('wordpress.txt', mode='a') as d:
						d.write(site+'/\n')
				elif 'catalog/view/theme'	in src :
					print ' TERDETEKSI | '+site +' --> {}[OpenCart]'.format(fg)
					with open('opencart.txt', mode='a') as d:
						d.write(site+'/\n')
				elif 'sites/all/themes' in src :
					print ' TERDETEKSI | '+site +' --> {}[Drupal]'.format(fg)
					with open('drupal.txt', mode='a') as d:
						d.write(site+'/\n')
				elif '<script type="text/javascript" src="/media/system/js/mootools.js"></script>' in src or '/media/system/js/' in src or 'com_content' in src :
					print ' TERDETEKSI | '+site +' --> {}[Joomla]'.format(fg)
					with open('joomla.txt', mode='a') as d:
						d.write(site+'/\n')
				elif 'js/jquery/plugins/' in src :
					print ' TERDETEKSI | '+site +' --> {}[PrestaShop]'.format(fg)
					with open('prestashop.txt', mode='a') as d:
						d.write(site+'/\n')
				else :
					print ' TERDETEKSI | '+site +' --> {}[Other]'.format(fr)
					with open('other.txt', mode='a') as d:
						d.write(site+'/\n')
		else :
			if 'wp-content/themes' in src :
				print ' TERDETEKSI | '+site +' --> {}[WordPress]'.format(fg)
				with open('wordpress.txt', mode='a') as d:
					d.write(site+'/\n')
			elif 'catalog/view/theme'	in src :
				print ' TERDETEKSI | '+site +' --> {}[OpenCart]'.format(fg)
				with open('opencart.txt', mode='a') as d:
					d.write(site+'/\n')
			elif 'sites/all/themes' in src :
				print ' TERDETEKSI | '+site +' --> {}[Drupal]'.format(fg)
				with open('drupal.txt', mode='a') as d:
					d.write(site+'/\n')
			elif '<script type="text/javascript" src="/media/system/js/mootools.js"></script>' in src or '/media/system/js/' in src or 'com_content' in src :
				print ' TERDETEKSI | '+site +' --> {}[Joomla]'.format(fg)
				with open('joomla.txt', mode='a') as d:
					d.write(site+'/\n')
			elif 'js/jquery/plugins/' in src :
				print ' TERDETEKSI | '+site +' --> {}[PrestaShop]'.format(fg)
				with open('prestashop.txt', mode='a') as d:
					d.write(site+'/\n')
			elif 'osCommerce' in src :
				print ' TERDETEKSI | '+site +' --> {}[osCommerce]'.format(fg)
				with open('osCommerce.txt', mode='a') as d:
					d.write(site+'/\n')
			elif 'index.php?osCsid=' in src :
				print ' TERDETEKSI | '+site +' --> {}[osCommerce]'.format(fg)
				with open('osCommerce.txt', mode='a') as d:
					d.write(site+'/\n')
			elif 'index.php/cPath' in src :
				print ' TERDETEKSI | '+site +' --> {}[osCommerce]'.format(fg)
				with open('osCommerce.txt', mode='a') as d:
					d.write(site+'/\n')					
			else :
				print ' TERDETEKSI | '+site +' --> {}[Other]'.format(fr)
				with open('other.txt', mode='a') as d:
					d.write(site+'/\n')			
	except :
		print ' Gagall | '+site +' --> {}[Time Out]'.format(fr)
		
mp = Pool(150)
mp.map(filter, target)
mp.close()
mp.join()		
