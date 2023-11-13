#!/usr/bin/python

ver = "v1"
import requests as req
req.urllib3.disable_warnings()
from colorama import Fore,Style
from bs4 import BeautifulSoup as bs

red    = Fore.RED
yellow = Fore.YELLOW
blue   = Fore.BLUE
white  = Fore.WHITE
bold   = Style.BRIGHT
green  = Fore.GREEN
dim    = Style.DIM
purple = Fore.MAGENTA
cyan   = Fore.CYAN
reset  = Style.RESET_ALL+white
mdate  = {}
mpreff = "m"

"""
		DON'T INSULT MY CODE
		I'M JUST NEWBIE CODER
		:)
"""

def main():
	try:
		print(f"=======================================\n[×] Graber Site By date Update\n=======================================\n[×] Github : github.com/nerogativgit13\n[×] Youtube: Ganest Seven\n=======================================")
		Cubdo().liat()
		for i in range(1,19):
			x = f"    {reset}{i}. {cyan}{mdate[str(i)]}"
			globals()[mpreff + str(i)] = x
			
		print(f"\n{m1}{m11}\n{m2}{m12}\n{m3}{m13}\n{m4}{m14}\n{m5}{m15}\n{m6}{m16}\n{m7}{m17}\n{m8}{m18}\n\n=======================================\n{reset}Tulis Dan Buat Tanggall Bulan Dan tahun \nSecara manual format {cyan}tahun-bulan-hari {reset}\ncontoh {cyan}2025-05-25{reset}\n=======================================")
		menu = input(f"[•] Tulis Pilihan Disini : {cyan}")
		if menu:
			outs = input(f"{reset}[•] Nama File list domain : {cyan}")
			try: tanggal = mdate[menu]
			except KeyError: tanggal = menu
			print(f"{reset}=======================================\nTunggu Sampai Proses Grabing Domain Selesai\n=======================================\n")
			Cubdo(tanggal,outs).gasken()
		else:
			print(f"{reset} dumb!\n")
			
	except KeyboardInterrupt:
		print(f"{reset} kelluar !!")
		exit()
		
class Cubdo:
	def __init__(self,tgl=None,out=None):
		self.path = f"domains-registered-by-date/{tgl}/"
		self.outs = open(out,"a") if out else None
		self.tots = 0
	
	def gas(self,path=""):
		respon = req.get(f"https://66.45.226.242/{path}",headers={'Host':'www.cubdomain.com'},verify=False,timeout=30).text
		return respon
	
	def gasken(self):
		try:
			raw = self.gas(self.path+"1")
			self.ambil(raw,"1")
			pages = bs(raw,"html.parser").find("ul",{"class":"pagination-sm pagination mb-0 mt-2"}).findAll("a")[-2].text.strip()
			for i in range(2,int(pages)+1):
				self.ambil(self.gas(self.path+str(i)),i)
			print(f"{reset}\n=======================================\n[•] Selesai, total {cyan}{self.tots}{white} domains, disimpan ke {cyan}{self.outs.name}")
			print(f"{reset}[•] thanks for using this fvcking tools\n=======================================")
		except KeyboardInterrupt:
			print(f"{reset} Kelluar !")
			exit()
	
	def ambil(self,raw,hal):
		items = bs(raw,"html.parser").findAll("div",{"class":"col-md-4"})
		print(f"==> Grabbing Halaman {purple}{hal}{reset} Berhasil Dapat {green}{len(items)}{reset} domains")
		self.tots += len(items)
		for item in items:
			domain = item.a.text.strip()
			self.outs.write(f"{domain}\n")
		
	def liat(self):
		sup = bs(self.gas(),"html.parser").find("ul",{"class":"list-unstyled mb-0 text-center"}).findAll("a")
		for i in range(18):
			tgl = sup[i]["title"].strip()
			mdate.update({str(i+1):tgl})

main()